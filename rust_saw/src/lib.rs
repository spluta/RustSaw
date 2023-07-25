pub struct RustSawR {
    m_phase: f32,
    m_last_phase: f32,
}


impl RustSawR {
    fn new() -> RustSawR {
        RustSawR {m_phase: 0.0, m_last_phase:0.0}
    }

    fn next(&mut self, freq: f32, phase_in: f32, freq_mult: f32) -> f32 {
        let phase_diff = phase_in - self.m_last_phase;
        self.m_last_phase = phase_in;


        self.m_phase += phase_diff;
        self.m_phase += freq * freq_mult;
        if self.m_phase > 1.0 {
            self.m_phase -= 2.0
        }
        else if self.m_phase < -1.0 {self.m_phase += 2.0};

        return self.m_phase;
     }
    }

//new creates an object then passes a pointer to it over to the C++ client for safe keeping
#[no_mangle]
pub extern "C" fn rust_saw_new() -> *mut RustSawR {
    Box::into_raw(Box::new(RustSawR::new()))
}

//I'm not sure if the object is being freed correctly
//clearly the compiler is unhappy, so that probably means I am doing it wrong
#[no_mangle]
pub extern "C" fn rust_saw_free(ptr: *mut RustSawR) {
    if ptr.is_null() {
        return;
    }
    unsafe {
        Box::from_raw(ptr);
    }
}

//in order to get a value from the object we get the object pointer back from C++, dereference the raw pointer, 
// then run the next function of the object
#[no_mangle]
pub extern "C" fn rust_saw_next(ptr: *mut RustSawR, freq: f32, phase_in: f32, freq_mult: f32) -> f32 {
    let rust_saw = unsafe {
        assert!(!ptr.is_null());
        &mut *ptr
    };
    return rust_saw.next(freq, phase_in, freq_mult);
}

