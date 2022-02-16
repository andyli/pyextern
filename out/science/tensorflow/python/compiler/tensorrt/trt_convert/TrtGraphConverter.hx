/* This file is generated, do not edit! */
package tensorflow.python.compiler.tensorrt.trt_convert;
@:pythonImport("tensorflow.python.compiler.tensorrt.trt_convert", "TrtGraphConverter") extern class TrtGraphConverter {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initializes the converter.
		
		Args:
		  input_saved_model_dir: the directory to load the SavedModel which contains
		    the input graph to transforms. Used only when input_graph_def is None.
		  input_saved_model_tags: list of tags to load the SavedModel.
		  input_saved_model_signature_key: the key of the signature to optimize the
		    graph for.
		  input_graph_def: a GraphDef object containing a model to be transformed.
		    If set to None, the graph will be read from the SavedModel loaded from
		    input_saved_model_dir.
		  nodes_denylist: list of node names to prevent the converter from touching.
		  max_batch_size: max size for the input batch.
		  max_workspace_size_bytes: the maximum GPU temporary memory which the TRT
		    engine can use at execution time. This corresponds to the
		    'workspaceSize' parameter of nvinfer1::IBuilder::setMaxWorkspaceSize().
		  precision_mode: one of TrtPrecisionMode.supported_precision_modes().
		  minimum_segment_size: the minimum number of nodes required for a subgraph
		    to be replaced by TRTEngineOp.
		  is_dynamic_op: whether to generate dynamic TRT ops which will build the
		    TRT network and engine at run time.
		  maximum_cached_engines: max number of cached TRT engines in dynamic TRT
		    ops. If the number of cached engines is already at max but none of them
		    can serve the input, the TRTEngineOp will fall back to run the TF
		    function based on which the TRTEngineOp is created.
		  use_calibration: this argument is ignored if precision_mode is not INT8.
		    If set to True, a calibration graph will be created to calibrate the
		    missing ranges. The calibration graph must be converted to an inference
		    graph by running calibration with calibrate(). If set to False,
		    quantization nodes will be expected for every tensor in the graph
		    (excluding those which will be fused). If a range is missing, an error
		    will occur. Please note that accuracy may be negatively affected if
		    there is a mismatch between which tensors TRT quantizes and which
		    tensors were trained with fake quantization.
		
		Raises:
		  ValueError: if the combination of the parameters is invalid.
		  RuntimeError: if this class is used in TF 2.0.
	**/
	@:native("__init__")
	public function ___init__(?input_saved_model_dir:Dynamic, ?input_saved_model_tags:Dynamic, ?input_saved_model_signature_key:Dynamic, ?input_graph_def:Dynamic, ?nodes_denylist:Dynamic, ?max_batch_size:Dynamic, ?max_workspace_size_bytes:Dynamic, ?precision_mode:Dynamic, ?minimum_segment_size:Dynamic, ?is_dynamic_op:Dynamic, ?maximum_cached_engines:Dynamic, ?use_calibration:Dynamic):Dynamic;
	/**
		Initializes the converter.
		
		Args:
		  input_saved_model_dir: the directory to load the SavedModel which contains
		    the input graph to transforms. Used only when input_graph_def is None.
		  input_saved_model_tags: list of tags to load the SavedModel.
		  input_saved_model_signature_key: the key of the signature to optimize the
		    graph for.
		  input_graph_def: a GraphDef object containing a model to be transformed.
		    If set to None, the graph will be read from the SavedModel loaded from
		    input_saved_model_dir.
		  nodes_denylist: list of node names to prevent the converter from touching.
		  max_batch_size: max size for the input batch.
		  max_workspace_size_bytes: the maximum GPU temporary memory which the TRT
		    engine can use at execution time. This corresponds to the
		    'workspaceSize' parameter of nvinfer1::IBuilder::setMaxWorkspaceSize().
		  precision_mode: one of TrtPrecisionMode.supported_precision_modes().
		  minimum_segment_size: the minimum number of nodes required for a subgraph
		    to be replaced by TRTEngineOp.
		  is_dynamic_op: whether to generate dynamic TRT ops which will build the
		    TRT network and engine at run time.
		  maximum_cached_engines: max number of cached TRT engines in dynamic TRT
		    ops. If the number of cached engines is already at max but none of them
		    can serve the input, the TRTEngineOp will fall back to run the TF
		    function based on which the TRTEngineOp is created.
		  use_calibration: this argument is ignored if precision_mode is not INT8.
		    If set to True, a calibration graph will be created to calibrate the
		    missing ranges. The calibration graph must be converted to an inference
		    graph by running calibration with calibrate(). If set to False,
		    quantization nodes will be expected for every tensor in the graph
		    (excluding those which will be fused). If a range is missing, an error
		    will occur. Please note that accuracy may be negatively affected if
		    there is a mismatch between which tensors TRT quantizes and which
		    tensors were trained with fake quantization.
		
		Raises:
		  ValueError: if the combination of the parameters is invalid.
		  RuntimeError: if this class is used in TF 2.0.
	**/
	public function new(?input_saved_model_dir:Dynamic, ?input_saved_model_tags:Dynamic, ?input_saved_model_signature_key:Dynamic, ?input_graph_def:Dynamic, ?nodes_denylist:Dynamic, ?max_batch_size:Dynamic, ?max_workspace_size_bytes:Dynamic, ?precision_mode:Dynamic, ?minimum_segment_size:Dynamic, ?is_dynamic_op:Dynamic, ?maximum_cached_engines:Dynamic, ?use_calibration:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add_nodes_denylist():Dynamic;
	public function _collections_to_keep(collection_keys:Dynamic):Dynamic;
	/**
		Convert the input GraphDef.
	**/
	public function _convert_graph_def():Dynamic;
	/**
		Convert the input SavedModel.
	**/
	public function _convert_saved_model():Dynamic;
	/**
		Run Grappler's OptimizeGraph() tool to convert the graph.
	**/
	public function _run_conversion():Dynamic;
	/**
		Run the calibration and return the calibrated GraphDef.
		
		Args:
		  fetch_names: a list of output tensor name to fetch during calibration.
		  num_runs: number of runs of the graph during calibration.
		  feed_dict_fn: a function that returns a dictionary mapping input names (as
		    strings) in the GraphDef to be calibrated to values (e.g. Python list,
		    numpy arrays, etc). One and only one of `feed_dict_fn` and
		    `input_map_fn` should be specified.
		  input_map_fn: a function that returns a dictionary mapping input names (as
		    strings) in the GraphDef to be calibrated to Tensor objects. The values
		    of the named input tensors in the GraphDef to be calibrated will be
		    re-mapped to the respective `Tensor` values during calibration. One and
		    only one of `feed_dict_fn` and `input_map_fn` should be specified.
		
		Raises:
		  ValueError: if the input combination is invalid.
		  RuntimeError: if this method is called in eager mode.
		
		Returns:
		  The GraphDef after the calibration.
	**/
	public function calibrate(fetch_names:Dynamic, num_runs:Dynamic, ?feed_dict_fn:Dynamic, ?input_map_fn:Dynamic):Dynamic;
	/**
		Run the TF-TRT conversion.
		
		Returns:
		  The converted GraphDef for TF 1.x.
	**/
	public function convert():Dynamic;
	/**
		Save the converted graph as a SavedModel.
		
		Args:
		  output_saved_model_dir: construct a SavedModel using the converted
		    GraphDef and save it to the specified directory. This option only works
		    when the input graph is loaded from a SavedModel, i.e. when
		    input_saved_model_dir is specified and input_graph_def is None in
		    __init__().
		
		Raises:
		  ValueError: if the input to the converter is a GraphDef instead of a
		  SavedModel.
	**/
	public function save(output_saved_model_dir:Dynamic):Dynamic;
}