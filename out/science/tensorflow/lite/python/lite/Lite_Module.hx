/* This file is generated, do not edit! */
package tensorflow.lite.python.lite;
@:pythonImport("tensorflow.lite.python.lite") extern class Lite_Module {
	static public var PY2 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a method to retrieve the `GraphDebugInfo` from the original graph.
		
		Args:
		  original_graph: The original `Graph` containing all the op stack traces.
		
		Returns:
		  A function which retrieves the stack traces from the original graph and
		  converts them to a `GraphDebugInfo` for a given set of nodes.
	**/
	static public function _build_debug_info_func(original_graph:Dynamic):Dynamic;
	/**
		Returns a method to retrieve the `GraphDebugInfo` from the original graph.
		
		Args:
		  saved_debug_info: The `GraphDebugInfo` containing all the debug info.
		
		Returns:
		  A function which retrieves the stack traces from the original graph and
		  converts them to a `GraphDebugInfo` for a given set of nodes.
	**/
	static public function _convert_debug_info_func(saved_debug_info:Dynamic):Dynamic;
	/**
		Converts a Jax hlo-based model using TF Lite converter.
	**/
	static public function _convert_jax_hlo(input_content:Dynamic, input_names:Dynamic, is_proto_format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Converts a saved_model using TF Lite converter.
	**/
	static public function _convert_saved_model(?saved_model_dir:Dynamic, ?saved_model_version:Dynamic, ?saved_model_tags:Dynamic, ?saved_model_exported_names:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _deduplicate_readonly_buffers(tflite_model:Dynamic):Dynamic;
	/**
		The decorator around convert function to export metrics.
	**/
	static public function _export_metrics(convert_func:Dynamic):Dynamic;
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
	static public function _freeze_graph(sess:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic):Dynamic;
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
		  graph: `Graph` object.
		
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
		Returns the debug info for the original nodes in the `converted_graph`.
		
		Args:
		  nodes_to_debug_info_func: The method to collect the op debug info for the
		    nodes.
		  converted_graph: A `GraphDef` after optimization and transformation.
		
		Returns:
		  `GraphDebugInfo` for all the original nodes in `converted_graph`.
	**/
	static public function _get_debug_info(nodes_to_debug_info_func:Dynamic, converted_graph:Dynamic):Dynamic;
	/**
		Creates a tf.compat.v1.ConfigProto for configuring Grappler.
		
		Args:
		  optimizers_list: List of strings that represents the list of optimizers.
		
		Returns:
		  tf.ConfigProto.
	**/
	static public function _get_grappler_config(optimizers_list:Dynamic):Dynamic;
	/**
		Returns name of the input tensor.
		
		Args:
		  tensor: tf.Tensor
		
		Returns:
		  str
	**/
	static public function _get_tensor_name(tensor:Dynamic):Dynamic;
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
		Converts tf.dtype (eg: tf.float32) to str (eg: "tf.float32").
	**/
	static public function _get_tf_type_name(tf_type:Dynamic):Dynamic;
	/**
		Imports the graph from `graph_def` into the current default `Graph`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(op_dict)`. They will be removed in a future version.
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
		  corresponding to the names in `return_elements`,
		  and None if `returns_elements` is None.
		
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
	static public function _is_ophint_converted(graph_def:Dynamic):Dynamic;
	/**
		Load a SavedModel from `export_dir`.
		
		Signatures associated with the SavedModel are available as functions:
		
		```python
		imported = tf.saved_model.load(path)
		f = imported.signatures["serving_default"]
		print(f(x=tf.constant([[1.]])))
		```
		
		Objects exported with `tf.saved_model.save` additionally have trackable
		objects and functions assigned to attributes:
		
		```python
		exported = tf.train.Checkpoint(v=tf.Variable(3.))
		exported.f = tf.function(
		    lambda x: exported.v * x,
		    input_signature=[tf.TensorSpec(shape=None, dtype=tf.float32)])
		tf.saved_model.save(exported, path)
		imported = tf.saved_model.load(path)
		assert 3. == imported.v.numpy()
		assert 6. == imported.f(x=tf.constant(2.)).numpy()
		```
		
		_Loading Keras models_
		
		Keras models are trackable, so they can be saved to SavedModel. The object
		returned by `tf.saved_model.load` is not a Keras object (i.e. doesn't have
		`.fit`, `.predict`, etc. methods). A few attributes and functions are still
		available: `.variables`, `.trainable_variables` and `.__call__`.
		
		```python
		model = tf.keras.Model(...)
		tf.saved_model.save(model, path)
		imported = tf.saved_model.load(path)
		outputs = imported(inputs)
		```
		
		Use `tf.keras.models.load_model` to restore the Keras model.
		
		_Importing SavedModels from TensorFlow 1.x_
		
		SavedModels from `tf.estimator.Estimator` or 1.x SavedModel APIs have a flat
		graph instead of `tf.function` objects. These SavedModels will be loaded with
		the following attributes:
		
		* `.signatures`: A dictionary mapping signature names to functions.
		* `.prune(feeds, fetches) `: A method which allows you to extract
		  functions for new subgraphs. This is equivalent to importing the SavedModel
		  and naming feeds and fetches in a Session from TensorFlow 1.x.
		
		  ```python
		  imported = tf.saved_model.load(path_to_v1_saved_model)
		  pruned = imported.prune("x:0", "out:0")
		  pruned(tf.ones([]))
		  ```
		
		  See `tf.compat.v1.wrap_function` for details.
		* `.variables`: A list of imported variables.
		* `.graph`: The whole imported graph.
		* `.restore(save_path)`: A function that restores variables from a checkpoint
		  saved from `tf.compat.v1.Saver`.
		
		_Consuming SavedModels asynchronously_
		
		When consuming SavedModels asynchronously (the producer is a separate
		process), the SavedModel directory will appear before all files have been
		written, and `tf.saved_model.load` will fail if pointed at an incomplete
		SavedModel. Rather than checking for the directory, check for
		"saved_model_dir/saved_model.pb". This file is written atomically as the last
		`tf.saved_model.save` file operation.
		
		Args:
		  export_dir: The SavedModel directory to load from.
		  tags: A tag or sequence of tags identifying the MetaGraph to load. Optional
		    if the SavedModel contains a single MetaGraph, as for those exported from
		    `tf.saved_model.save`.
		  options: `tf.saved_model.LoadOptions` object that specifies options for
		    loading.
		
		Returns:
		  A trackable object with a `signatures` attribute mapping from signature
		  keys to functions. If the SavedModel was exported by `tf.saved_model.save`,
		  it also points to trackable objects, functions, debug info which it has been
		  saved.
		
		Raises:
		  ValueError: If `tags` don't match a MetaGraph in the SavedModel.
	**/
	static public function _load(export_dir:Dynamic, ?tags:Dynamic, ?options:Dynamic):Dynamic;
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
	static public function _mlir_quantize(input_data_str:Dynamic, ?disable_per_channel:Dynamic, ?fully_quantize:Dynamic, ?inference_type:Dynamic, ?input_data_type:Dynamic, ?output_data_type:Dynamic, ?enable_numeric_verify:Dynamic, ?enable_whole_model_verify:Dynamic, ?denylisted_ops:Dynamic, ?denylisted_nodes:Dynamic):Dynamic;
	/**
		Sparsify `input_data_str` to encode sparse tensor with proper format.
		
		Args:
		  input_data_str: Input data in serialized form (e.g. a TFLITE model).
		
		Returns:
		  Sparsified model in serialized form (e.g. a TFLITE model).
	**/
	static public function _mlir_sparsify(input_data_str:Dynamic):Dynamic;
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
	static public function _model_input_signature(model:Dynamic, ?keep_original_batch_size:Dynamic):Dynamic;
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
	static public function _modify_model_io_type(model:Dynamic, ?inference_input_type:Dynamic, ?inference_output_type:Dynamic):Dynamic;
	/**
		Reads the savedmodel as well as the graph debug info.
		
		Args:
		  export_dir: Directory containing the SavedModel and GraphDebugInfo files.
		
		Returns:
		  `SavedModel` and `GraphDebugInfo` protocol buffers.
		
		Raises:
		  IOError: If the saved model file does not exist, or cannot be successfully
		  parsed. Missing graph debug info file is fine.
	**/
	static public function _parse_saved_model_with_debug_info(export_dir:Dynamic):Dynamic;
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
	static public function _run_graph_optimizations(graph_def:Dynamic, input_arrays:Dynamic, output_arrays:Dynamic, config:Dynamic, ?graph:Dynamic):Dynamic;
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
	static public function _set_tensor_shapes(tensors:Dynamic, shapes:Dynamic):Dynamic;
	static public function _tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _toco_convert_graph_def(input_data:Dynamic, input_arrays_with_shape:Dynamic, output_arrays:Dynamic, enable_mlir_converter:Dynamic, control_output_arrays:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _toco_convert_impl(input_data:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic, enable_mlir_converter:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _trace_model_call(model:Dynamic, ?input_signature:Dynamic):Dynamic;
	static public var _xla_computation : Dynamic;
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
	static public var division : Dynamic;
	/**
		Returns loaded Delegate object.
		
		Example usage:
		
		```
		import tensorflow as tf
		
		try:
		  delegate = tf.lite.experimental.load_delegate('delegate.so')
		except ValueError:
		  // Fallback to CPU
		
		if delegate:
		  interpreter = tf.lite.Interpreter(
		      model_path='model.tflite',
		      experimental_delegates=[delegate])
		else:
		  interpreter = tf.lite.Interpreter(model_path='model.tflite')
		```
		
		This is typically used to leverage EdgeTPU for running TensorFlow Lite models.
		For more information see: https://coral.ai/docs/edgetpu/tflite-python/
		
		Args:
		  library: Name of shared library containing the
		    [TfLiteDelegate](https://www.tensorflow.org/lite/performance/delegates).
		  options: Dictionary of options that are required to load the delegate. All
		    keys and values in the dictionary should be convertible to str. Consult
		    the documentation of the specific delegate for required and legal options.
		    (default None)
		
		Returns:
		  Delegate object.
		
		Raises:
		  ValueError: Delegate failed to load.
		  RuntimeError: If delegate loading is used on unsupported platform.
	**/
	static public function load_delegate(library:Dynamic, ?options:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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