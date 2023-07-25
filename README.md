### A very rudimentary example of a SuperCollider plugin which uses Rust code for the DSP

In order to build this project, you will need CMake, Cargo, and cbindgen installed.

cbindgen installation instructions are here:
https://github.com/mozilla/cbindgen


In the terminal, go into the RustSaw/rust_saw directory and build the rust source with cargo:

cargo build --release

It will complain about the unused destructor.

then in the root directory, run:

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DSC_PATH="/Users/spluta1/Documents/SC/SuperColliderBuild/SuperCollider"
cmake --build . --config Release

"RustSaw.scx" should be created in the build directory. Move this file and "RustSaw.sc" into the SC Extensions path.


Instructions on setting up Rust code to be called from C or C++ can be found here:
https://doc.rust-lang.org/book/ch19-01-unsafe-rust.html#using-extern-functions-to-call-external-code

The particular difficulty of using Rust objects in C++ is addressed here:
http://jakegoulding.com/rust-ffi-omnibus/objects/

