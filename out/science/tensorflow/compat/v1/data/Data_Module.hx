/* This file is generated, do not edit! */
package tensorflow.compat.v1.data;
@:pythonImport("tensorflow.compat.v1.data") extern class Data_Module {
	static public var AUTOTUNE : Dynamic;
	static public var INFINITE_CARDINALITY : Dynamic;
	static public var UNKNOWN_CARDINALITY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the output classes for elements of the input dataset / iterator.
		
		Args:
		  dataset_or_iterator: A `tf.data.Dataset` or `tf.data.Iterator`.
		
		Returns:
		  A (nested) structure of Python `type` objects matching the structure of the
		  dataset / iterator elements and specifying the class of the individual
		  components.
		
		@compatibility(TF2)
		This is a legacy API for inspecting the type signature of dataset elements. In
		TF 2, you should use the `tf.data.Dataset.element_spec` attribute instead.
		@end_compatibility
	**/
	static public function get_output_classes(dataset_or_iterator:Dynamic):Dynamic;
	/**
		Returns the output shapes for elements of the input dataset / iterator.
		
		Args:
		  dataset_or_iterator: A `tf.data.Dataset` or `tf.data.Iterator`.
		
		Returns:
		  A (nested) structure of `tf.TensorShape` objects matching the structure of
		  the dataset / iterator elements and specifying the shape of the individual
		  components.
		
		@compatibility(TF2)
		This is a legacy API for inspecting the type signature of dataset elements. In
		TF 2, you should use the `tf.data.Dataset.element_spec` attribute instead.
		@end_compatibility
	**/
	static public function get_output_shapes(dataset_or_iterator:Dynamic):Dynamic;
	/**
		Returns the output shapes for elements of the input dataset / iterator.
		
		Args:
		  dataset_or_iterator: A `tf.data.Dataset` or `tf.data.Iterator`.
		
		Returns:
		  A (nested) structure of `tf.DType` objects matching the structure of
		  dataset / iterator elements and specifying the shape of the individual
		  components.
		
		@compatibility(TF2)
		This is a legacy API for inspecting the type signature of dataset elements. In
		TF 2, you should use the `tf.data.Dataset.element_spec` attribute instead.
		@end_compatibility
	**/
	static public function get_output_types(dataset_or_iterator:Dynamic):Dynamic;
	/**
		Creates an iterator for elements of `dataset`.
		
		Note: The returned iterator will be in an uninitialized state,
		and you must run the `iterator.initializer` operation before using it:
		
		```python
		dataset = ...
		iterator = tf.compat.v1.data.make_initializable_iterator(dataset)
		# ...
		sess.run(iterator.initializer)
		```
		
		Args:
		  dataset: A `tf.data.Dataset`.
		  shared_name: (Optional.) If non-empty, the returned iterator will be shared
		    under the given name across multiple sessions that share the same devices
		    (e.g. when using a remote server).
		
		Returns:
		  A `tf.data.Iterator` for elements of `dataset`.
		
		Raises:
		  RuntimeError: If eager execution is enabled.
		
		@compatibility(TF2)
		This is a legacy API for consuming dataset elements and should only be used
		during transition from TF 1 to TF 2. Note that using this API should be
		a transient state of your code base as there are in general no guarantees
		about the interoperability of TF 1 and TF 2 code.
		
		In TF 2 datasets are Python iterables which means you can consume their
		elements using `for elem in dataset: ...` or by explicitly creating iterator
		via `iterator = iter(dataset)` and fetching its elements via
		`values = next(iterator)`.
		@end_compatibility
	**/
	static public function make_initializable_iterator(dataset:Dynamic, ?shared_name:Dynamic):Dynamic;
	/**
		Creates an iterator for elements of `dataset`.
		
		Note: The returned iterator will be initialized automatically.
		A "one-shot" iterator does not support re-initialization.
		
		Args:
		  dataset: A `tf.data.Dataset`.
		
		Returns:
		  A `tf.data.Iterator` for elements of `dataset`.
		
		@compatibility(TF2)
		This is a legacy API for consuming dataset elements and should only be used
		during transition from TF 1 to TF 2. Note that using this API should be
		a transient state of your code base as there are in general no guarantees
		about the interoperability of TF 1 and TF 2 code.
		
		In TF 2 datasets are Python iterables which means you can consume their
		elements using `for elem in dataset: ...` or by explicitly creating iterator
		via `iterator = iter(dataset)` and fetching its elements via
		`values = next(iterator)`.
		@end_compatibility
	**/
	static public function make_one_shot_iterator(dataset:Dynamic):Dynamic;
}