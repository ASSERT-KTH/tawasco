RUST_LOG=wasm_mutate=debug TRIES=1 TRIES_INFER=1 ./stacking eviction.wasm eviction.stacking --seed 100 -c 20000 -v 1000 --cache-folder ./eviction_cache --fuel 100000000   2> logs.eviction.txt
RUST_LOG=wasm_mutate=debug TRIES=1 TRIES_INFER=1 ./stacking sp.wasm sp.stacking --seed 100 -c 20000 -v 1000 --cache-folder ./sp_cache  --fuel 100000000  2> logs.sp.txt
