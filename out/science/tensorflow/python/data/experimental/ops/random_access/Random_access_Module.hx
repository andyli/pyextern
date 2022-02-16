/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.random_access;
@:pythonImport("tensorflow.python.data.experimental.ops.random_access") extern class Random_access_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns the element at a specific index in a datasest.
		
		Args:
		  dataset: A `tf.data.Dataset` to determine whether it supports random access.
		  index: The index at which to fetch the element.
		
		Returns:
		    A (nested) structure of values matching `tf.data.Dataset.element_spec`.
		
		 Raises:
		   UnimplementedError: If random access is not yet supported for a dataset.
		   Currently, random access is supported for the following tf.data ops:
		   `tf.data.Dataset.from_tensor_slices`, `tf.data.Dataset.shuffle`,
		   `tf.data.Dataset.batch`, `tf.data.Dataset.shard`, `tf.data.Dataset.map`,
		   and `tf.data.Dataset.range`.
	**/
	static public function at(dataset:Dynamic, index:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}