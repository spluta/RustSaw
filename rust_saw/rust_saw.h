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

} // extern "C"
