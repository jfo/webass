// fetch('test.wasm')
//   .then(res => res.arrayBuffer())
//   .then(WebAssembly.instantiate)
//   .then(w => {
//     console.log(w.instance.exports.fac(10));
//   })

fetch('build/min.wasm')
  .then(res => res.arrayBuffer())
  .then(
    // console.log
    WebAssembly.instantiate
  )
  .then(w => {
    console.log(w);
  })
