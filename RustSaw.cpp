// PluginRustSaw.cpp
// Rust Saw (spluta@gmail.com)

#include "SC_PlugIn.hpp"
#include "RustSaw.hpp"
#include "rust_saw/rust_saw.h"

static InterfaceTable* ft;

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

    // simple gain function
    for (int i = 0; i < nSamples; ++i) {
        outbuf[i] = rust_saw_next(rusty, freq[i], phase[i], m_freqMul);
        //Print("%f \n", outbuf[i]);
    }
}

} // namespace RustSaw

PluginLoad(RustSawUGens) {
    // Plugin magic
    ft = inTable;
    registerUnit<RustSaw::RustSaw>(ft, "RustSaw", false);
}
