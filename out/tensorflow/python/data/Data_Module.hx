/* This file is generated, do not edit! */
package tensorflow.python.data;
@:pythonImport("tensorflow.python.data") extern class Data_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Creates a `tf.data.Iterator` for enumerating the elements of a dataset.
		
		Note: The returned iterator will be in an uninitialized state,
		and you must run the `iterator.initializer` operation before using it:
		
		```python
		dataset = ...
		iterator = dataset.make_initializable_iterator()
		# ...
		sess.run(iterator.initializer)
		```
		
		Args:
		  dataset: A `tf.data.Dataset`.
		
		Returns:
		  A `tf.data.Iterator` over the elements of `dataset`.
		
		Raises:
		  RuntimeError: If eager execution is enabled.
	**/
	static public function make_initializable_iterator(dataset:Dynamic):Dynamic;
	/**
		Creates a `tf.data.Iterator` for enumerating the elements of a dataset.
		
		Note: The returned iterator will be initialized automatically.
		A "one-shot" iterator does not support re-initialization.
		
		Args:
		  dataset: A `tf.data.Dataset`.
		
		Returns:
		  A `tf.data.Iterator` over the elements of this dataset.
	**/
	static public function make_one_shot_iterator(dataset:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}