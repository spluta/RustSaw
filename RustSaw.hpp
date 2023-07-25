// PluginRustSaw.hpp
// Rust Saw (spluta@gmail.com)

#pragma once

#include "SC_PlugIn.hpp"
#include "rust_saw/rust_saw.h"

namespace RustSaw {


class RustSaw : public SCUnit {
public:
    RustSaw();

    // Destructor
    ~RustSaw();

private:
    // Calc function
    void next(int nSamples);
    float m_freqMul{2.0f/(float)sampleRate()};
    RustSawR *rusty = rust_saw_new();
};

} // namespace RustSaw
