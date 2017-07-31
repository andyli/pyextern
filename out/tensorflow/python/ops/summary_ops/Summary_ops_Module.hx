/* This file is generated, do not edit! */
package tensorflow.python.ops.summary_ops;
@:pythonImport("tensorflow.python.ops.summary_ops") extern class Summary_ops_Module {
	static public function _Collect(val:Dynamic, collections:Dynamic, default_collections:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Outputs a `Summary` protocol buffer with a serialized tensor.proto.
		
		The generated
		[`Summary`](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		has one summary value containing the input tensor.
		
		Args:
		  name: A name for the generated node. Will also serve as the series name in
		    TensorBoard.
		  tensor: A tensor of any type and shape to serialize.
		  summary_description: Optional summary_pb2.SummaryDescription()
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function tensor_summary(name:Dynamic, tensor:Dynamic, ?summary_description:Dynamic, ?collections:Dynamic):Dynamic;
}