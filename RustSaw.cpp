// PluginRustSaw.cpp
// Rust Saw (spluta@gmail.com)

#include "SC_PlugIn.hpp"
#include "RustSaw.hpp"
#include "rust_saw/rust_saw.h"

static InterfaceTable* ft;

extern "C" void show_vector(float const *data, std::size_t size);

namespace RustSaw {

RustSaw::RustSaw() {
    mCalcFunc = make_calc_function<RustSaw, &RustSaw::next>();
    next(1);
}

RustSaw::~RustSaw() {
    rust_saw_free(rusty);
}

void RustSaw::next(int nSamples) {
    const float* freq = in(0);
    const float* phase = in(1);
    float* outbuf = out(0);

    //this approach calls the next function in Rust from C++
    for (int i = 0; i < nSamples; ++i) {
        outbuf[i] = rust_saw_next(rusty, freq[i], phase[i], m_freqMul);
        
    }
}

} // namespace RustSaw

namespace RustSawN {

    RustSawN::RustSawN() {
    mCalcFunc = make_calc_function<RustSawN, &RustSawN::next>();
    next(1);
}

RustSawN::~RustSawN() {
    rust_saw_free(rusty);
}

void RustSawN::next(int nSamples) {
    const float* freq = in(0);
    const float* phase = in(1);
    float* outbuf = out(0);

    //this approach passes all of the float* pointers to Rust and Rust runs the for loop internally
    rust_saw_next_n(rusty, nSamples, freq, phase, outbuf, m_freqMul);
}
}

PluginLoad(RustSawUGens) {
    // Plugin magic
    ft = inTable;
    registerUnit<RustSaw::RustSaw>(ft, "RustSaw", false);
    registerUnit<RustSawN::RustSawN>(ft, "RustSawN", false);
}
