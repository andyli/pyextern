/* This file is generated, do not edit! */
package scipy.signal._spectral;
@:pythonImport("scipy.signal._spectral") extern class _Spectral_Module {
	static public var __all__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		_lombscargle(x, y, freqs)
		
		Computes the Lomb-Scargle periodogram.
		
		Parameters
		----------
		x : array_like
		    Sample times.
		y : array_like
		    Measurement values (must be registered so the mean is zero).
		freqs : array_like
		    Angular frequencies for output periodogram.
		
		Returns
		-------
		pgram : array_like
		    Lomb-Scargle periodogram.
		
		Raises
		------
		ValueError
		    If the input arrays `x` and `y` do not have the same shape.
		
		See also
		--------
		lombscargle
	**/
	static public function _lombscargle(args:haxe.extern.Rest<Dynamic>):Dynamic;
}