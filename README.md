### A very rudimentary example of a SuperCollider plugin which uses Rust code for the DSP inside of a standard SC C++ UGen

In order to build this project, you will need CMake and Cargo installed. You will also need the SuperCollider source code downloaded.

In the terminal, go into the "RustSaw/rust_saw" directory and build the rust code for this project with cargo:

cargo build --release

It will complain about the unused destructor.

then in the root directory, run:

```
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DSC_PATH="<Path to SC Source>"
cmake --build . --config Release
```

as you normally would when building SC plugins.

"RustSaw.scx" should be created in the build directory. Move this file, "RustSaw.sc", and RustSaw.schelp into the SC Extensions path and recompile the class library. The code in the help file should run.


Instructions on setting up Rust code to be called from C or C++ can be found here:
https://doc.rust-lang.org/book/ch19-01-unsafe-rust.html#using-extern-functions-to-call-external-code

The particular difficulty of using Rust objects in C++ is addressed here:
http://jakegoulding.com/rust-ffi-omnibus/objects/

I am not convinced this is the only or best way to do this, but it does work.