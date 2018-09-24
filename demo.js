const fs = require('fs');

const buf = fs.readFileSync('./build/min.wasm'); // <Buffer 00 61 73 6d 01 00 00 00>
const typedBuffer = new Uint8Array(buf); // Uint8Array [ 0, 97, 115, 109, 1, 0, 0, 0 ]
WebAssembly.validate(typedBuffer); // true
WebAssembly.instantiate(typedBuffer); // Promise({ instance: Instance {}, module: Module {} })


