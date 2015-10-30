/* This file is generated, do not edit! */
package scipy.signal.sigtools;
@:pythonImport("scipy.signal.sigtools") extern class Sigtools_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		out = _convolve2d(in1, in2, flip, mode, boundary, fillvalue)
	**/
	static public function _convolve2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		out = _correlateND(a,kernel,mode) 
		
		 mode = 0 - 'valid', 1 - 'same', 
		2 - 'full' (default)
	**/
	static public function _correlateND(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		(y,Vf) = _linear_filter(b,a,X,Dim=-1,Vi=None)  implemented using Direct Form II transposed flow diagram. If Vi is not given, Vf is not returned.
	**/
	static public function _linear_filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		filt = _median2d(data, size)
	**/
	static public function _medfilt2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		out = _order_filterND(a,domain,order)
	**/
	static public function _order_filterND(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		h = _remez(numtaps, bands, des, weight, type, Hz, maxiter, grid_density) 
		returns the optimal (in the Chebyshev/minimax sense) FIR filter impulse 
		response given a set of band edges, the desired response on those bands,
		and the weight given to the error in those bands.  Bands is a monotonic
		 vector with band edges given in frequency domain where Hz is the sampling
		 frequency.
	**/
	static public function _remez(args:haxe.extern.Rest<Dynamic>):Dynamic;
}