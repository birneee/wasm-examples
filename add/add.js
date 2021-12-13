const importObj = {};
const wasmCode = await Deno.readFile("add.wasm");
const wasmModule = new WebAssembly.Module(wasmCode);
const wasmInstance = new WebAssembly.Instance(wasmModule);

console.log(wasmInstance.exports)

const wasmAdd = wasmInstance.exports.add
console.log(wasmAdd(40+2))
