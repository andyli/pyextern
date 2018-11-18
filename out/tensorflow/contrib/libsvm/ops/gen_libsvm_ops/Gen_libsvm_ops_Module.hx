/* This file is generated, do not edit! */
package tensorflow.contrib.libsvm.ops.gen_libsvm_ops;
@:pythonImport("tensorflow.contrib.libsvm.ops.gen_libsvm_ops") extern class Gen_libsvm_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _decode_libsvm_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Convert LibSVM input to tensors. The output consists of
		
		a label and a feature tensor. The shape of the label tensor
		is the same as input and the shape of the feature tensor is
		`[input_shape, num_features]`.
		
		Args:
		  input: A `Tensor` of type `string`. Each string is a record in the LibSVM.
		  num_features: An `int` that is `>= 1`. The number of features.
		  dtype: An optional `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.float32`.
		  label_dtype: An optional `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.int64`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (label, feature_indices, feature_values, feature_shape).
		
		  label: A `Tensor` of type `label_dtype`. A tensor of the same shape as input.
		  feature_indices: A `Tensor` of type `int64`. A 2-D int64 tensor of dense_shape [N, ndims].
		  feature_values: A `Tensor` of type `dtype`. A 1-D tensor of any type and dense_shape [N].
		  feature_shape: A `Tensor` of type `int64`. A 1-D int64 tensor of dense_shape [ndims].
	**/
	static public function decode_libsvm(input:Dynamic, num_features:Dynamic, ?dtype:Dynamic, ?label_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function decode_libsvm
	**/
	static public function decode_libsvm_eager_fallback(input:Dynamic, num_features:Dynamic, ?dtype:Dynamic, ?label_dtype:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}