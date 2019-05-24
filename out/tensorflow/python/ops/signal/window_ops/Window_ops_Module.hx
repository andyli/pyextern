/* This file is generated, do not edit! */
package tensorflow.python.ops.signal.window_ops;
@:pythonImport("tensorflow.python.ops.signal.window_ops") extern class Window_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for computing a raised cosine window.
		
		Args:
		  name: Name to use for the scope.
		  default_name: Default name to use for the scope.
		  window_length: A scalar `Tensor` or integer indicating the window length.
		  periodic: A bool `Tensor` indicating whether to generate a periodic or
		    symmetric window.
		  dtype: A floating point `DType`.
		  a: The alpha parameter to the raised cosine window.
		  b: The beta parameter to the raised cosine window.
		
		Returns:
		  A `Tensor` of shape `[window_length]` of type `dtype`.
		
		Raises:
		  ValueError: If `dtype` is not a floating point type or `window_length` is
		    not scalar or `periodic` is not scalar.
	**/
	static public function _raised_cosine_window(name:Dynamic, default_name:Dynamic, window_length:Dynamic, periodic:Dynamic, dtype:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Generate a [Hamming][hamming] window.
		
		Args:
		  window_length: A scalar `Tensor` indicating the window length to generate.
		  periodic: A bool `Tensor` indicating whether to generate a periodic or
		    symmetric window. Periodic windows are typically used for spectral
		    analysis while symmetric windows are typically used for digital
		    filter design.
		  dtype: The data type to produce. Must be a floating point type.
		  name: An optional name for the operation.
		
		Returns:
		  A `Tensor` of shape `[window_length]` of type `dtype`.
		
		Raises:
		  ValueError: If `dtype` is not a floating point type.
		
		[hamming]: https://en.wikipedia.org/wiki/Window_function#Hann_and_Hamming_windows
	**/
	static public function hamming_window(window_length:Dynamic, ?periodic:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generate a [Hann window][hann].
		
		Args:
		  window_length: A scalar `Tensor` indicating the window length to generate.
		  periodic: A bool `Tensor` indicating whether to generate a periodic or
		    symmetric window. Periodic windows are typically used for spectral
		    analysis while symmetric windows are typically used for digital
		    filter design.
		  dtype: The data type to produce. Must be a floating point type.
		  name: An optional name for the operation.
		
		Returns:
		  A `Tensor` of shape `[window_length]` of type `dtype`.
		
		Raises:
		  ValueError: If `dtype` is not a floating point type.
		
		[hann]: https://en.wikipedia.org/wiki/Window_function#Hann_and_Hamming_windows
	**/
	static public function hann_window(window_length:Dynamic, ?periodic:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}