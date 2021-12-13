hello.wasm: hello.wat
	wat2wasm hello.wat -o hello.wasm

.PHONY: run
run:
	wasmtime hello.wasm