/* This file is generated, do not edit! */
package tensorflow.python.data.util.sparse;
@:pythonImport("tensorflow.python.data.util.sparse") extern class Sparse_Module {
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
		Checks for sparse tensor.
		
		Args:
		  classes: a structure of objects that identify the dataset item classes
		
		Returns:
		  `True` if `classes` contains a sparse tensor type and `False` otherwise.
	**/
	static public function any_sparse(classes:Dynamic):Dynamic;
	/**
		Converts sparse tensor shapes to their physical shapes.
		
		Args:
		  shapes: a structure of shapes to convert.
		  classes: a structure of objects that identify the dataset item classes
		
		Returns:
		  a structure matching the nested structure of `shapes`, containing
		  `tensor_shape.unknown_shape()` at positions where `classes` contains
		  `tf.SparseTensor` and matching contents of `shapes` otherwise
	**/
	static public function as_dense_shapes(shapes:Dynamic, classes:Dynamic):Dynamic;
	/**
		Converts sparse tensor types to `dtypes.variant`.
		
		Args:
		  types: a structure of types to convert.
		  classes: a structure of objects that identify the dataset item classes
		
		Returns:
		  a structure matching the nested structure of `types`, containing
		  `dtypes.variant` at positions where `classes` contains `tf.SparseTensor` and
		  matching contents of `types` otherwise
	**/
	static public function as_dense_types(types:Dynamic, classes:Dynamic):Dynamic;
	/**
		Deserializes sparse tensors.
		
		Args:
		  tensors: a structure of tensors to deserialize.
		  types: a structure that holds information about types of `tensors`
		  shapes: a structure that holds information about shapes of `tensors`
		  classes: a structure of objects that identify the dataset item classes
		
		Returns:
		  `tensors` with any serialized sparse tensors replaced by their deserialized
		  version.
	**/
	static public function deserialize_sparse_tensors(tensors:Dynamic, types:Dynamic, shapes:Dynamic, classes:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Gets classes for a structure of tensors.
		
		Args:
		  tensors: the tensor structure to get classes for.
		
		Returns:
		  a structure matching the nested structure of `tensors`, containing
		  `tf.SparseTensor` at positions where `tensors` contains a sparse tensor and
		  `tf.Tensor` otherwise
	**/
	static public function get_classes(tensors:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Serializes many sparse tensors into a batch.
		
		Args:
		  tensors: a tensor structure to serialize.
		
		Returns:
		  `tensors` with any sparse tensors replaced by the serialized batch.
	**/
	static public function serialize_many_sparse_tensors(tensors:Dynamic):Dynamic;
	/**
		Serializes sparse tensors.
		
		Args:
		  tensors: a tensor structure to serialize.
		
		Returns:
		  `tensors` with any sparse tensors replaced by their serialized version.
	**/
	static public function serialize_sparse_tensors(tensors:Dynamic):Dynamic;
}