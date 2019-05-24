/* This file is generated, do not edit! */
package tensorflow.python.ops.signal.dct_ops;
@:pythonImport("tensorflow.python.ops.signal.dct_ops") extern class Dct_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks that DCT/IDCT arguments are compatible and well formed.
	**/
	static public function _validate_dct_arguments(input_tensor:Dynamic, dct_type:Dynamic, n:Dynamic, axis:Dynamic, norm:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes the 1D [Discrete Cosine Transform (DCT)][dct] of `input`.
		
		Currently only Types I, II and III are supported.
		Type I is implemented using a length `2N` padded `tf.spectral.rfft`.
		Type II is implemented using a length `2N` padded `tf.spectral.rfft`, as
		described here:
		https://dsp.stackexchange.com/a/10606.
		Type III is a fairly straightforward inverse of Type II
		(i.e. using a length `2N` padded `tf.spectral.irfft`).
		
		@compatibility(scipy)
		Equivalent to scipy.fftpack.dct for Type-I, Type-II and Type-III DCT.
		https://docs.scipy.org/doc/scipy-0.14.0/reference/generated/scipy.fftpack.dct.html
		@end_compatibility
		
		Args:
		  input: A `[..., samples]` `float32` `Tensor` containing the signals to
		    take the DCT of.
		  type: The DCT type to perform. Must be 1, 2 or 3.
		  n: For future expansion. The length of the transform. Must be `None`.
		  axis: For future expansion. The axis to compute the DCT along. Must be `-1`.
		  norm: The normalization to apply. `None` for no normalization or `'ortho'`
		    for orthonormal normalization.
		  name: An optional name for the operation.
		
		Returns:
		  A `[..., samples]` `float32` `Tensor` containing the DCT of `input`.
		
		Raises:
		  ValueError: If `type` is not `1`, `2` or `3`, `n` is not `None, `axis` is
		    not `-1`, or `norm` is not `None` or `'ortho'`.
		  ValueError: If `type` is `1` and `norm` is `ortho`.
		
		[dct]: https://en.wikipedia.org/wiki/Discrete_cosine_transform
	**/
	static public function dct(input:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes the 1D [Inverse Discrete Cosine Transform (DCT)][idct] of `input`.
		
		Currently only Types I, II and III are supported. Type III is the inverse of
		Type II, and vice versa.
		
		Note that you must re-normalize by 1/(2n) to obtain an inverse if `norm` is
		not `'ortho'`. That is:
		`signal == idct(dct(signal)) * 0.5 / signal.shape[-1]`.
		When `norm='ortho'`, we have:
		`signal == idct(dct(signal, norm='ortho'), norm='ortho')`.
		
		@compatibility(scipy)
		Equivalent to scipy.fftpack.idct for Type-I, Type-II and Type-III DCT.
		https://docs.scipy.org/doc/scipy-0.14.0/reference/generated/scipy.fftpack.idct.html
		@end_compatibility
		
		Args:
		  input: A `[..., samples]` `float32` `Tensor` containing the signals to take
		    the DCT of.
		  type: The IDCT type to perform. Must be 1, 2 or 3.
		  n: For future expansion. The length of the transform. Must be `None`.
		  axis: For future expansion. The axis to compute the DCT along. Must be `-1`.
		  norm: The normalization to apply. `None` for no normalization or `'ortho'`
		    for orthonormal normalization.
		  name: An optional name for the operation.
		
		Returns:
		  A `[..., samples]` `float32` `Tensor` containing the IDCT of `input`.
		
		Raises:
		  ValueError: If `type` is not `1`, `2` or `3`, `n` is not `None, `axis` is
		    not `-1`, or `norm` is not `None` or `'ortho'`.
		
		[idct]:
		https://en.wikipedia.org/wiki/Discrete_cosine_transform#Inverse_transforms
	**/
	static public function idct(input:Dynamic, ?type:Dynamic, ?n:Dynamic, ?axis:Dynamic, ?norm:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}