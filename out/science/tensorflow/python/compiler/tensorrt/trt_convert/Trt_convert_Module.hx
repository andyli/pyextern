/* This file is generated, do not edit! */
package tensorflow.python.compiler.tensorrt.trt_convert;
@:pythonImport("tensorflow.python.compiler.tensorrt.trt_convert") extern class Trt_convert_Module {
	static public var DEFAULT_TRT_CONVERSION_PARAMS : Dynamic;
	static public var DEFAULT_TRT_MAX_WORKSPACE_SIZE_BYTES : Dynamic;
	static public var PROFILE_STRATEGY_IMPLICIT_BATCH_MODE_COMPATIBLE : Dynamic;
	static public var PROFILE_STRATEGY_OPTIMAL : Dynamic;
	static public var PROFILE_STRATEGY_RANGE : Dynamic;
	static public var PROFILE_STRATEGY_RANGE_OPTIMAL : Dynamic;
	static public var _TRT_ENGINE_OP_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Validate the provided TrtConversionParams.
		
		Args:
		  conversion_params: a TrtConversionParams instance.
		  is_v2: whether we're getting a RewriterConfig for TF 2.0.
		
		Raises:
		  TypeError: if any of the parameters are of unexpected type.
		  ValueError: if any of the parameters are of unexpected value.
	**/
	static public function _check_conversion_params(conversion_params:Dynamic, ?is_v2:Dynamic):Dynamic;
	/**
		Check compatibility of TensorRT version.
		
		Raises:
		  RuntimeError: if the TensorRT library version is incompatible.
	**/
	static public function _check_trt_version_compatibility():Dynamic;
	static public function _get_canonical_engine_name(name:Dynamic):Dynamic;
	static public function _get_resource_handle(name:Dynamic, device:Dynamic):Dynamic;
	/**
		Returns a RewriterConfig proto for TRT transformation.
		
		Args:
		  conversion_params: a TrtConversionParams instance.
		  is_dynamic_op: whether to use dynamic engines.
		  max_batch_size: maximum batch size for static engines.
		  is_v2: whether we're getting a RewriterConfig for TF 2.0.
		  disable_non_trt_optimizers: Turn off all default Grappler optimizers.
		  use_implicit_batch: Whether to use implicit batch or explicit batch.
		  profile_strategy: dynamic shape optimization profile strategy.
		
		Returns:
		  A RewriterConfig proto which sets a TensorRTOptimizer to run Grappler.
		
		Raises:
		  TypeError: if any of the parameters are of unexpected type.
		  ValueError: if any of the parameters are of unexpected value.
	**/
	static public function _get_tensorrt_rewriter_config(conversion_params:Dynamic, ?is_dynamic_op:Dynamic, ?max_batch_size:Dynamic, ?is_v2:Dynamic, ?disable_non_trt_optimizers:Dynamic, ?use_implicit_batch:Dynamic, ?profile_strategy:Dynamic):Dynamic;
	/**
		Encode s if it is a sequence of chars.
	**/
	static public function _to_bytes(s:Dynamic):Dynamic;
	/**
		Decode s if it is a sequence of bytes.
	**/
	static public function _to_string(s:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Python wrapper for the TRT transformation.
		
		Args:
		  input_graph_def: a GraphDef object containing a model to be transformed. If
		    set to None, the graph will be read from the SavedModel loaded from
		    input_saved_model_dir.
		  outputs: list of tensors or node names for the model outputs. Only used when
		    input_graph_def is not None.
		  max_batch_size: max size for the input batch.
		  max_workspace_size_bytes: the maximum GPU temporary memory which the TRT
		    engine can use at execution time. This corresponds to the 'workspaceSize'
		    parameter of nvinfer1::IBuilder::setMaxWorkspaceSize().
		  precision_mode: one of TrtPrecisionMode.supported_precision_modes().
		  minimum_segment_size: the minimum number of nodes required for a subgraph to
		    be replaced by TRTEngineOp.
		  is_dynamic_op: whether to generate dynamic TRT ops which will build the TRT
		    network and engine at run time.
		  maximum_cached_engines: max number of cached TRT engines in dynamic TRT ops.
		    If the number of cached engines is already at max but none of them can
		    serve the input, the TRTEngineOp will fall back to run the TF function
		    based on which the TRTEngineOp is created.
		  input_saved_model_dir: the directory to load the SavedModel which contains
		    the input graph to transforms. Used only when input_graph_def is None.
		  input_saved_model_tags: list of tags to load the SavedModel.
		  input_saved_model_signature_key: the key of the signature to optimize the
		    graph for.
		  output_saved_model_dir: if not None, construct a SavedModel using the
		    returned GraphDef and save it to the specified directory. This option only
		    works when the input graph is loaded from a SavedModel, i.e. when
		    input_saved_model_dir is specified and input_graph_def is None.
		
		Returns:
		  A GraphDef transformed from input_graph_def (or the SavedModel graph def
		  loaded from input_saved_model_dir, if input_graph_def is not present), where
		  all TRT compatible subgraphs are replaced with TRTEngineOps, and a TF
		  function is added for each of the subgraphs.
		
		  If is_dynamic_op is True, each TRTEngineOp will contain a serialized
		  subgraph GraphDef, which will be converted to a TRT engine at execution time
		  and the TRT engine will be cached for future usage. A new TRT engine will be
		  created each time when none of the cached engines match the input shapes. If
		  it fails to execute the TRT engine or the number of cached engines reaches
		  maximum_cached_engines, the op will fall back to call the corresponding TF
		  function.
		
		  If is_dynamic_op is False, each TRTEngineOp will contain a serialized TRT
		  engine created from the corresponding subgraph. No more engines will be
		  created on the fly, and the op will fall back to call the corresponding TF
		  function when it fails to execute the engine.
		
		Raises:
		  ValueError: if the combination of the parameters is invalid.
	**/
	static public function create_inference_graph(input_graph_def:Dynamic, outputs:Dynamic, ?max_batch_size:Dynamic, ?max_workspace_size_bytes:Dynamic, ?precision_mode:Dynamic, ?minimum_segment_size:Dynamic, ?is_dynamic_op:Dynamic, ?maximum_cached_engines:Dynamic, ?input_saved_model_dir:Dynamic, ?input_saved_model_tags:Dynamic, ?input_saved_model_signature_key:Dynamic, ?output_saved_model_dir:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		You shouldn't need a rewriter_config with the current TF-TRT APIs.
	**/
	static public function get_tensorrt_rewriter_config(conversion_params:Dynamic, ?is_dynamic_op:Dynamic, ?max_batch_size:Dynamic, ?is_v2:Dynamic, ?disable_non_trt_optimizers:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function supported_profile_strategies():Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}