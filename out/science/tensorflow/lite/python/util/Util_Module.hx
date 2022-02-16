/* This file is generated, do not edit! */
package tensorflow.lite.python.util;
@:pythonImport("tensorflow.lite.python.util") extern class Util_Module {
	static public var _MAP_QUANT_TO_IO_TYPES : Dynamic;
	static public var _MAP_TFLITE_ENUM_TO_TF_TYPES : Dynamic;
	static public var _TFLITE_FILE_IDENTIFIER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts a tflite model from a bytearray into a parsable object.
	**/
	static public function _convert_model_from_bytearray_to_object(model_bytearray:Dynamic):Dynamic;
	/**
		Converts a tflite model from a parsable object into a bytearray.
	**/
	static public function _convert_model_from_object_to_bytearray(model_object:Dynamic):Dynamic;
	static public function _convert_op_hints_if_present(sess:Dynamic, graph_def:Dynamic, output_tensors:Dynamic, hinted_outputs_nodes:Dynamic):Dynamic;
	/**
		Converts tflite enum type (eg: 0) to tf type (eg: tf.float32).
		
		Args:
		  tflite_enum_type: tflite enum type (eg: 0, that corresponds to float32)
		
		Raises:
		  ValueError: If an invalid tflite enum type is provided.
		
		Returns:
		  tf type (eg: tf.float32)
	**/
	static public function _convert_tflite_enum_type_to_tf_type(tflite_enum_type:Dynamic):Dynamic;
	/**
		Returns `MetaGraphDef` proto.
		
		Optionally writes it to filename.
		
		This function exports the graph, saver, and collection objects into
		`MetaGraphDef` protocol buffer with the intention of it being imported
		at a later time or location to restart training, run inference, or be
		a subgraph.
		
		Args:
		  filename: Optional filename including the path for writing the generated
		    `MetaGraphDef` protocol buffer.
		  meta_info_def: `MetaInfoDef` protocol buffer.
		  graph_def: `GraphDef` protocol buffer.
		  saver_def: `SaverDef` protocol buffer.
		  collection_list: List of string keys to collect.
		  as_text: If `True`, writes the `MetaGraphDef` as an ASCII proto.
		  graph: The `Graph` to export. If `None`, use the default graph.
		  export_scope: Optional `string`. Name scope under which to extract the
		    subgraph. The scope name will be striped from the node definitions for
		    easy import later into new name scopes. If `None`, the whole graph is
		    exported. graph_def and export_scope cannot both be specified.
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during export.
		  clear_extraneous_savers: Remove any Saver-related information from the graph
		    (both Save/Restore ops and SaverDefs) that are not associated with the
		    provided SaverDef.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs. For a detailed guide, see
		    [Stripping Default-Valued Attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		  save_debug_info: If `True`, save the GraphDebugInfo to a separate file,
		    which in the same directory of filename and with `_debug` added before the
		    file extend.
		  **kwargs: Optional keyed arguments.
		
		Returns:
		  A `MetaGraphDef` proto.
		
		Raises:
		  ValueError: When the `GraphDef` is larger than 2GB.
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Exporting/importing meta graphs is not supported unless both `graph_def` and
		`graph` are provided. No graph exists when eager execution is enabled.
		@end_compatibility
	**/
	static public function _export_meta_graph(?filename:Dynamic, ?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic, ?as_text:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?clear_devices:Dynamic, ?clear_extraneous_savers:Dynamic, ?strip_default_attrs:Dynamic, ?save_debug_info:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Modify model input type.
	**/
	static public function _modify_model_input_type(model:Dynamic, ?inference_input_type:Dynamic):Dynamic;
	/**
		Modify model input type per subgraph.
	**/
	static public function _modify_model_input_type_per_subgraph(model:Dynamic, subgraph_index:Dynamic, signature_index:Dynamic, inference_input_type:Dynamic):Dynamic;
	/**
		Modify model output type.
	**/
	static public function _modify_model_output_type(model:Dynamic, ?inference_output_type:Dynamic):Dynamic;
	/**
		Modify model output type per subgraph.
	**/
	static public function _modify_model_output_type_per_subgraph(model:Dynamic, subgraph_index:Dynamic, signature_index:Dynamic, inference_output_type:Dynamic):Dynamic;
	/**
		Finds back to back quantize ops and remove the first quantize op.
	**/
	static public function _remove_redundant_quantize_ops(model:Dynamic):Dynamic;
	/**
		Remove redundant quantize ops per subgraph.
	**/
	static public function _remove_redundant_quantize_ops_per_subgraph(model:Dynamic, subgraph_index:Dynamic, signature_index:Dynamic):Dynamic;
	/**
		Remove tensors from model.
	**/
	static public function _remove_tensors_from_model(model:Dynamic, remove_tensors_idxs:Dynamic):Dynamic;
	/**
		Update the tensors in the SignatureDef's TensorMaps.
	**/
	static public function _update_signature_def_tensors(tensor_maps:Dynamic, map_old_to_new_tensors:Dynamic):Dynamic;
	static public var _xla_computation : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns a method to retrieve the `GraphDebugInfo` from the original graph.
		
		Args:
		  original_graph: The original `Graph` containing all the op stack traces.
		
		Returns:
		  A function which retrieves the stack traces from the original graph and
		  converts them to a `GraphDebugInfo` for a given set of nodes.
	**/
	static public function build_debug_info_func(original_graph:Dynamic):Dynamic;
	/**
		Returns strings representing a C constant array containing `data`.
		
		Args:
		  data: Byte array that will be converted into a C constant.
		  array_name: String to use as the variable name for the constant array.
		  max_line_width: The longest line length, for formatting purposes.
		  include_guard: Name to use for the include guard macro definition.
		  include_path: Optional path to include in the source file.
		  use_tensorflow_license: Whether to include the standard TensorFlow Apache2
		    license in the generated files.
		
		Returns:
		  Text that can be compiled as a C source file to link in the data as a
		  literal array of values.
		  Text that can be used as a C header file to reference the literal array.
	**/
	static public function convert_bytes_to_c_source(data:Dynamic, array_name:Dynamic, ?max_line_width:Dynamic, ?include_guard:Dynamic, ?include_path:Dynamic, ?use_tensorflow_license:Dynamic):Dynamic;
	/**
		Returns a method to retrieve the `GraphDebugInfo` from the original graph.
		
		Args:
		  saved_debug_info: The `GraphDebugInfo` containing all the debug info.
		
		Returns:
		  A function which retrieves the stack traces from the original graph and
		  converts them to a `GraphDebugInfo` for a given set of nodes.
	**/
	static public function convert_debug_info_func(saved_debug_info:Dynamic):Dynamic;
	/**
		Converts a graphdef with LiteOp hints into stub operations. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please follow instructions under https://www.tensorflow.org/lite/convert/operation_fusion for operationfusion in tflite.
		
		This is used to prepare for toco conversion of complex intrinsic usages.
		Note: only one of session or graph_def should be used, not both.
		
		Args:
		  session: A TensorFlow session that contains the graph to convert.
		  graph_def: A graph def that we should convert.
		  write_callback: A function pointer that can be used to write intermediate
		    steps of graph transformation (optional).
		
		Returns:
		  A new graphdef with all ops contained in OpHints being replaced by
		  a single op call with the right parameters.
		Raises:
		  ValueError: If both session and graph_def are provided.
	**/
	static public function convert_op_hints_to_stubs(?session:Dynamic, ?graph_def:Dynamic, ?write_callback:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Find all Ophints output nodes in the graph.
		
		This is used to get all the output nodes those are ophinted, it is important
		for operation like convert_variables_to_constants keep all ophints structure.
		Note: only one of session or graph_def should be used, not both.
		Why this can be useful? Some TensorFlow ops (e.g. bidirectional rnn), can
		generate multiple outputs for unfused subgraph. If not all output nodes are
		consumed, graph optimization can potentially drop the unused nodes and cause
		ophints in an invalid states (due to missing ophinted output nodes). So it's
		important for us to find all those hinted output nodes and make sure they're
		not discarded away.
		
		Args:
		  session: A TensorFlow session that contains the graph to convert.
		  graph_def: A graph def that we should convert.
		
		Returns:
		  A list of OpHints output nodes.
		Raises:
		  ValueError: If both session and graph_def are provided.
	**/
	static public function find_all_hinted_output_nodes(?session:Dynamic, ?graph_def:Dynamic):Dynamic;
	/**
		Returns a frozen GraphDef.
		
		Runs a Grappler pass and freezes a graph with Variables in it. Otherwise the
		existing GraphDef is returned. The Grappler pass is only run on models that
		are frozen in order to inline the functions in the graph.
		If OpHints is present, it will try to convert the OpHint graph.
		
		Args:
		  sess: TensorFlow Session.
		  input_tensors: List of input tensors.
		  output_tensors: List of output tensors (only .name is used from this).
		
		Returns:
		  Frozen GraphDef.
	**/
	static public function freeze_graph(sess:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic):Dynamic;
	/**
		Returns the debug info for the original nodes in the `converted_graph`.
		
		Args:
		  nodes_to_debug_info_func: The method to collect the op debug info for the
		    nodes.
		  converted_graph: A `GraphDef` after optimization and transformation.
		
		Returns:
		  `GraphDebugInfo` for all the original nodes in `converted_graph`.
	**/
	static public function get_debug_info(nodes_to_debug_info_func:Dynamic, converted_graph:Dynamic):Dynamic;
	/**
		Returns the quantize op idx.
	**/
	static public function get_dequantize_opcode_idx(model:Dynamic):Dynamic;
	/**
		Creates a tf.compat.v1.ConfigProto for configuring Grappler.
		
		Args:
		  optimizers_list: List of strings that represents the list of optimizers.
		
		Returns:
		  tf.ConfigProto.
	**/
	static public function get_grappler_config(optimizers_list:Dynamic):Dynamic;
	/**
		Returns the quantize op idx.
	**/
	static public function get_quantize_opcode_idx(model:Dynamic):Dynamic;
	/**
		Returns name of the input tensor.
		
		Args:
		  tensor: tf.Tensor
		
		Returns:
		  str
	**/
	static public function get_tensor_name(tensor:Dynamic):Dynamic;
	/**
		Gets the Tensors associated with the `tensor_names` in the provided graph.
		
		Args:
		  graph: TensorFlow Graph.
		  tensor_names: List of strings that represent names of tensors in the graph.
		
		Returns:
		  A list of Tensor objects in the same order the names are provided.
		
		Raises:
		  ValueError:
		    tensor_names contains an invalid tensor name.
	**/
	static public function get_tensors_from_tensor_names(graph:Dynamic, tensor_names:Dynamic):Dynamic;
	/**
		Converts tf.dtype (eg: tf.float32) to str (eg: "tf.float32").
	**/
	static public function get_tf_type_name(tf_type:Dynamic):Dynamic;
	/**
		Determines if the graph is frozen.
		
		Determines if a graph has previously been frozen by checking for any
		operations of type Variable*. If variables are found, the graph is not frozen.
		
		Args:
		  sess: TensorFlow Session.
		
		Returns:
		  Bool.
	**/
	static public function is_frozen_graph(sess:Dynamic):Dynamic;
	/**
		Inspect model to get its input signature.
		
		The model's input signature is a list with a single (possibly-nested) object.
		This is due to the Keras-enforced restriction that tensor inputs must be
		passed in as the first argument.
		
		For example, a model with input {'feature1': <Tensor>, 'feature2': <Tensor>}
		will have input signature: [{'feature1': TensorSpec, 'feature2': TensorSpec}]
		
		Args:
		  model: Keras Model object.
		  keep_original_batch_size: A boolean indicating whether we want to keep using
		    the original batch size or set it to None. Default is `False`, which means
		    that the batch dim of the returned input signature will always be set to
		    `None`.
		
		Returns:
		  A list containing either a single TensorSpec or an object with nested
		  TensorSpecs. This list does not contain the `training` argument.
	**/
	static public function model_input_signature(model:Dynamic, ?keep_original_batch_size:Dynamic):Dynamic;
	/**
		Modify the input/output type of a tflite model.
		
		Args:
		  model: A tflite model.
		  inference_input_type: tf.DType representing modified input type.
		    (default tf.float32. If model input is int8 quantized, it must be in
		    {tf.float32, tf.int8,tf.uint8}, else if model input is int16 quantized,
		    it must be in {tf.float32, tf.int16}, else it must be tf.float32)
		  inference_output_type: tf.DType representing modified output type.
		    (default tf.float32. If model output is int8 dequantized, it must be in
		    {tf.float32, tf.int8,tf.uint8}, else if model output is int16 dequantized,
		    it must be in {tf.float32, tf.int16}, else it must be tf.float32)
		Returns:
		  A tflite model with modified input/output type.
		
		Raises:
		  ValueError: If `inference_input_type`/`inference_output_type` is unsupported
		    or a supported integer type is specified for a model whose input/output is
		    not quantized/dequantized.
		  RuntimeError: If the modification was unsuccessful.
	**/
	static public function modify_model_io_type(model:Dynamic, ?inference_input_type:Dynamic, ?inference_output_type:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Apply standard TensorFlow optimizations to the graph_def.
		
		Args:
		  graph_def: Frozen GraphDef to be optimized.
		  input_arrays: List of arrays that are considered inputs of the graph.
		  output_arrays: List of arrays that are considered outputs of the graph.
		  config: tf.ConfigProto.
		  graph: TensorFlow Graph. Required when Eager mode is enabled. (default None)
		
		Returns:
		  A new, optimized GraphDef.
	**/
	static public function run_graph_optimizations(graph_def:Dynamic, input_arrays:Dynamic, output_arrays:Dynamic, config:Dynamic, ?graph:Dynamic):Dynamic;
	/**
		Sets Tensor shape for each tensor if the shape is defined.
		
		Args:
		  tensors: TensorFlow ops.Tensor.
		  shapes: Dict of strings representing input tensor names to list of
		    integers representing input shapes (e.g., {"foo": : [1, 16, 16, 3]}).
		
		Raises:
		  ValueError:
		    `shapes` contains an invalid tensor.
		    `shapes` contains an invalid shape for a valid tensor.
	**/
	static public function set_tensor_shapes(tensors:Dynamic, shapes:Dynamic):Dynamic;
	/**
		Trace the model call to create a tf.function for exporting a Keras model.
		
		Args:
		  model: A Keras model.
		  input_signature: optional, a list of tf.TensorSpec objects specifying the
		    inputs to the model.
		
		Returns:
		  A tf.function wrapping the model's call function with input signatures set.
		
		Raises:
		  ValueError: if input signature cannot be inferred from the model.
	**/
	static public function trace_model_call(model:Dynamic, ?input_signature:Dynamic):Dynamic;
}