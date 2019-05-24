/* This file is generated, do not edit! */
package tensorflow.python.framework.tensor_util;
@:pythonImport("tensorflow.python.framework.tensor_util") extern class Tensor_util_Module {
	static public function ExtractBitsFromBFloat16(x:Dynamic):Dynamic;
	static public function ExtractBitsFromFloat16(x:Dynamic):Dynamic;
	static public function FastAppendBFloat16ArrayToTensorProto(tensor_proto:Dynamic, proto_values:Dynamic):Dynamic;
	static public function GetFromNumpyDTypeDict(dtype_dict:Dynamic, dtype:Dynamic):Dynamic;
	static public function GetNumpyAppendFn(dtype:Dynamic):Dynamic;
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
	static public function MakeNdarray(tensor:Dynamic):Dynamic;
	/**
		Returns True if "tensor_proto" has the given "shape".
		
		Args:
		  tensor_proto: A TensorProto.
		  shape: A tensor shape, expressed as a TensorShape, list, or tuple.
		
		Returns:
		  True if "tensor_proto" has the given "shape", otherwise False.
		
		Raises:
		  TypeError: If "tensor_proto" is not a TensorProto, or shape is not a
		    TensorShape, list, or tuple.
	**/
	static public function ShapeEquals(tensor_proto:Dynamic, shape:Dynamic):Dynamic;
	static public function SlowAppendBFloat16ArrayToTensorProto(tensor_proto:Dynamic, proto_values:Dynamic):Dynamic;
	static public function SlowAppendFloat16ArrayToTensorProto(tensor_proto:Dynamic, proto_values:Dynamic):Dynamic;
	/**
		Convert a TensorShape to a list.
		
		Args:
		  shape: A TensorShapeProto.
		
		Returns:
		  List of integers representing the dimensions of the tensor.
	**/
	static public function TensorShapeProtoToList(shape:Dynamic):Dynamic;
	static public function _AssertCompatible(values:Dynamic, dtype:Dynamic):Dynamic;
	static public function _ConstantValue(tensor:Dynamic, partial:Dynamic):Dynamic;
	static public var _FAST_TENSOR_UTIL_AVAILABLE : Dynamic;
	static public function _FilterBool(v:Dynamic):Dynamic;
	static public function _FilterComplex(v:Dynamic):Dynamic;
	static public function _FilterFloat(v:Dynamic):Dynamic;
	static public function _FilterInt(v:Dynamic):Dynamic;
	static public function _FilterNotTensor(v:Dynamic):Dynamic;
	static public function _FilterStr(v:Dynamic):Dynamic;
	static public function _FilterTuple(v:Dynamic):Dynamic;
	static public function _FirstNotNone(l:Dynamic):Dynamic;
	static public function _FlattenToStrings(nested_strings:Dynamic):Dynamic;
	/**
		Returns the inferred dense dimensions of a list of lists.
	**/
	static public function _GetDenseDimensions(list_of_lists:Dynamic):Dynamic;
	static public function _MediumAppendFloat16ArrayToTensorProto(tensor_proto:Dynamic, proto_values:Dynamic):Dynamic;
	static public var _NP_TO_APPEND_FN : Dynamic;
	static public function _NotNone(v:Dynamic):Dynamic;
	static public var _TENSOR_CONTENT_TYPES : Dynamic;
	static public var _TF_TO_IS_OK : Dynamic;
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
		A version of `constant_value()` that returns a `TensorShape`.
		
		This version should be used when a constant tensor value is
		interpreted as a (possibly partial) shape, e.g. in the shape
		function for `tf.reshape()`. By explicitly requesting a
		`TensorShape` as the return value, it is possible to represent
		unknown dimensions; by contrast, `constant_value()` is
		all-or-nothing.
		
		Args:
		  tensor: The rank-0 or rank-1 Tensor to be evaluated.
		
		Returns:
		  A `TensorShape` based on the constant value of the given `tensor`.
		
		Raises:
		  ValueError: If the shape is rank-0 and is not statically known to be -1.
	**/
	static public function constant_value_as_shape(tensor:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Check whether `x` is of tensor type.
		
		Check whether an object is a tensor. This check is equivalent to calling
		`isinstance(x, (tf.Tensor, tf.SparseTensor, tf.Variable))` and also checks
		if all the component variables of a MirroredVariable or a ReplicaLocalVariable
		are tensors.
		
		Args:
		  x: A python object to check.
		
		Returns:
		  `True` if `x` is a tensor, `False` if not.
	**/
	static public function is_tensor(x:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}