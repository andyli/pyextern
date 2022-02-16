/* This file is generated, do not edit! */
package tensorflow.python.ops.handle_data_util;
@:pythonImport("tensorflow.python.ops.handle_data_util") extern class Handle_data_util_Module {
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
		Copies HandleData for variant and resource type tensors if available.
		
		The CppShapeInferenceResult::HandleData proto contains information about the
		shapes and types of the element tensors of resource/variant type tensors.
		We need to copy this across function boundaries, i.e., when capturing a
		placeholder or when returning a function tensor as output. If we don't do this
		the element tensors will have unknown shapes, e.g., if a TensorList variant
		tensor is captured as a placeholder, elements popped from that list would have
		unknown shape.
		
		Args:
		  source_t: The tensor to copy HandleData from.
		  target_t: The tensor to copy HandleData to.
	**/
	static public function copy_handle_data(source_t:Dynamic, target_t:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_resource_handle_data(graph_op:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function set_handle_data(target_t:Dynamic, handle_data:Dynamic):Dynamic;
}