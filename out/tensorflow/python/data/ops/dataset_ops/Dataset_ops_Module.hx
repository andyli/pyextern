/* This file is generated, do not edit! */
package tensorflow.python.data.ops.dataset_ops;
@:pythonImport("tensorflow.python.data.ops.dataset_ops") extern class Dataset_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns default padding tensors in a structure matching `input_dataset`.
	**/
	static public function _default_padding(input_dataset:Dynamic):Dynamic;
	/**
		Walks the dataset graph to ensure all datasets come from the same graph.
	**/
	static public function _ensure_same_dataset_graph(dataset:Dynamic):Dynamic;
	/**
		Returns `True` if `input_component_shape` can be padded to `padded_shape`.
		
		Args:
		  padded_shape: A `tf.TensorShape`.
		  input_component_shape: A `tf.TensorShape`.
		
		Returns:
		  `True` if `input_component_shape` can be padded to `padded_shape`, otherwise
		  `False`.
	**/
	static public function _is_padded_shape_compatible_with(padded_shape:Dynamic, input_component_shape:Dynamic):Dynamic;
	/**
		Converts `padded_shape` to a `tf.Tensor` representing that shape.
		
		Args:
		  padded_shape: A shape-like object, which may be a `tf.TensorShape`, a Python
		    sequence, or a 1-D `tf.Tensor` of `tf.int64` elements.
		  input_component_shape: A `tf.TensorShape`, with which `padded_shape` must
		    be compatible.
		
		Returns:
		  A 1-D `tf.Tensor` of `tf.int64` elements, representing `padded_shape`.
		
		Raises:
		  ValueError: If `padded_shape` is not a shape or not compatible with
		    `input_component_shape`.
		  TypeError: If `padded_shape` is not convertible to a `tf.int64` tensor.
	**/
	static public function _padded_shape_to_tensor(padded_shape:Dynamic, input_component_shape:Dynamic):Dynamic;
	/**
		Converts the padding value to a tensor.
		
		Args:
		  value: The padding value.
		  output_type: Its expected dtype.
		
		Returns:
		  A scalar `Tensor`.
		
		Raises:
		  ValueError: if the padding value is not a scalar.
		  TypeError: if the padding value's type does not match `output_type`.
	**/
	static public function _padding_value_to_tensor(value:Dynamic, output_type:Dynamic):Dynamic;
	/**
		Returns `True` if `args` should be `*args` when passed to a callable.
	**/
	static public function _should_unpack_args(args:Dynamic):Dynamic;
	/**
		Prints warning message if the current graph uses common graph collections.
		
		NOTE(mrry): Currently a warning is only generated for lookup tables. Any
		variables created will be automatically hoisted out to the outermost scope
		using `init_scope()`. Some collections (such as for control-flow contexts)
		are benign and should not generate a warning.
		
		Args:
		  transformation_name: A human-readable name for the transformation.
	**/
	static public function _warn_if_collections(transformation_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Helper for setting `output_shapes` and `output_types` attrs of Dataset ops.
		
		Most Dataset op constructors expect `output_shapes` and `output_types`
		arguments that represent the flattened structure of an element. This helper
		function generates these attrs as a keyword argument dictionary, allowing
		`Dataset._as_variant_tensor()` implementations to pass
		`**flat_structure(self)` to the op constructor.
		
		Args:
		  dataset: A `tf.data.Dataset`.
		
		Returns:
		  A dictionary of keyword arguments that can be passed to many Dataset op
		  constructors.
	**/
	static public function flat_structure(dataset:Dynamic):Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}