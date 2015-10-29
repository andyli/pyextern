/* This file is generated, do not edit! */
package scipy.signal;
@:pythonImport("scipy.signal._max_len_seq") extern class _Max_len_seq {
	static public var __all__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _mls_taps : Dynamic;
	/**
		max_len_seq(nbits, state=None, length=None, taps=None)
		
		Maximum Length Sequence (MLS) generator
		
		Parameters
		----------
		nbits : int
		    Number of bits to use. Length of the resulting sequence will
		    be ``(2**nbits) - 1``. Note that generating long sequences
		    (e.g., greater than ``nbits == 16``) can take a long time.
		state : array_like, optional
		    If array, must be of length ``nbits``, and will be cast to binary
		    (bool) representation. If None, a seed of ones will be used,
		    producing a repeatable representation. If ``state`` is all
		    zeros, an error is raised as this is invalid. Default: None.
		length : int | None, optional
		    Number of samples to compute. If None, the entire length
		    ``(2**nbits) - 1`` is computed.
		taps : array_like, optional
		    Polynomial taps to use (e.g., ``[7, 6, 1]`` for an 8-bit sequence).
		    If None, taps will be automatically selected (for up to
		    ``nbits == 32``).
		
		Returns
		-------
		seq : array
		    Resulting MLS sequence of 0's and 1's.
		state : array
		    The final state of the shift register.
		
		Notes
		-----
		The algorithm for MLS generation is generically described in:
		
		    http://en.wikipedia.org/wiki/Maximum_length_sequence
		
		The default values for taps are specifically taken from the first
		option listed for each value of ``nbits`` in:
		
		    http://www.newwaveinstruments.com/resources/articles/
		        m_sequence_linear_feedback_shift_register_lfsr.htm
		
		.. versionadded:: 0.15.0
	**/
	static public function max_len_seq(args:haxe.extern.Rest<Dynamic>):Dynamic;
}