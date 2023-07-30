#include <cstdarg>
#include <cstdint>
#include <cstdlib>
#include <ostream>
#include <new>

struct RustSawR;

extern "C" {

RustSawR *rust_saw_new();

void rust_saw_free(RustSawR *ptr);

float rust_saw_next(RustSawR *ptr, float freq, float phase_in, float freq_mult);

void rust_saw_next_n(RustSawR *ptr,
                     int16_t num_samples,
                     const float *freq,
                     const float *phase_in,
                     float *out_buf,
                     float freq_mult);

} // extern "C"
