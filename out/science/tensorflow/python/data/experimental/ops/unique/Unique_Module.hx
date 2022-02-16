/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.unique;
@:pythonImport("tensorflow.python.data.experimental.ops.unique") extern class Unique_Module {
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
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a `Dataset` from another `Dataset`, discarding duplicates. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.unique(...)
		
		Use this transformation to produce a dataset that contains one instance of
		each unique element in the input. For example:
		
		```python
		dataset = tf.data.Dataset.from_tensor_slices([1, 37, 2, 37, 2, 1])
		
		# Using `unique()` will drop the duplicate elements.
		dataset = dataset.apply(tf.data.experimental.unique())  # ==> { 1, 37, 2 }
		```
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function unique():Dynamic;
}