const fs = require('fs');
const buf = fs.readFileSync('./build/min.wasm');

console.log(buf);

WebAssembly.instantiate(new Uint8Array(buf)).then(console.log);
