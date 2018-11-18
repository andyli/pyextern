/* This file is generated, do not edit! */
package theano.gpuarray.fft;
@:pythonImport("theano.gpuarray.fft") extern class Fft_Module {
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
	/**
		This will attempt to convert `x` into a variable on the GPU.
		
		It can take either a value of another variable.  If `x` is already
		suitable, it will be returned as-is.
		
		Parameters
		----------
		x
		    Object to convert
		context_name : str or None
		    target context name for the result
	**/
	static public function as_gpuarray_variable(x:Dynamic, context_name:Dynamic):Dynamic;
	/**
		Performs the inverse fast Fourier Transform with real-valued output on the GPU.
		
		The input is a variable of dimensions (m, ..., n//2+1, 2) with
		type float32 representing the non-trivial elements of m
		real-valued Fourier transforms of initial size (..., n). The real and
		imaginary parts are stored as a pair of float32 arrays.
		
		The output is a real-valued float32 variable of dimensions (m, ..., n)
		giving the m inverse FFTs.
		
		Parameters
		----------
		inp
		    Array of float32 of size (m, ..., n//2+1, 2), containing m inputs
		    with n//2+1 non-trivial elements on the last dimension and real
		    and imaginary parts stored as separate arrays.
		norm : {None, 'ortho', 'no_norm'}
		    Normalization of transform. Following numpy, default *None* normalizes
		    only the inverse transform by n, 'ortho' yields the unitary transform
		    (:math:`1/\sqrt n` forward and inverse). In addition, 'no_norm' leaves
		    the transform unnormalized.
		is_odd : {True, False}
		    Set to True to get a real inverse transform output with an odd last dimension
		    of length (N-1)*2 + 1 for an input last dimension of length N.
	**/
	static public function cuirfft(inp:Dynamic, ?norm:Dynamic, ?is_odd:Dynamic):Dynamic;
	static public function cuirfft_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Performs the fast Fourier transform of a real-valued input on the GPU.
		
		The input must be a real-valued float32 variable of dimensions (m, ..., n).
		It performs FFTs of size (..., n) on m batches.
		
		The output is a GpuArray of dimensions (m, ..., n//2+1, 2). The second to
		last dimension of the output contains the n//2+1 non-trivial elements of
		the real-valued FFTs. The real and imaginary parts are stored as a pair of
		float32 arrays.
		
		Parameters
		----------
		inp
		    Array of real-valued float32 of size (m, ..., n), containing m inputs of
		    size (..., n).
		norm : {None, 'ortho', 'no_norm'}
		    Normalization of transform. Following numpy, default *None* normalizes
		    only the inverse transform by n, 'ortho' yields the unitary transform
		    (:math:`1/\sqrt n` forward and inverse). In addition, 'no_norm' leaves
		    the transform unnormalized.
	**/
	static public function curfft(inp:Dynamic, ?norm:Dynamic):Dynamic;
	static public function curfft_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function gpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	/**
		OP(..., host_from_gpu(), ...) -> host_from_gpu(GpuOP(...))
		
		gpu_from_host(OP(inp0, ...)) -> GpuOP(inp0, ...)
	**/
	static public function op_lifter(OP:Dynamic, ?cuda_only:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var pycuda_available : Dynamic;
	static public var pygpu_available : Dynamic;
	static public function register_opt(?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator for the new GraphToGPU optimizer.
		Takes an extra parameter(Op) compared to register_opt decorator.
		
		Parameters
		----------
		tracks : List of Op class Or Op instance or None
		    The Node's Op to which optimization is being applied.
		
		tags : String
		    The optimization tag to which the optimizer will be registered.
	**/
	static public function register_opt2(tracks:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var skcuda_available : Dynamic;
}