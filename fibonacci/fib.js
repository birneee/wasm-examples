const importObj = {};
const wasmCode = await Deno.readFile("fib.wasm");
const wasmModule = new WebAssembly.Module(wasmCode);
const wasmInstance = new WebAssembly.Instance(wasmModule);

console.log(wasmInstance.exports)

const wasmFib = wasmInstance.exports.fib
for (let i = 0; i < 10; i++) {
    console.log(wasmFib(i))
}
