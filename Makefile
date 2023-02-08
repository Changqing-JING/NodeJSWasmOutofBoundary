main.wasm: main.c
	clang --target=wasm32 -nostdlib -Wl,--allow-undefined,--export-table,--export-all -o $@ $<

main.wat: main.wasm
	wasm2wat -o $@ $<

run: main.wasm
	node --experimental-wasi-unstable-preview1  ./WasmLauncher.js