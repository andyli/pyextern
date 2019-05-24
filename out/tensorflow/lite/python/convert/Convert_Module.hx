/* This file is generated, do not edit! */
package tensorflow.lite.python.convert;
@:pythonImport("tensorflow.lite.python.convert") extern class Convert_Module {
	static public var _MAP_TF_TO_TFLITE_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		    `foo.get_shape()` and `foo.dtype`.
		  output_tensors: List of output tensors (only .name is used from this).
		  inference_type: Target data type of real-number arrays in the output file.
		    Must be `{tf.float32, tf.uint8}`.  (default tf.float32)
		  inference_input_type: Target data type of real-number input arrays. Allows
		    for a different type for input arrays in the case of quantization.
		    Must be `{tf.float32, tf.uint8}`. (default `inference_type`)
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
		  target_ops: Experimental flag, subject to change. Set of OpsSet
		    options indicating which converter to use.
		    (default set([OpsSet.TFLITE_BUILTINS]))
		  allow_nonexistent_arrays: Allow specifying array names that don't exist
		    or are unused in the final graph. (default False)
		
		Returns:
		  model_flags, toco_flags: two protocol buffers describing the conversion
		  process.
		
		Raises:
		  ValueError:
		    If the input tensor type is unknown
		    Missing mean_values or std_dev_values
		  RuntimeError: If TOCO fails to convert (in which case the runtime error's
		    error text will contain the TOCO error log)
	**/
	static public function build_toco_convert_protos(input_tensors:Dynamic, output_tensors:Dynamic, ?inference_type:Dynamic, ?inference_input_type:Dynamic, ?input_format:Dynamic, ?input_shapes:Dynamic, ?output_format:Dynamic, ?quantized_input_stats:Dynamic, ?default_ranges_stats:Dynamic, ?drop_control_dependency:Dynamic, ?reorder_across_fake_quant:Dynamic, ?allow_custom_ops:Dynamic, ?change_concat_input_ranges:Dynamic, ?post_training_quantize:Dynamic, ?dump_graphviz_dir:Dynamic, ?dump_graphviz_video:Dynamic, ?target_ops:Dynamic, ?allow_nonexistent_arrays:Dynamic):Dynamic;
	/**
		Converts tf.dtype to TFLite proto type.
		
		Args:
		  tf_dtype: tf.dtype
		
		Raises:
		  ValueError: Unsupported tf.dtype.
		
		Returns:
		  types_flag_pb2.
	**/
	static public function convert_dtype_to_tflite_type(tf_dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tensor_name(x:Dynamic):Dynamic;
	/**
		Convert a model using TOCO. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
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
	static public function toco_convert_graph_def(input_data:Dynamic, input_arrays_with_shape:Dynamic, output_arrays:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function toco_convert_impl(input_data:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert `input_data_str` according to model and toco parameters.
		
		Unless you know what you are doing consider using
		the more friendly `tf.lite.toco_convert`.
		
		Args:
		  model_flags_str: Serialized proto describing model properties, see
		    `toco/model_flags.proto`.
		  toco_flags_str: Serialized proto describing conversion properties, see
		    `toco/toco_flags.proto`.
		  input_data_str: Input data in serialized form (e.g. a graphdef is common)
		Returns:
		  Converted model in serialized form (e.g. a TFLITE model is common).
		Raises:
		  ConverterError: When conversion fails in TFLiteConverter, usually due to
		    ops not being supported.
		  RuntimeError: When conversion fails, an exception is raised with the error
		    message embedded.
	**/
	static public function toco_convert_protos(model_flags_str:Dynamic, toco_flags_str:Dynamic, input_data_str:Dynamic):Dynamic;
}