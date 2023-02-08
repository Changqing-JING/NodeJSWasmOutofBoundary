const fs = require('fs');



async function run(){
    const buf = fs.readFileSync('main.wasm');
const lib = await WebAssembly.instantiate(new Uint8Array(buf)).
  then(res => res.instance.exports);

  lib._start();
  console.log("_start success");
}

run();