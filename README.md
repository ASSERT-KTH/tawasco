[![Build wasm-mutate runtime only](https://github.com/Jacarte/tawasco/actions/workflows/ci.yml/badge.svg)](https://github.com/Jacarte/tawasco/actions/workflows/ci.yml) [![Build host_single for tracing](https://github.com/Jacarte/tawasco/actions/workflows/ci_host_based.yml/badge.svg)](https://github.com/Jacarte/tawasco/actions/workflows/ci_host_based.yml) 
[![Build docker for experimenting](https://github.com/Jacarte/tawasco/actions/workflows/build_docker_images.yml/badge.svg)](https://github.com/Jacarte/tawasco/actions/workflows/build_docker_images.yml) [![Build stacking tool to stack wasm-mutate mutations](https://github.com/Jacarte/tawasco/actions/workflows/ci_stacking.yml/badge.svg)](https://github.com/Jacarte/tawasco/actions/workflows/ci_stacking.yml) [![Build wasmtime](https://github.com/Jacarte/tawasco/actions/workflows/ci_wasmtime.yml/badge.svg)](https://github.com/Jacarte/tawasco/actions/workflows/ci_wasmtime.yml)

# This repo contains the tooling to evaluate wasm-mutate as a software diversification tool for WebAssembly.

## Requirements
- Rust nightly. Install it with `rustup install nightly`. We need nightly beacuase we use some `asm!` experimental features to directly write Wasm code from Rust (see [How to deploy hand made Wasm code in Fastly Compute@Edge.](https://www.jacarte.me/blog/2021/HandMadeWasmDeploInFastly/))

## Repository structure (the most important things to look at)

- `host_based`: Here we add our tooling
  - `tracer`: A wasmtime based host, with fixed memory allocation and trace filtering for IntelPIN. Here we implement a shared mem communication with IntelPIN to filter out those events that are not coming from Wasm compiled code.
    - `pintool`: our pintool implementation, it works only for linux
  - `stacking`: This is just a wrapper to create a population. Run `./stacking --help` to see the options.
  - `fuzz`: Some fuzzing infrastructure to test the `stacking` tool. We plan to extend this to research on differential testing. For exmple, testing what happens with parsing a `wat` file with two different engines.
  - `host`: An attempt to create the timer directly in the wasmtime based host instead of adding it to the WASI-libc like Swivel does.
- `experiments`: This folder contains our experiments, we use a K8s cluster to parallelize our experiments.

# POCs

The idea is to have POC for attacks on Wasm execution scenarios. We add a diversification evaluation with wasm-mutate in the safeside as well.

## Roadmap for Swivel ones

We fork the original [repo](https://github.com/Jacarte/swivel). The patch to test diversfication can be found there.

## Roadmap for whitebox crypto challenges

Questions:
- Does it make sense as a use case to whitebox a Wasm ? Yes, distributing a signed .wasm

To reproduce this attacks and defenses. We propose to use a separated machine. For security and better measurements collection.

- [x] White box cryptography [challenges](https://github.com/SideChannelMarvels/Deadpool)
  - [x] Compile C to Wasm
    - [x] CHES2016
  - [x] Perform attack
    - [x] Host based with wasmtime
      - [x] CHES2016
        - [x] DCA. Running wasmtime precompiled wasm `host_single/release/host_single wb_challenge.wasm`
        - Daredevil is able to exfiltrate the full key in around 5000 traces.
        - Note: disable ASLR for better performance.
        - The attack works only with PIN. It was easier for plotting and filtrating non-Wasm traces.
    - [x] Host based with wasmtime
- [x] Create automatic benchmark for measuring exfiltration accuracy
- [x] ~Apply wasm-mutate to victim. Measure the impact on the accuracy of the attack. Sadly :( wasm-mutate does not help in this case.~
- [x] While we harden the attack, it is still possible :(  

## Roadmap browser

- [ ] Port contention side channel
  - [ ] Implement instruction port contention predictor.
    - [ ] Support high accurate timer (probably using Firefox version 90 for the POC).
    - [ ] Crate Wasm binary to execute in the browser.
    - [ ] Create native binary that makes port contention.
    - [ ] Measures port contention in the browser.
  - [ ] Create automatic benchmark for measuring predictor accuracy.
  - [ ] Apply wasm-mutate to the port predictor and the listener. Measure the impact on the accuracy of the predictor.
