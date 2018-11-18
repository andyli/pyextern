/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.features.python.virtual_batchnorm_impl;
@:pythonImport("tensorflow.contrib.gan.python.features.python.virtual_batchnorm_impl") extern class Virtual_batchnorm_impl_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the static or dynamic batch size.
	**/
	static public function _static_or_dynamic_batch_size(tensor:Dynamic, batch_axis:Dynamic):Dynamic;
	/**
		Calculate the mean and mean square of `x`.
		
		Modified from the implementation of `tf.nn.moments`.
		
		Args:
		  x: A `Tensor`.
		  axes: Array of ints.  Axes along which to compute mean and
		    variance.
		
		Returns:
		  Two `Tensor` objects: `mean` and `square mean`.
	**/
	static public function _statistics(x:Dynamic, axes:Dynamic):Dynamic;
	/**
		Verifies that tensor shapes are compatible, except for `batch_dim`.
	**/
	static public function _validate_call_input(tensor_list:Dynamic, batch_dim:Dynamic):Dynamic;
	/**
		Validate input and return the used axis value.
	**/
	static public function _validate_init_input_and_get_axis(reference_batch:Dynamic, axis:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}