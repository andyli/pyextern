/* This file is generated, do not edit! */
package tensorflow.contrib.util;
@:pythonImport("tensorflow.contrib.util") extern class Util_Module {
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
		Returns the constant value of the given tensor, if efficiently calculable.
		
		This function attempts to partially evaluate the given tensor, and
		returns its value as a numpy ndarray if this succeeds.
		
		TODO(mrry): Consider whether this function should use a registration
		mechanism like gradients and ShapeFunctions, so that it is easily
		extensible.
		
		NOTE: If `constant_value(tensor)` returns a non-`None` result, it will no
		longer be possible to feed a different value for `tensor`. This allows the
		result of this function to influence the graph that is constructed, and
		permits static shape optimizations.
		
		Args:
		  tensor: The Tensor to be evaluated.
		  partial: If True, the returned numpy array is allowed to have partially
		    evaluated values. Values that can't be evaluated will be None.
		
		Returns:
		  A numpy ndarray containing the constant value of the given `tensor`,
		  or None if it cannot be calculated.
		
		Raises:
		  TypeError: if tensor is not an ops.Tensor.
	**/
	static public function constant_value(tensor:Dynamic, ?partial:Dynamic):Dynamic;
	/**
		Create a numpy ndarray from a tensor.
		
		Create a numpy ndarray with the same shape and data as the tensor.
		
		Args:
		  tensor: A TensorProto.
		
		Returns:
		  A numpy array with the tensor contents.
		
		Raises:
		  TypeError: if tensor has unsupported type.
	**/
	static public function make_ndarray(tensor:Dynamic):Dynamic;
	/**
		Create a TensorProto.
		
		Args:
		  values:         Values to put in the TensorProto.
		  dtype:          Optional tensor_pb2 DataType value.
		  shape:          List of integers representing the dimensions of tensor.
		  verify_shape:   Boolean that enables verification of a shape of values.
		  allow_broadcast:Boolean that enables allowing scalars and 1 length vector
		      broadcasting. Cannot be true when verify_shape is true.
		
		Returns:
		  A `TensorProto`. Depending on the type, it may contain data in the
		  "tensor_content" attribute, which is not directly useful to Python programs.
		  To access the values you should convert the proto back to a numpy ndarray
		  with `tf.make_ndarray(proto)`.
		
		  If `values` is a `TensorProto`, it is immediately returned; `dtype` and
		  `shape` are ignored.
		
		Raises:
		  TypeError:  if unsupported types are provided.
		  ValueError: if arguments have inappropriate values or if verify_shape is
		   True and shape of values is not equals to a shape from the argument.
		
		make_tensor_proto accepts "values" of a python scalar, a python list, a
		numpy ndarray, or a numpy scalar.
		
		If "values" is a python scalar or a python list, make_tensor_proto
		first convert it to numpy ndarray. If dtype is None, the
		conversion tries its best to infer the right numpy data
		type. Otherwise, the resulting numpy array has a compatible data
		type with the given dtype.
		
		In either case above, the numpy ndarray (either the caller provided
		or the auto converted) must have the compatible type with dtype.
		
		make_tensor_proto then converts the numpy array to a tensor proto.
		
		If "shape" is None, the resulting tensor proto represents the numpy
		array precisely.
		
		Otherwise, "shape" specifies the tensor's shape and the numpy array
		can not have more elements than what "shape" specifies.
	**/
	static public function make_tensor_proto(values:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?verify_shape:Dynamic, ?allow_broadcast:Dynamic):Dynamic;
	/**
		Collect the list of ops used by a graph.
		
		Does not validate that the ops are all registered.
		
		Args:
		  graph_def: A `GraphDef` proto, as from `graph.as_graph_def()`.
		
		Returns:
		  A list of strings, each naming an op used by the graph.
	**/
	static public function ops_used_by_graph_def(graph_def:Dynamic):Dynamic;
	/**
		Collect the stripped OpDefs for ops used by a graph.
		
		This function computes the `stripped_op_list` field of `MetaGraphDef` and
		similar protos.  The result can be communicated from the producer to the
		consumer, which can then use the C++ function
		`RemoveNewDefaultAttrsFromGraphDef` to improve forwards compatibility.
		
		Args:
		  graph_def: A `GraphDef` proto, as from `graph.as_graph_def()`.
		
		Returns:
		  An `OpList` of ops used by the graph.
		
		Raises:
		  ValueError: If an unregistered op is used.
	**/
	static public function stripped_op_list_for_graph(graph_def:Dynamic):Dynamic;
}