/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.error_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.error_ops") extern class Error_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Creates a `Dataset` from another `Dataset` and silently ignores any errors.
		
		Use this transformation to produce a dataset that contains the same elements
		as the input, but silently drops any elements that caused an error. For
		example:
		
		```python
		dataset = tf.data.Dataset.from_tensor_slices([1., 2., 0., 4.])
		
		# Computing `tf.check_numerics(1. / 0.)` will raise an InvalidArgumentError.
		dataset = dataset.map(lambda x: tf.check_numerics(1. / x, "error"))
		
		# Using `ignore_errors()` will drop the element that causes an error.
		dataset =
		    dataset.apply(tf.data.experimental.ignore_errors())  # ==> {1., 0.5, 0.2}
		```
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function ignore_errors():Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}