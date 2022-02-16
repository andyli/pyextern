/* This file is generated, do not edit! */
package tensorflow.python.compiler.tensorrt.trt_convert;
@:pythonImport("tensorflow.python.compiler.tensorrt.trt_convert", "TrtGraphConverterV2") extern class TrtGraphConverterV2 {
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
		Initialize the converter.
		
		Args:
		  input_saved_model_dir: the directory to load the SavedModel which contains
		    the input graph to transforms. Required.
		  input_saved_model_tags: list of tags to load the SavedModel.
		  input_saved_model_signature_key: the key of the signature to optimize the
		    graph for.
		  use_dynamic_shape: whether to enable dynamic shape support. None is
		    equivalent to False in the current implementation.
		  dynamic_shape_profile_strategy: one of the strings in
		    supported_profile_strategies(). None is equivalent to Range in the
		    current implementation.
		  conversion_params: a TrtConversionParams instance.
		
		Raises:
		  ValueError: if the combination of the parameters is invalid.
	**/
	@:native("__init__")
	public function ___init__(?input_saved_model_dir:Dynamic, ?input_saved_model_tags:Dynamic, ?input_saved_model_signature_key:Dynamic, ?use_dynamic_shape:Dynamic, ?dynamic_shape_profile_strategy:Dynamic, ?conversion_params:Dynamic):Dynamic;
	/**
		Initialize the converter.
		
		Args:
		  input_saved_model_dir: the directory to load the SavedModel which contains
		    the input graph to transforms. Required.
		  input_saved_model_tags: list of tags to load the SavedModel.
		  input_saved_model_signature_key: the key of the signature to optimize the
		    graph for.
		  use_dynamic_shape: whether to enable dynamic shape support. None is
		    equivalent to False in the current implementation.
		  dynamic_shape_profile_strategy: one of the strings in
		    supported_profile_strategies(). None is equivalent to Range in the
		    current implementation.
		  conversion_params: a TrtConversionParams instance.
		
		Raises:
		  ValueError: if the combination of the parameters is invalid.
	**/
	public function new(?input_saved_model_dir:Dynamic, ?input_saved_model_tags:Dynamic, ?input_saved_model_signature_key:Dynamic, ?use_dynamic_shape:Dynamic, ?dynamic_shape_profile_strategy:Dynamic, ?conversion_params:Dynamic):Void;
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
	/**
		Helper method to manipulate all TRTEngineOps in a GraphDef.
	**/
	public function _for_each_trt_node(graph_def:Dynamic, fn:Dynamic):Dynamic;
	public function _need_trt_profiles():Dynamic;
	/**
		Rebuild function from graph_def.
	**/
	public function _rebuild_func(func:Dynamic):Dynamic;
	/**
		Run Grappler's OptimizeGraph() tool to convert the graph.
		
		Args:
		  meta_graph_def: the MetaGraphDef instance to run the optimizations on.
		
		Returns:
		  The optimized GraphDef.
	**/
	public function _run_conversion(meta_graph_def:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public function _verify_profile_strategy(strategy:Dynamic):Dynamic;
	/**
		Run inference with converted graph in order to build TensorRT engines.
		
		Args:
		  input_fn: a generator function that yields input data as a list or tuple,
		    which will be used to execute the converted signature to generate TRT
		    engines. Example:
		    `def input_fn(): # Let's assume a network with 2 input tensors. We
		      generate 3 sets
		         # of dummy input data: input_shapes = [[(1, 16), (2, 16)], # 1st
		           input list [(2, 32), (4, 32)], # 2nd list of two tensors [(4,
		           32), (8, 32)]] # 3rd input list
		         for shapes in input_shapes: # return a list of input tensors yield
		           [np.zeros(x).astype(np.float32) for x in shapes]`
		
		Raises:
		  NotImplementedError: build() is already called.
		  RuntimeError: the input_fx is None.
	**/
	public function build(input_fn:Dynamic):Dynamic;
	/**
		Convert the input SavedModel in 2.0 format.
		
		Args:
		  calibration_input_fn: a generator function that yields input data as a
		    list or tuple, which will be used to execute the converted signature for
		    calibration. All the returned input data should have the same shape.
		    Example: `def input_fn(): yield input1, input2, input3`
		
		Raises:
		  ValueError: if the input combination is invalid.
		
		Returns:
		  The TF-TRT converted Function.
	**/
	public function convert(?calibration_input_fn:Dynamic):Dynamic;
	/**
		Save the converted SavedModel.
		
		Args:
		  output_saved_model_dir: directory to saved the converted SavedModel.
	**/
	public function save(output_saved_model_dir:Dynamic):Dynamic;
}