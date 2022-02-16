/* This file is generated, do not edit! */
package tensorflow.lite.python.convert;
@:pythonImport("tensorflow.lite.python.convert") extern class Convert_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks if the `input_stats` flag is required for conversion.
		
		Args:
		  toco_flags: A protocol buffer describing the conversion process.
		
		Returns:
		  True, if the `inference_type` or the `inference_input_type` is a quantized
		  type and it is not post training quantization, else False.
	**/
	static public function _requires_input_stats(toco_flags:Dynamic):Dynamic;
	/**
		Convert `input_data_str` using TOCO converter binary.
		
		Args:
		  model_flags_str: Serialized proto describing model properties, see
		    `toco/model_flags.proto`.
		  toco_flags_str: Serialized proto describing conversion properties, see
		    `toco/toco_flags.proto`.
		  input_data_str: Input data in serialized form (e.g. a graphdef is common)
		  debug_info_str: Serialized `GraphDebugInfo` proto describing logging
		    information. (default None)
		
		Returns:
		  Converted model in serialized form (e.g. a TFLITE model is common).
		Raises:
		  ConverterError: When cannot find the toco binary.
		  RuntimeError: When conversion fails, an exception is raised with the error
		    message embedded.
	**/
	static public function _run_toco_binary(model_flags_str:Dynamic, toco_flags_str:Dynamic, input_data_str:Dynamic, ?debug_info_str:Dynamic):Dynamic;
	static public function _tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _toco_from_proto_bin : Dynamic;
	static public function _try_convert_to_unicode(output:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Builds protocol buffers describing a conversion of a model using TOCO.
		
		Typically this is to convert from TensorFlow GraphDef to TFLite, in which
		case the default `input_format` and `output_format` are sufficient.
		
		Args:
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.shape` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		  inference_type: Data type of numeric arrays, excluding the input layer.
		    (default tf.float32, must be in {tf.float32, tf.int8, tf.uint8})
		  inference_input_type: Data type of the numeric arrays in the input layer. If
		    `inference_input_type` is in {tf.int8, tf.uint8}, then
		    `quantized_input_stats` must be provided. (default is the value assigned
		    to `inference_type`, must be in {tf.float32, tf.int8, tf.uint8})
		  input_format: Type of data to read. (default TENSORFLOW_GRAPHDEF, must be in
		    {TENSORFLOW_GRAPHDEF})
		  input_shapes: Input array shape. (default None, must be None or a list of
		    the same length as `input_tensors`.)
		  output_format: Output file format. (default TFLITE, must be in {TFLITE,
		    GRAPHVIZ_DOT})
		  quantized_input_stats: Map of input tensor names to a tuple of floats
		    representing the mean and standard deviation of the training data.
		    (e.g., {"foo" : (0., 1.)}). Required if `inference_input_type` is tf.int8
		      or tf.uint8. (default None)
		  default_ranges_stats: Tuple of integers representing (min, max) range values
		    for all arrays without a specified range. Intended for experimenting with
		    quantization via "dummy quantization". (default None)
		  drop_control_dependency: Boolean indicating whether to drop control
		    dependencies silently. This is due to TFLite not supporting control
		    dependencies. (default True)
		  reorder_across_fake_quant: Boolean indicating whether to reorder FakeQuant
		    nodes in unexpected locations. Used when the location of the FakeQuant
		    nodes is preventing graph transformations necessary to convert the graph.
		    Results in a graph that differs from the quantized training graph,
		    potentially causing differing arithmetic behavior. (default False)
		  allow_custom_ops: Boolean indicating whether to allow custom operations.
		    When false any unknown operation is an error. When true, custom ops are
		    created for any op that is unknown. The developer will need to provide
		    these to the TensorFlow Lite runtime with a custom resolver. (default
		    False)
		  change_concat_input_ranges: Boolean to change behavior of min/max ranges for
		    inputs and outputs of the concat operator for quantized models. Changes
		    the ranges of concat operator overlap when true. (default False)
		  post_training_quantize: Boolean indicating whether to quantize the weights
		    of the converted float model. Model size will be reduced and there will be
		    latency improvements (at the cost of accuracy). (default False)
		  quantize_to_float16: Boolean indicating whether to convert float buffers to
		    float16. (default False)
		  dump_graphviz_dir: Full filepath of folder to dump the graphs at various
		    stages of processing GraphViz .dot files. Preferred over
		    --output_format=GRAPHVIZ_DOT in order to keep the requirements of the
		    output file. (default None)
		  dump_graphviz_video: Boolean indicating whether to dump the graph after
		    every graph transformation. (default False)
		  target_ops: Experimental flag, subject to change. Set of OpsSet options
		    indicating which converter to use. (default set([OpsSet.TFLITE_BUILTINS]))
		  allow_nonexistent_arrays: Allow specifying array names that don't exist or
		    are unused in the final graph. (default False)
		  debug_info: `GraphDebugInfo` proto containing the stack traces for the
		    original nodes referred by the converted graph.
		  conversion_summary_dir: A string, the path to the generated conversion logs.
		  saved_model_dir: Filepath of the saved model to be converted. This value
		    will be non-empty only when the saved model import path will be used.
		    Otherwises, the graph def-based conversion will be processed.
		  saved_model_version: SavedModel file format version of The saved model file
		    to be converted. This value will be set only when the SavedModel import
		    path will be used.
		  saved_model_tags: Set of string saved model tags, formatted in the
		    comma-separated value. This value will be set only when the SavedModel
		    import path will be used.
		  saved_model_exported_names: Names to be exported (default: export all) when
		    the saved model import path is on. This value will be set only when the
		    SavedModel import path will be used.
		  select_user_tf_ops: List of user's defined TensorFlow ops need to be
		    supported in the TensorFlow Lite runtime. These ops will be supported as
		    select TensorFlow ops.
		  allow_all_select_tf_ops: If True, automatically add all TF ops (including
		    custom TF ops) to the converted model as flex ops.
		  unfold_batchmatmul: Whether to unfold tf.BatchMatMul to a set of
		    tfl.fully_connected ops. If not, translate to tfl.batch_matmul.
		  lower_tensor_list_ops: Whether to lower tensor list ops to builtin ops. If
		    not, use Flex tensor list ops.
		  default_to_single_batch_in_tensor_list_ops: Whether to force to use batch
		    size one when the tensor list ops has the unspecified batch size.
		  accumulation_type: Data type of the accumulators in quantized inference.
		    Typically used for float16 quantization and is either fp16 or fp32.
		  allow_bfloat16: Whether the converted model supports reduced precision
		    inference with the bfloat16 type.
		  unfold_large_splat_constant: Whether to unfold large splat constant tensors
		    in the flatbuffer model to reduce size.
		  supported_backends: List of TFLite backends which needs to check
		    compatibility.
		  disable_per_channel_quantization: Disable per-channel quantized weights for
		    dynamic range quantization. Only per-tensor quantization will be used.
		
		Returns:
		  model_flags, toco_flags, debug_info: three protocol buffers describing the
		    conversion process and debug information.
		
		Raises:
		  ValueError:
		    If the input tensor type is unknown
		    Missing mean_values or std_dev_values
		  RuntimeError: If TOCO fails to convert (in which case the runtime error's
		    error text will contain the TOCO error log)
	**/
	static public function build_toco_convert_protos(input_tensors:Dynamic, output_tensors:Dynamic, ?inference_type:Dynamic, ?inference_input_type:Dynamic, ?input_format:Dynamic, ?input_shapes:Dynamic, ?output_format:Dynamic, ?quantized_input_stats:Dynamic, ?default_ranges_stats:Dynamic, ?drop_control_dependency:Dynamic, ?reorder_across_fake_quant:Dynamic, ?allow_custom_ops:Dynamic, ?change_concat_input_ranges:Dynamic, ?post_training_quantize:Dynamic, ?quantize_to_float16:Dynamic, ?dump_graphviz_dir:Dynamic, ?dump_graphviz_video:Dynamic, ?target_ops:Dynamic, ?allow_nonexistent_arrays:Dynamic, ?debug_info:Dynamic, ?conversion_summary_dir:Dynamic, ?saved_model_dir:Dynamic, ?saved_model_version:Dynamic, ?saved_model_tags:Dynamic, ?saved_model_exported_names:Dynamic, ?select_user_tf_ops:Dynamic, ?allow_all_select_tf_ops:Dynamic, ?unfold_batchmatmul:Dynamic, ?lower_tensor_list_ops:Dynamic, ?default_to_single_batch_in_tensor_list_ops:Dynamic, ?accumulation_type:Dynamic, ?allow_bfloat16:Dynamic, ?unfold_large_splat_constant:Dynamic, ?supported_backends:Dynamic, ?disable_per_channel_quantization:Dynamic):Dynamic;
	/**
		Build the TOCO flags object from params.
	**/
	static public function build_toco_flags(?inference_type:Dynamic, ?inference_input_type:Dynamic, ?input_format:Dynamic, ?output_format:Dynamic, ?default_ranges_stats:Dynamic, ?drop_control_dependency:Dynamic, ?reorder_across_fake_quant:Dynamic, ?allow_custom_ops:Dynamic, ?post_training_quantize:Dynamic, ?quantize_to_float16:Dynamic, ?dump_graphviz_dir:Dynamic, ?dump_graphviz_video:Dynamic, ?target_ops:Dynamic, ?conversion_summary_dir:Dynamic, ?select_user_tf_ops:Dynamic, ?allow_all_select_tf_ops:Dynamic, ?enable_tflite_resource_variables:Dynamic, ?unfold_batchmatmul:Dynamic, ?lower_tensor_list_ops:Dynamic, ?default_to_single_batch_in_tensor_list_ops:Dynamic, ?accumulation_type:Dynamic, ?allow_bfloat16:Dynamic, ?unfold_large_splat_constant:Dynamic, ?supported_backends:Dynamic, ?disable_per_channel_quantization:Dynamic, ?_:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert inference type from tf type to tflite type.
		
		Args:
		  tf_type: TensorFlow type.
		  usage: Text describing the reason for invoking this function.
		
		Raises:
		  ValueError: If `tf_type` is unsupported.
		
		Returns:
		  tflite_type: TFLite type. Refer to lite/toco/types.proto.
	**/
	static public function convert_inference_tf_type_to_tflite_type(tf_type:Dynamic, ?usage:Dynamic):Dynamic;
	/**
		Converts a Jax hlo-based model using TF Lite converter.
	**/
	static public function convert_jax_hlo(input_content:Dynamic, input_names:Dynamic, is_proto_format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The decorator to identify converter component and subcomponent.
		
		Args:
		  component: Converter component name.
		  subcomponent: Converter subcomponent name.
		
		Returns:
		  Forward the result from the wrapped function.
		
		Raises:
		  ValueError: if component and subcomponent name is not valid.
	**/
	static public function convert_phase(component:Dynamic, ?subcomponent:Dynamic):Dynamic;
	/**
		Converts a saved_model using TF Lite converter.
	**/
	static public function convert_saved_model(?saved_model_dir:Dynamic, ?saved_model_version:Dynamic, ?saved_model_tags:Dynamic, ?saved_model_exported_names:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert tensor type from tf type to tflite type.
		
		Args:
		  tf_type: TensorFlow type.
		  usage: Text describing the reason for invoking this function.
		
		Raises:
		  ValueError: If `tf_type` is unsupported.
		
		Returns:
		  tflite_type: TFLite type. Refer to lite/toco/types.proto.
	**/
	static public function convert_tensor_tf_type_to_tflite_type(tf_type:Dynamic, ?usage:Dynamic):Dynamic;
	/**
		"Generates a new model byte array after deduplicating readonly buffers.
		
		This function should be invoked after the model optimization toolkit. The
		model optimization toolkit assumes that each tensor object owns its each
		buffer separately.
		
		Args:
		  tflite_model: TFLite flatbuffer in a byte array to be deduplicated.
		
		Returns:
		  TFLite flatbuffer in a bytes array, processed with the deduplication method.
	**/
	static public function deduplicate_readonly_buffers(tflite_model:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Quantize `input_data_str` with calibration results.
		
		Args:
		  input_data_str: Input data in serialized form (e.g. a TFLITE model with
		    calibration results).
		  disable_per_channel: Bool indicating whether to do per-channel or per-tensor
		    quantization
		  fully_quantize: Bool indicating whether to fully quantize the model. Besides
		    model body, the input/output will be quantized as well.
		  inference_type: Data type for the activations. The default value is int8.
		  input_data_type: Data type for the inputs. The default value is float32.
		  output_data_type: Data type for the outputs. The default value is float32.
		  enable_numeric_verify: Experimental. Subject to change. Bool indicating
		    whether to add NumericVerify ops into the debug mode quantized model.
		  enable_whole_model_verify: Experimental. Subject to change. Bool indicating
		  whether to add verification for layer by layer, or on whole model. When
		  disabled (per-layer) float and quantized ops will be run from same input
		  (output of previous quantized layer). When enabled, float and quantized ops
		  will run with respective float and quantized output of previous ops.
		  denylisted_ops: Experimental. Subject to change. Set of ops to denylist.
		  denylisted_nodes: Experimental. Subject to change. Set of notes to
		    denylist.
		Returns:
		  Quantized model in serialized form (e.g. a TFLITE model) with floating-point
		  inputs and outputs.
	**/
	static public function mlir_quantize(input_data_str:Dynamic, ?disable_per_channel:Dynamic, ?fully_quantize:Dynamic, ?inference_type:Dynamic, ?input_data_type:Dynamic, ?output_data_type:Dynamic, ?enable_numeric_verify:Dynamic, ?enable_whole_model_verify:Dynamic, ?denylisted_ops:Dynamic, ?denylisted_nodes:Dynamic):Dynamic;
	/**
		Sparsify `input_data_str` to encode sparse tensor with proper format.
		
		Args:
		  input_data_str: Input data in serialized form (e.g. a TFLITE model).
		
		Returns:
		  Sparsified model in serialized form (e.g. a TFLITE model).
	**/
	static public function mlir_sparsify(input_data_str:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Register the given custom opdefs to the TensorFlow global op registry.
		
		Args:
		  custom_opdefs_list: String representing the custom ops OpDefs that are
		    included in the GraphDef.
		
		Returns:
		  True if the registration is successfully completed.
	**/
	static public function register_custom_opdefs(custom_opdefs_list:Dynamic):Dynamic;
	/**
		Convert a model using TOCO. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `lite.TFLiteConverter` instead.
		
		Typically this function is used to convert from TensorFlow GraphDef to TFLite.
		Conversion can be customized by providing arguments that are forwarded to
		`build_toco_convert_protos` (see documentation for details). This function has
		been deprecated. Please use `tf.lite.TFLiteConverter` instead.
		
		Args:
		  input_data: Input data (i.e. often `sess.graph_def`).
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.shape` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		  *args: See `build_toco_convert_protos`,
		  **kwargs: See `build_toco_convert_protos`.
		
		Returns:
		  The converted data. For example if TFLite was the destination, then
		  this will be a tflite flatbuffer in a bytes array.
		
		Raises:
		  Defined in `build_toco_convert_protos`.
	**/
	static public function toco_convert(input_data:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		"Convert a model using TOCO.
		
		This function is used to convert GraphDefs that cannot be loaded into
		TensorFlow to TFLite. Conversion can be customized by providing arguments
		that are forwarded to `build_toco_convert_protos` (see documentation for
		details).
		
		Args:
		  input_data: Input data (i.e. often `sess.graph_def`),
		  input_arrays_with_shape: Tuple of strings representing input tensor names
		    and list of integers representing input shapes
		    (e.g., [("foo" : [1, 16, 16, 3])]). Use only when graph cannot be loaded
		      into TensorFlow and when `input_tensors` is None.
		  output_arrays: List of output tensors to freeze graph with. Use only when
		    graph cannot be loaded into TensorFlow and when `output_tensors` is None.
		  enable_mlir_converter: Enables MLIR-based conversion instead of TOCO
		    conversion.
		  control_output_arrays: Control output node names. This is used when
		    converting a Graph with no output tensors. For example, if the
		    graph's last operation is a Print op, just specify that op's name in
		    this field. This can be used together with the `output_arrays`
		    parameter.
		  *args: See `build_toco_convert_protos`,
		  **kwargs: See `build_toco_convert_protos`.
		
		Returns:
		  The converted data. For example if TFLite was the destination, then
		  this will be a tflite flatbuffer in a bytes array.
		
		Raises:
		  Defined in `build_toco_convert_protos`.
	**/
	static public function toco_convert_graph_def(input_data:Dynamic, input_arrays_with_shape:Dynamic, output_arrays:Dynamic, enable_mlir_converter:Dynamic, control_output_arrays:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		"Convert a model using TOCO.
		
		Typically this function is used to convert from TensorFlow GraphDef to TFLite.
		Conversion can be customized by providing arguments that are forwarded to
		`build_toco_convert_protos` (see documentation for details).
		
		Args:
		  input_data: Input data (i.e. often `sess.graph_def`),
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.shape` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		  enable_mlir_converter: Enables MLIR-based conversion instead of TOCO
		    conversion.
		  *args: See `build_toco_convert_protos`,
		  **kwargs: See `build_toco_convert_protos`.
		
		Returns:
		  The converted data. For example if TFLite was the destination, then
		  this will be a tflite flatbuffer in a bytes array.
		
		Raises:
		  Defined in `build_toco_convert_protos`.
	**/
	static public function toco_convert_impl(input_data:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic, enable_mlir_converter:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert `input_data_str` according to model and toco parameters.
		
		Unless you know what you are doing consider using
		the more friendly `tf.compat.v1.lite.toco_convert`.
		
		Args:
		  model_flags_str: Serialized proto describing model properties, see
		    `toco/model_flags.proto`.
		  toco_flags_str: Serialized proto describing conversion properties, see
		    `toco/toco_flags.proto`.
		  input_data_str: Input data in serialized form (e.g. a graphdef is common, or
		    it can be hlo text or proto)
		  debug_info_str: Serialized `GraphDebugInfo` proto describing logging
		    information. (default None)
		  enable_mlir_converter: Enables MLIR-based conversion instead of the default
		    TOCO conversion. (default False)
		
		Returns:
		  Converted model in serialized form (e.g. a TFLITE model is common).
		Raises:
		  ConverterError: When conversion fails in TFLiteConverter, usually due to
		    ops not being supported.
		  RuntimeError: When conversion fails, an exception is raised with the error
		    message embedded.
	**/
	static public function toco_convert_protos(model_flags_str:Dynamic, toco_flags_str:Dynamic, input_data_str:Dynamic, ?debug_info_str:Dynamic, ?enable_mlir_converter:Dynamic):Dynamic;
}