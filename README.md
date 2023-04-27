# This repo contains cache-timing and side-channel based attacks for WebAssembly

The idea is to have POC for attacks on the two Wasm execution scenarios: in the browser and backend based. We code the attacks in Rust and we compile them to Wasm.

In the following gif we show how the Spectre POC (in the same binary) works on exfiltrating data. This same mechanism can be use to violates the CFI, as shown un [Swivel](https://arxiv.org/abs/2102.12730).

![gif](/docs/video.gif)


## Requirements
- Rust nightly. Install it with `rustup install nightly`. We need nightly beacuase we use some `asm!` experimental features to directly write Wasm code from Rust (see [How to deploy hand made Wasm code in Fastly Compute@Edge.](https://www.jacarte.me/blog/2021/HandMadeWasmDeploInFastly/))


## Backend based architecture

The backend based architecture is based on the wasmtime engine. The [`host`](/host_based/host) tool works as a cli. When it executes , it waits for the user to specify the Wasm to execute. Once receives it, the Wasm binary is compiled and executed in a separated thread. Thus, multiple Wasm binaries can be executed in parallel in somesort of CDN platform simulation.




## Repo structure

- [`host_based`](/host_based): Contains the backend based architecture and the POCs for the attacks.
  - [`host`](/host_based/host): The host tool with wasmtime as the engine.
  - [`rustctre`](/host_based/rustctre): The POCs for the attacks. We implement the POCs in Rust and we compile them to Wasm binaries.
    - [`cache_time_predictor.rs`](/host_based/rustctre/src/cache_time_predictor.rs): The cache miss/hit time predictor.
    - [`eviction.rs`](/host_based/rustctre/src/eviction.rs): The cache timing attack. This simple POC just explicitly evicts the cache and measures the time to access the memory.
    - [`spectre_wasm.rs`](/host_based/rustctre/src/spectre_wasm.rs): The Spectre V1 attack in the same Wasm binary.
    - [`spectre_wasm_sync_simulated.rs`](/host_based/rustctre/src/spectre_wasm_sync_simulated.rs): The Spectre V1 attack exfiltrating from the host. This assumes that the host contains secret values (TODO double check the assumptions of Swivel).
  - [`Makefile`](/host_based/Makefile): The Makefile to compile the Wasm POCs. The binaries can be compiled directly with `Cargo build --target=wasm32-wasi`, yet we do some processing for the binaries to collect some data.


## Roadmap host based:

- [ ] Speculative/Cache time side-channel in Wasm
 - [x] Cache timing threshold prediction. See `host_based/rustctre/cache_time_predictor.rs`
 - [x] Using wasmtime embedded into as the host engine. See `host_based/host/src/main.rs`
 - [ ] Attack cases:
   - [x] **C0.5**: Simple Spectre V1 in the same Wasm binary. See `host_based/rustctre/spectre_wasm.rs`
   - [x] **C1**: Simple cache timing example. See `host_based/rustctre/eviction.rs`
   - [ ] **C2**  : Exfitlrate from host engine. See `spectre_wasm_sync_simulated.rs`
   - [ ] **C3**  : Attacker and victim in different Wasm binaries.
- [ ] Create automatic benchmark for measuring exfiltration accuracy
- [ ] Apply wasm-mutate to both, attacker or victim. Measure the impact on the accuracy of the attack.

## Roadmap browser

- [ ] Port contention side channel
  - [ ] Implement instruction port contention predictor.
    - [ ] Support high accurate timer (probably using Firefox version 90 for the POC).
    - [ ] Crate Wasm binary to execute in the browser.
    - [ ] Create native binary that makes port contention.
    - [ ] Measures port contention in the browser.
  - [ ] Create automatic benchmark for measuring predictor accuracy.
  - [ ] Apply wasm-mutate. Measure the impact on the accuracy of the predictor.
