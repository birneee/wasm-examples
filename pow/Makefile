pow.wasm: pow.wat
	wat2wasm pow.wat

.PHONY: run
run:
	wasmtime pow.wasm --invoke pow 2 10