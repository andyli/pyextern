/* This file is generated, do not edit! */
package theano.tensor.fft;
@:pythonImport("theano.tensor.fft") extern class Fft_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _unitary(norm:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Performs the inverse fast Fourier Transform with real-valued output.
		
		The input is a variable of dimensions (m, ..., n//2+1, 2)
		representing the non-trivial elements of m real-valued Fourier transforms
		of initial size (..., n). The real and imaginary parts are stored as a
		pair of float arrays.
		
		The output is a real-valued variable of dimensions (m, ..., n)
		giving the m inverse FFTs.
		
		Parameters
		----------
		inp
		    Array of size (m, ..., n//2+1, 2), containing m inputs
		    with n//2+1 non-trivial elements on the last dimension and real
		    and imaginary parts stored as separate real arrays.
		norm : {None, 'ortho', 'no_norm'}
		    Normalization of transform. Following numpy, default *None* normalizes
		    only the inverse transform by n, 'ortho' yields the unitary transform
		    (:math:`1/\sqrt n` forward and inverse). In addition, 'no_norm' leaves
		    the transform unnormalized.
		is_odd : {True, False}
		    Set to True to get a real inverse transform output with an odd last dimension
		    of length (N-1)*2 + 1 for an input last dimension of length N.
	**/
	static public function irfft(inp:Dynamic, ?norm:Dynamic, ?is_odd:Dynamic):Dynamic;
	static public function irfft_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Performs the fast Fourier transform of a real-valued input.
		
		The input must be a real-valued variable of dimensions (m, ..., n).
		It performs FFTs of size (..., n) on m batches.
		
		The output is a tensor of dimensions (m, ..., n//2+1, 2). The second to
		last dimension of the output contains the n//2+1 non-trivial elements of
		the real-valued FFTs. The real and imaginary parts are stored as a pair of
		float arrays.
		
		Parameters
		----------
		inp
		    Array of floats of size (m, ..., n), containing m inputs of
		    size (..., n).
		norm : {None, 'ortho', 'no_norm'}
		    Normalization of transform. Following numpy, default *None* normalizes
		    only the inverse transform by n, 'ortho' yields the unitary transform
		    (:math:`1/\sqrt n` forward and inverse). In addition, 'no_norm' leaves
		    the transform unnormalized.
	**/
	static public function rfft(inp:Dynamic, ?norm:Dynamic):Dynamic;
	static public function rfft_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}