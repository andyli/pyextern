/* This file is generated, do not edit! */
package tensorflow.lite.tools.optimize.debugging.python.debugger;
@:pythonImport("tensorflow.lite.tools.optimize.debugging.python.debugger", "QuantizationDebugger") extern class QuantizationDebugger {
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
		Runs the TFLite debugging model with given debug options.
		
		Args:
		  quant_debug_model_path: Path to the quantized debug TFLite model file.
		  quant_debug_model_content: Content of the quantized debug TFLite model.
		  float_model_path: Path to float TFLite model file.
		  float_model_content: Content of the float TFLite model.
		  debug_dataset: a factory function that returns dataset generator which is
		    used to generate input samples (list of np.ndarray) for the model. The
		    generated elements must have same types and shape as inputs to the
		    model.
		  debug_options: Debug options to debug the given model.
		  converter: Optional, use converter instead of quantized model.
		
		Raises:
		  ValueError: If the debugger was unable to be created.
		
		Attributes:
		  layer_statistics: results of error metrics for each NumericVerify op
		    results. in {layer_name: {metric_name: metric}} format.
		  model_statistics: results of error metrics for difference between float
		    and quantized models. in {metric_name: metric} format.
	**/
	@:native("__init__")
	public function ___init__(?quant_debug_model_path:Dynamic, ?quant_debug_model_content:Dynamic, ?float_model_path:Dynamic, ?float_model_content:Dynamic, ?debug_dataset:Dynamic, ?debug_options:Dynamic, ?converter:Dynamic):Dynamic;
	/**
		Runs the TFLite debugging model with given debug options.
		
		Args:
		  quant_debug_model_path: Path to the quantized debug TFLite model file.
		  quant_debug_model_content: Content of the quantized debug TFLite model.
		  float_model_path: Path to float TFLite model file.
		  float_model_content: Content of the float TFLite model.
		  debug_dataset: a factory function that returns dataset generator which is
		    used to generate input samples (list of np.ndarray) for the model. The
		    generated elements must have same types and shape as inputs to the
		    model.
		  debug_options: Debug options to debug the given model.
		  converter: Optional, use converter instead of quantized model.
		
		Raises:
		  ValueError: If the debugger was unable to be created.
		
		Attributes:
		  layer_statistics: results of error metrics for each NumericVerify op
		    results. in {layer_name: {metric_name: metric}} format.
		  model_statistics: results of error metrics for difference between float
		    and quantized models. in {metric_name: metric} format.
	**/
	public function new(?quant_debug_model_path:Dynamic, ?quant_debug_model_content:Dynamic, ?float_model_path:Dynamic, ?float_model_content:Dynamic, ?debug_dataset:Dynamic, ?debug_options:Dynamic, ?converter:Dynamic):Void;
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
		Collects layer statistics by applying layer debug metrics.
		
		For all data from the given RepresentativeDataset, collect statistics per
		example by getting the NumericVerify op results in _quant_interpreter
		and calculating layer debug metrics on the results.
		
		Returns:
		  aggregated per-layer statistics of NumericVerify results.
		  {layer_name: {metric_name: metric}}
	**/
	public function _collect_layer_statistics():Dynamic;
	/**
		Collects model output metrics.
		
		For all data from the given RepresentativeDataset, collect all model output
		results from float model & quantized debug model, and calculate metrics
		by using model output functions. As a result, self.model_results is filled,
		
		where self.model_results[model_output_function_name] = `aggregated model
		output function value` (a scalar).
		
		Returns:
		  aggregated per-model output discrepancy metrics.
		  {metric_name: aggregated_metric}
	**/
	public function _collect_model_statistics():Dynamic;
	/**
		Returns all names of all tensors from NumericVerify op.
	**/
	public function _get_numeric_verify_tensor_details():Dynamic;
	/**
		Gets the index and name of NumericVerify Op's quantized input tensor.
		
		Args:
		  numeric_verify_name: name of the NumericVerify op's output tensor. It has
		    format of `NumericVerify/{quantized_tensor_name}:{quantized_tensor_idx}`
		
		Returns:
		  Tuple of (tensor_name, tensor_idx) for quantized op's output tensor.
	**/
	public function _get_operand_name_and_index(numeric_verify_name:Dynamic):Dynamic;
	/**
		Returns output tensors of given TFLite model Interpreter.
		
		Args:
		  interpreter: a tf.lite.Interpreter object with allocated tensors.
		
		Returns:
		  a list of numpy arrays representing output tensor results.
	**/
	public function _get_output_tensors(interpreter:Dynamic):Dynamic;
	public function _get_quantized_model(is_debug:Dynamic):Dynamic;
	/**
		Convert the model and apply options.
		
		Converts the quantized model and initializes a quantized model interpreter
		with the quantized model. Returns a float model interpreter if float model
		is provided.
		
		Args:
		  options: a QuantizationDebugOptions object.
		  converter: an initialized tf.lite.TFLiteConverter.
		  calibrated_model: Calibrated model bytes.
		  float_model: Float model bytes.
	**/
	public function _init_from_converter(options:Dynamic, converter:Dynamic, ?calibrated_model:Dynamic, ?float_model:Dynamic):Dynamic;
	/**
		Helper function initializes stats.
	**/
	public function _initialize_stats():Dynamic;
	/**
		Verify converter options and set required experimental options.
	**/
	public function _set_converter_options_for_calibration(converter:Dynamic):Dynamic;
	/**
		Verify converter options and set required experimental options.
	**/
	public function _set_converter_options_for_float(converter:Dynamic):Dynamic;
	/**
		Sets input tensors into TFLite model Interpreter.
		
		Args:
		  interpreter: a tf.lite.Interpreter object with allocated tensors.
		  tensor_data: a list of Numpy array data.
		  initialize: set to true when input is first set for the interpreter, to
		    set input shapes and allocate tensors.
		
		Raises:
		  ValueError: when inputs can't be set, or size of provided inputs does not
		  match size of model inputs.
	**/
	public function _set_input_tensors(interpreter:Dynamic, tensor_data:Dynamic, initialize:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns an instrumented quantized model.
		
		Convert the quantized model with the initialized converter and
		return bytes for model. The model will be instrumented with numeric
		verification operations and should only be used for debugging.
		
		Returns:
		  Model bytes corresponding to the model.
		Raises:
		  ValueError: if converter is not passed to the debugger.
	**/
	public function get_debug_quantized_model():Dynamic;
	/**
		Returns a non-instrumented quantized model.
		
		Convert the quantized model with the initialized converter and
		return bytes for nondebug model. The model will not be instrumented with
		numeric verification operations.
		
		Returns:
		  Model bytes corresponding to the model.
		Raises:
		  ValueError: if converter is not passed to the debugger.
	**/
	public function get_nondebug_quantized_model():Dynamic;
	/**
		Dumps layer statistics into file, in csv format.
		
		Args:
		  file: file, or file-like object to write.
	**/
	public function layer_statistics_dump(file:Dynamic):Dynamic;
	public var options : Dynamic;
	/**
		Runs models and gets metrics.
	**/
	public function run():Dynamic;
}