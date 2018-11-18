/* This file is generated, do not edit! */
package tensorflow.contrib.lite.python.lite;
@:pythonImport("tensorflow.contrib.lite.python.lite") extern class Lite_Module {
	static public var PY3 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a frozen GraphDef.
		
		Freezes a graph with Variables in it. Otherwise the existing GraphDef is
		returned.
		
		Args:
		  sess: TensorFlow Session.
		  output_tensors: List of output tensors (only .name is used from this).
		
		Returns:
		  Frozen GraphDef.
	**/
	static public function _freeze_graph(sess:Dynamic, output_tensors:Dynamic):Dynamic;
	/**
		Converts a SavedModel to a frozen graph.
		
		Args:
		  saved_model_dir: SavedModel directory to convert.
		  input_arrays: List of input tensors to freeze graph with. Uses input arrays
		    from SignatureDef when none are provided.
		  input_shapes: Dict of strings representing input tensor names to list of
		    integers representing input shapes (e.g., {"foo": : [1, 16, 16, 3]}).
		    Automatically determined when input shapes is None (e.g., {"foo" : None}).
		  output_arrays: List of output tensors to freeze graph with. Uses output
		    arrays from SignatureDef when none are provided.
		  tag_set: Set of tags identifying the MetaGraphDef within the SavedModel to
		    analyze. All tags in the tag set must be present.
		  signature_key: Key identifying SignatureDef containing inputs and outputs.
		
		Returns:
		  frozen_graph_def: Frozen GraphDef.
		  in_tensors: List of input tensors for the graph.
		  out_tensors: List of output tensors for the graph.
		
		Raises:
		  ValueError:
		    SavedModel doesn't contain a MetaGraphDef identified by tag_set.
		    signature_key is not in the MetaGraphDef.
		    assets/ directory is in the MetaGraphDef.
		    input_shapes does not match the length of input_arrays.
		    input_arrays or output_arrays are not valid.
	**/
	static public function _freeze_saved_model(saved_model_dir:Dynamic, input_arrays:Dynamic, input_shapes:Dynamic, output_arrays:Dynamic, tag_set:Dynamic, signature_key:Dynamic):Dynamic;
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
	static public function _get_tensors_from_tensor_names(graph:Dynamic, tensor_names:Dynamic):Dynamic;
	/**
		Imports the graph from `graph_def` into the current default `Graph`. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		Please file an issue at https://github.com/tensorflow/tensorflow/issues if you depend on this feature.
		
		This function provides a way to import a serialized TensorFlow
		[`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto)
		protocol buffer, and extract individual objects in the `GraphDef` as
		`tf.Tensor` and `tf.Operation` objects. Once extracted,
		these objects are placed into the current default `Graph`. See
		`tf.Graph.as_graph_def` for a way to create a `GraphDef`
		proto.
		
		Args:
		  graph_def: A `GraphDef` proto containing operations to be imported into
		    the default graph.
		  input_map: A dictionary mapping input names (as strings) in `graph_def`
		    to `Tensor` objects. The values of the named input tensors in the
		    imported graph will be re-mapped to the respective `Tensor` values.
		  return_elements: A list of strings containing operation names in
		    `graph_def` that will be returned as `Operation` objects; and/or
		    tensor names in `graph_def` that will be returned as `Tensor` objects.
		  name: (Optional.) A prefix that will be prepended to the names in
		    `graph_def`. Note that this does not apply to imported function names.
		    Defaults to `"import"`.
		  op_dict: (Optional.) Deprecated, do not use.
		  producer_op_list: (Optional.) An `OpList` proto with the (possibly stripped)
		    list of `OpDef`s used by the producer of the graph. If provided,
		    unrecognized attrs for ops in `graph_def` that have their default value
		    according to `producer_op_list` will be removed. This will allow some more
		    `GraphDef`s produced by later binaries to be accepted by earlier binaries.
		
		Returns:
		  A list of `Operation` and/or `Tensor` objects from the imported graph,
		  corresponding to the names in `return_elements`.
		
		Raises:
		  TypeError: If `graph_def` is not a `GraphDef` proto,
		    `input_map` is not a dictionary mapping strings to `Tensor` objects,
		    or `return_elements` is not a list of strings.
		  ValueError: If `input_map`, or `return_elements` contains names that
		    do not appear in `graph_def`, or `graph_def` is not well-formed (e.g.
		    it refers to an unknown tensor).
	**/
	static public function _import_graph_def(graph_def:Dynamic, ?input_map:Dynamic, ?return_elements:Dynamic, ?name:Dynamic, ?op_dict:Dynamic, ?producer_op_list:Dynamic):Dynamic;
	/**
		Determines if the graph is frozen.
		
		Determines if a graph has previously been frozen by checking for any
		operations of type Variable*. If variables are found, the graph is not frozen.
		
		Args:
		  sess: TensorFlow Session.
		
		Returns:
		  Bool.
	**/
	static public function _is_frozen_graph(sess:Dynamic):Dynamic;
	/**
		Sets Tensor shape for each tensor if the shape is defined.
		
		Args:
		  tensors: TensorFlow ops.Tensor.
		  shapes: Dict of strings representing input tensor names to list of
		    integers representing input shapes (e.g., {"foo": : [1, 16, 16, 3]}).
	**/
	static public function _set_tensor_shapes(tensors:Dynamic, shapes:Dynamic):Dynamic;
	static public function _tensor_name(x:Dynamic):Dynamic;
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
		    into TensorFlow and when `input_tensors` is None. (default None)
		  output_arrays: List of output tensors to freeze graph with. Use only when
		    graph cannot be loaded into TensorFlow and when `output_tensors` is None.
		    (default None)
		  *args: See `build_toco_convert_protos`,
		  **kwargs: See `build_toco_convert_protos`.
		
		Returns:
		  The converted data. For example if TFLite was the destination, then
		  this will be a tflite flatbuffer in a bytes array.
		
		Raises:
		  Defined in `build_toco_convert_protos`.
	**/
	static public function _toco_convert_graph_def(input_data:Dynamic, input_arrays_with_shape:Dynamic, output_arrays:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		"Convert a model using TOCO.
		
		Typically this function is used to convert from TensorFlow GraphDef to TFLite.
		Conversion can be customized by providing arguments that are forwarded to
		`build_toco_convert_protos` (see documentation for details).
		
		Args:
		  input_data: Input data (i.e. often `sess.graph_def`),
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.get_shape()` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		  *args: See `build_toco_convert_protos`,
		  **kwargs: See `build_toco_convert_protos`.
		
		Returns:
		  The converted data. For example if TFLite was the destination, then
		  this will be a tflite flatbuffer in a bytes array.
		
		Raises:
		  Defined in `build_toco_convert_protos`.
	**/
	static public function _toco_convert_impl(input_data:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Builds protocol buffers describing a conversion of a model using TOCO.
		
		Typically this is to convert from TensorFlow GraphDef to TFLite, in which
		case the default `input_format` and `output_format` are sufficient.
		
		Args:
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.get_shape()` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		  inference_type: Target data type of real-number arrays in the output file.
		    Must be `{FLOAT, QUANTIZED_UINT8}`.  (default FLOAT)
		  inference_input_type: Target data type of real-number input arrays. Allows
		    for a different type for input arrays in the case of quantization.
		    Must be `{FLOAT, QUANTIZED_UINT8}`. (default `inference_type`)
		  input_format: Type of data to read Currently must be
		    `{TENSORFLOW_GRAPHDEF}`. (default TENSORFLOW_GRAPHDEF)
		  input_shapes: Input array shape. It needs to be a list of the same length
		    as `input_tensors`, or None. (default None)
		  output_format: Output file format. Currently must be `{TFLITE,
		    GRAPHVIZ_DOT}`. (default TFLITE)
		  quantized_input_stats: List of tuples of floats representing the mean and
		    standard deviation. Each tuple maps to the corresponding input tensor.
		    Only need if `inference_input_type` is `QUANTIZED_UINT8`.
		    real_input_value = (quantized_input_value - mean_value) / std_dev_value.
		    (default None)
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
		    these to the TensorFlow Lite runtime with a custom resolver.
		    (default False)
		  change_concat_input_ranges: Boolean to change behavior of min/max ranges for
		    inputs and outputs of the concat operator for quantized models. Changes
		    the ranges of concat operator overlap when true. (default False)
		  post_training_quantize: Boolean indicating whether to quantize the weights
		    of the converted float model. Model size will be reduced and there will be
		    latency improvements (at the cost of accuracy).
		    (default False)
		  dump_graphviz_dir: Full filepath of folder to dump the graphs at various
		    stages of processing GraphViz .dot files. Preferred over
		    --output_format=GRAPHVIZ_DOT in order to keep the requirements of the
		    output file. (default None)
		  dump_graphviz_video: Boolean indicating whether to dump the graph after
		    every graph transformation. (default False)
		  converter_mode: Experimental flag, subject to change. ConverterMode
		    indicating which converter to use. (default ConverterMode.DEFAULT)
		
		Returns:
		  model_flags, toco_flags: two protocol buffers describing the conversion
		  process.
		
		Raises:
		  ValueError: If the input tensor type is unknown
		  RuntimeError: If TOCO fails to convert (in which case the runtime error's
		    error text will contain the TOCO error log)
	**/
	static public function build_toco_convert_protos(input_tensors:Dynamic, output_tensors:Dynamic, ?inference_type:Dynamic, ?inference_input_type:Dynamic, ?input_format:Dynamic, ?input_shapes:Dynamic, ?output_format:Dynamic, ?quantized_input_stats:Dynamic, ?default_ranges_stats:Dynamic, ?drop_control_dependency:Dynamic, ?reorder_across_fake_quant:Dynamic, ?allow_custom_ops:Dynamic, ?change_concat_input_ranges:Dynamic, ?post_training_quantize:Dynamic, ?dump_graphviz_dir:Dynamic, ?dump_graphviz_video:Dynamic, ?converter_mode:Dynamic):Dynamic;
	/**
		Converts a graphdef with LiteOp hints into stub operations.
		
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
	static public var print_function : Dynamic;
	/**
		Convert a model using TOCO. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `lite.TFLiteConverter` instead.
		
		Typically this function is used to convert from TensorFlow GraphDef to TFLite.
		Conversion can be customized by providing arguments that are forwarded to
		`build_toco_convert_protos` (see documentation for details). This function has
		been deprecated. Please use `lite.TFLiteConverter` instead.
		
		Args:
		  input_data: Input data (i.e. often `sess.graph_def`),
		  input_tensors: List of input tensors. Type and shape are computed using
		    `foo.get_shape()` and `foo.dtype`.
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
		Convert `input_data_str` according to model and toco parameters.
		
		Unless you know what you are doing consider using
		the more friendly `tf.contrib.lite.toco_convert`.
		
		Args:
		  model_flags_str: Serialized proto describing model properties, see
		    `toco/model_flags.proto`.
		  toco_flags_str: Serialized proto describing conversion properties, see
		    `toco/toco_flags.proto`.
		  input_data_str: Input data in serialized form (e.g. a graphdef is common)
		Returns:
		  Converted model in serialized form (e.g. a TFLITE model is common).
		Raises:
		  RuntimeError: When conversion fails, an exception is raised with the error
		    message embedded.
	**/
	static public function toco_convert_protos(model_flags_str:Dynamic, toco_flags_str:Dynamic, input_data_str:Dynamic):Dynamic;
}