/* This file is generated, do not edit! */
package tensorflow.contrib.libsvm.python.ops.libsvm_ops;
@:pythonImport("tensorflow.contrib.libsvm.python.ops.libsvm_ops") extern class Libsvm_ops_Module {
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
		Convert Libsvm records to a tensor of label and a tensor of feature.
		
		Args:
		  content: A `Tensor` of type `string`. Each string is a record/row in
		    the Libsvm format.
		  num_features: The number of features.
		  dtype: The type of the output feature tensor. Default to tf.float32.
		  label_dtype: The type of the output label tensor. Default to tf.int64.
		
		Returns:
		  features: A `SparseTensor` of the shape `[input_shape, num_features]`.
		  labels: A `Tensor` of the same shape as content.
	**/
	static public function decode_libsvm(content:Dynamic, num_features:Dynamic, ?dtype:Dynamic, ?label_dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}