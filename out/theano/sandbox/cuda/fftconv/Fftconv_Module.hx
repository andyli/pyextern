/* This file is generated, do not edit! */
package theano.sandbox.cuda.fftconv;
@:pythonImport("theano.sandbox.cuda.fftconv") extern class Fftconv_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function batched_complex_dot(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pointer array when input represents a batch of matrices.
		
		Taken from scikits.cuda tests/test_cublas.py.
	**/
	static public function bptrs(a:Dynamic):Dynamic;
	/**
		Perform a convolution through fft.
		
		Only support input which will be even on the last dimension
		(width).  All other dimensions can be anything and the filters can
		have an even or odd width.
		
		If you must use input which has an odd width, you can either pad
		it or use the `pad_last_dim` argument which will do it for you and
		take care to strip the padding before returning.  Don't use this
		argument if you are not sure the input is odd since the padding is
		unconditional and will make even input odd, thus leading to
		problems.
		
		On valid mode the filters must be smaller than the input.
		
		Parameters
		----------
		input
		    (b, ic, i0, i1).
		filters
		    (oc, ic, f0, f1).
		border_mode : {'valid', 'full'}
		pad_last_dim
		    Unconditionally pad the last dimension of the input
		    to to turn it from odd to even.  Will strip the
		    padding before returning the result.
	**/
	static public function conv2d_fft(input:Dynamic, filters:Dynamic, ?image_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?pad_last_dim:Dynamic):Dynamic;
	/**
		Perform a convolution through fft.
		
		Only supports input whose shape is even on the last dimension.
		All other dimensions can be anything and the filters can
		have an even or odd last dimension.
		
		The semantics associated with the last three dimensions
		are not important as long as they are in the same order between
		the inputs and the filters. For example, when the convolution
		is done on a sequence of images, they could be either
		(duration, height, width) or (height, width, duration).
		
		If you must use input which has an odd width, you can either pad
		it or use the `pad_last_dim` argument which will do it for you and
		take care to strip the padding before returning. pad_last_dim checks
		that the last dimension is odd before the actual paddding
		
		On valid mode the filters must be smaller than the input.
		
		Parameters
		----------
		input
		    (b, ic, i0, i1, i2).
		filters
		    (oc, ic, f0, f1, i2).
		border_mode : {'valid', 'full'}.
		pad_last_dim
		    Unconditionally pad the last dimension of the input
		    to to turn it from odd to even.  Will strip the
		    padding before returning the result.
	**/
	static public function conv3d_fft(input:Dynamic, filters:Dynamic, ?image_shape:Dynamic, ?filter_shape:Dynamic, ?border_mode:Dynamic, ?pad_last_dim:Dynamic):Dynamic;
	static public var cuda_available : Dynamic;
	static public function cufft(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cuifft(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		This function corresponds to an if statement, returning (and evaluating)
		inputs in the ``then_branch`` if ``condition`` evaluates to True or
		inputs in the ``else_branch`` if ``condition`` evalutates to False.
		
		:type condition: scalar like
		:param condition:
		    ``condition`` should be a tensor scalar representing the condition.
		    If it evaluates to 0 it corresponds to False, anything else stands
		    for True.
		
		:type then_branch: list of theano expressions/ theano expression
		:param then_branch:
		    A single theano variable or a list of theano variables that the
		    function should return as the output if ``condition`` evaluates to
		    true. The number of variables should match those in the
		    ``else_branch``, and there should be a one to one correspondance
		    (type wise) with the tensors provided in the else branch
		
		:type else_branch: list of theano expressions/ theano expressions
		:param else_branch:
		    A single theano variable or a list of theano variables that the
		    function should return as the output if ``condition`` evaluates to
		    false. The number of variables should match those in the then branch,
		    and there should be a one to one correspondace (type wise) with the
		    tensors provided in the then branch.
		
		:return:
		    A list of theano variables or a single variable (depending on the
		    nature of the ``then_branch`` and ``else_branch``). More exactly if
		    ``then_branch`` and ``else_branch`` is a tensor, then
		    the return variable will be just a single variable, otherwise a
		    list. The value returns correspond either to the values in the
		    ``then_branch`` or in the ``else_branch`` depending on the value of
		    ``cond``.
	**/
	static public function ifelse(condition:Dynamic, then_branch:Dynamic, else_branch:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parameters
		----------
		input_fft_v
		    It's (b, ic, i0, i1//2 + 1, 2).
		filters_fft_v
		    It's (oc, ic, i0, i1//2 + 1, 2).
	**/
	static public function mult_and_reduce(input_fft_v:Dynamic, filters_fft_v:Dynamic, ?input_shape:Dynamic, ?filter_shape:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var pycuda_available : Dynamic;
	/**
		Uses cublasCgemmBatched to compute a bunch of complex dot products
		in parallel.
	**/
	static public function sc_complex_dot_batched(bx_gpu:Dynamic, by_gpu:Dynamic, bc_gpu:Dynamic, ?transa:Dynamic, ?transb:Dynamic, ?handle:Dynamic):Dynamic;
	static public var scikits_cuda_available : Dynamic;
	/**
		Adapted version of theano.misc.pycuda_utils.to_gpuarray that takes
		an array with an extra trailing dimension of length 2 for
		real/imaginary parts, and turns it into a complex64 PyCUDA
		GPUArray.
	**/
	static public function to_complex_gpuarray(x:Dynamic, ?copyif:Dynamic):Dynamic;
}