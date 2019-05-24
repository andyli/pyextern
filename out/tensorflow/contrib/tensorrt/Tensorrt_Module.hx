/* This file is generated, do not edit! */
package tensorflow.contrib.tensorrt;
@:pythonImport("tensorflow.contrib.tensorrt") extern class Tensorrt_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function add_test_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert an existing calibration graph to inference graph.
		
		Args:
		  calibration_graph_def: the calibration GraphDef object with calibration data
		  is_dynamic_op: whether to create dynamic static engines from calibration
		
		Returns:
		  New GraphDef with TRTEngineOps placed in graph replacing calibration nodes.
		Raises:
		  RuntimeError: if the returned status message is malformed.
	**/
	static public function calib_graph_to_infer_graph(calibration_graph_def:Dynamic, ?is_dynamic_op:Dynamic):Dynamic;
	static public function clear_test_values(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		  cached_engine_batch_sizes: a list of batch sizes used to create cached
		    engines, only used when is_dynamic_op is True. The length of the list
		    should be smaller than maximum_cached_engines, and the dynamic TRT op will
		    use this list to determine the batch sizes of the cached engines, instead
		    of making the decision on the fly. This is useful when we know the most
		    common batch size(s) the application is going to generate.
		  use_calibration: this argument is ignored if precision_mode is not INT8. If
		    set to True, a calibration graph will be created to calibrate the missing
		    ranges. The calibration graph must be converted to an inference graph
		    using calib_graph_to_infer_graph() after running calibration. if set to
		    False, quantization nodes will be expected for every tensor in the graph
		    (exlcuding those which will be fused). If a range is missing, an error
		    will occur. Please note that accuracy may be negatively affected if there
		    is a mismatch between which tensors TRT quantizes and which tensors were
		    trained with fake quantization.
		  input_saved_model_dir: the directory to load the SavedModel which contains
		    the input graph to transforms. Used only when input_graph_def is None.
		  input_saved_model_tags: list of tags to load the SavedModel.
		  output_saved_model_dir: if not None, construct a SavedModel using the
		    returned GraphDef and save it to the specified directory. This option only
		    works when the input graph is loaded from a SavedModel, i.e. when
		    input_saved_model_dir is specified and input_graph_def is None.
		  session_config: the ConfigProto used to create a Session. It's also used as
		    a template to create a TRT-enabled ConfigProto for conversion. If not
		    specified, a default ConfigProto will be used.
		
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
		  RuntimeError: if the TensorRT library version is incompatible.
	**/
	static public function create_inference_graph(input_graph_def:Dynamic, outputs:Dynamic, ?max_batch_size:Dynamic, ?max_workspace_size_bytes:Dynamic, ?precision_mode:Dynamic, ?minimum_segment_size:Dynamic, ?is_dynamic_op:Dynamic, ?maximum_cached_engines:Dynamic, ?cached_engine_batch_sizes:Dynamic, ?use_calibration:Dynamic, ?input_saved_model_dir:Dynamic, ?input_saved_model_tags:Dynamic, ?output_saved_model_dir:Dynamic, ?session_config:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function enable_test_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_test_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_tensorrt_enabled(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}