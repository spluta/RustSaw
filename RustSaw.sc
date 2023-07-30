RustSaw : UGen {
	*ar { |freq, phase, mul=1, add=0|
		if(freq.rate!='audio'){freq = K2A.ar(freq)};
		if(phase.rate!='audio'){phase = K2A.ar(phase)};
		^this.multiNew('audio', freq, phase).madd(mul,add);
	}
	checkInputs {
		/* TODO */
		^this.checkValidInputs;
	}
}

RustSawN : UGen {
	*ar { |freq, phase, mul=1, add=0|
		if(freq.rate!='audio'){freq = K2A.ar(freq)};
		if(phase.rate!='audio'){phase = K2A.ar(phase)};
		^this.multiNew('audio', freq, phase).madd(mul,add);
	}
	checkInputs {
		/* TODO */
		^this.checkValidInputs;
	}
}