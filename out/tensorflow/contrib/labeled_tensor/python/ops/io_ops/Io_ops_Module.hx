/* This file is generated, do not edit! */
package tensorflow.contrib.labeled_tensor.python.ops.io_ops;
@:pythonImport("tensorflow.contrib.labeled_tensor.python.ops.io_ops") extern class Io_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert a dict of lt.FixedLenFeature into a dict of tf.FixedLenFeature.
	**/
	static public function _labeled_to_unlabeled_features(features:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Parse `Example` protos into a `dict` of labeled tensors.
		
		See tf.parse_example.
		
		Args:
		  serialized: A 1-D LabeledTensor of strings, a batch of binary serialized
		    `Example` protos.
		  features: A `dict` mapping feature keys to `labeled_tensor.FixedLenFeature`
		    values.
		  name: A name for this operation (optional).
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		
		Returns:
		  A `dict` mapping feature keys to `LabeledTensor` values. The single axis
		  from `serialized` will be prepended to the axes provided by each feature.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Parses a single `Example` proto.
		
		See tf.parse_single_example.
		
		Args:
		  serialized: A scalar string Tensor or LabeledTensor, a single serialized
		    Example.
		  features: A `dict` mapping feature keys to `labeled_tensor.FixedLenFeature`
		    values.
		  name: A name for this operation (optional).
		  example_names: (Optional) A scalar string Tensor, the associated name.
		
		Returns:
		  A `dict` mapping feature keys to `LabeledTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Create a placeholder for a labeled tensor.
		
		For example:
		
		  lt.placeholder(tf.float32, ['batch', ('channel', ['r', 'g', 'b'])])
		
		See tf.placeholder for more details.
		
		Args:
		  dtype: The type of elements in the tensor to be fed.
		  axes: sequence of strings (denoting axes of unknown size) and/or objects
		    convertable to lt.Axis to label the result.
		  name: Optional op name.
		
		Returns:
		  Placeholder labeled tensor.
	**/
	static public function placeholder(dtype:Dynamic, axes:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
}