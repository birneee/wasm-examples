fib.wasm: fib.wat
	wat2wasm fib.wat

.PHONY: run
run:
	deno run --allow-read=fib.wasm fib.js