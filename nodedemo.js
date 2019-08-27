const fs = require('fs');
const util = require('util');
const buf = fs.readFileSync('./build/out.wasm');

console.log(WebAssembly.validate(buf));

WebAssembly.instantiate(buf).then(e => {
  console.log(
    e.instance.exports
  );
});
