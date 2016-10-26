/* This file is generated, do not edit! */
package tensorflow.python.ops.summary_ops;
@:pythonImport("tensorflow.python.ops.summary_ops") extern class Summary_ops_Module {
	static public function _Collect(val:Dynamic, collections:Dynamic, default_collections:Dynamic):Dynamic;
	static public function _ScalarShape(unused_op:Dynamic):Dynamic;
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
		has one summary value containing input_tensor.
		
		Args:
		  display_name: A name to associate with the data series. Will be used to
		    organize output data and as a name in visualizers.
		  tensor: A tensor of any type and shape to serialize.
		  description: An optional long description of the data being output.
		  labels: a list of strings used to specify how the data can be interpreted,
		    for example:
		    * `'encoding:image/jpg'` for a string tensor containing jpg images
		    * `'encoding:proto/X/Y/foo.proto'` for a string tensor containing Foos
		    * `'group:$groupName/$roleInGroup'` for a tensor that is related to
		       other tensors that are all in a group. (e.g. bounding boxes and images)
		  collections: Optional list of graph collections keys. The new summary op is
		    added to these collections. Defaults to `[GraphKeys.SUMMARIES]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar `Tensor` of type `string`. The serialized `Summary` protocol
		  buffer.
	**/
	static public function tensor_summary(display_name:Dynamic, tensor:Dynamic, ?description:Dynamic, ?labels:Dynamic, ?collections:Dynamic, ?name:Dynamic):Dynamic;
}