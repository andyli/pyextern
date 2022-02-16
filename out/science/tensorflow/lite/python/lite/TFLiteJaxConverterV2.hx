/* This file is generated, do not edit! */
package tensorflow.lite.python.lite;
@:pythonImport("tensorflow.lite.python.lite", "TFLiteJaxConverterV2") extern class TFLiteJaxConverterV2 {
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
		Constructor for TFLiteConverter.
		
		Args:
		  serving_funcs: A list functions of the serving func of the jax module, the
		    model params should already be inlined. (e.g., `serving_func =
		    functools.partial(model, params=params)`)
		  inputs: Array of input tensor placeholders tuple,s like `jnp.zeros`. For
		    example, wrapped in an array like
		    "[('input1', input1), ('input2', input2)]]".
		Jax function is polymorphic, for example:
		```python
		def add(a, b):
		  return a + b
		```
		Will yield different computations if different input signatures are passed
		in: Pass `add(10.0, 20.0)` will yield a scalar `add` while pass
		  `add(np.random((100, 1)), np.random(100, 100))` will yield a broadcasting
		  add.  We will need the input information to do tracing for the converter
		  to properly convert the model. So it's important to pass in the desired
		  `input placeholders` with the correct input shape/type.
		
		In the converted tflite model:
		Currently: the function name will be default to main, the output names will
		be the traced outputs. The output ordering shall match the serving function.
	**/
	@:native("__init__")
	public function ___init__(serving_funcs:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Constructor for TFLiteConverter.
		
		Args:
		  serving_funcs: A list functions of the serving func of the jax module, the
		    model params should already be inlined. (e.g., `serving_func =
		    functools.partial(model, params=params)`)
		  inputs: Array of input tensor placeholders tuple,s like `jnp.zeros`. For
		    example, wrapped in an array like
		    "[('input1', input1), ('input2', input2)]]".
		Jax function is polymorphic, for example:
		```python
		def add(a, b):
		  return a + b
		```
		Will yield different computations if different input signatures are passed
		in: Pass `add(10.0, 20.0)` will yield a scalar `add` while pass
		  `add(np.random((100, 1)), np.random(100, 100))` will yield a broadcasting
		  add.  We will need the input information to do tracing for the converter
		  to properly convert the model. So it's important to pass in the desired
		  `input placeholders` with the correct input shape/type.
		
		In the converted tflite model:
		Currently: the function name will be default to main, the output names will
		be the traced outputs. The output ordering shall match the serving function.
	**/
	public function new(serving_funcs:Dynamic, inputs:Dynamic):Void;
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
	public function _contains_function_with_implements_attr(saved_model_proto:Dynamic):Dynamic;
	/**
		Wraps around convert function to export metrics.
		
		Args:
		  convert_func: The convert function to wrap.
		  *args: Positional arguments of the convert function.
		  **kwargs: The keyword arguments of the convert function.
		
		Returns:
		  The decorator to wrap the convert function.
	**/
	public function _convert_and_export_metrics(convert_func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the base converter args.
		
		Returns:
		  {key str: val}
	**/
	public function _get_base_converter_args():Dynamic;
	/**
		Creates a tf.compat.v1.ConfigProto for configuring Grappler.
		
		Args:
		  optimizers: List of strings that represents the list of optimizers.
		
		Returns:
		  tf.ConfigProto.
	**/
	public function _grappler_config(?optimizers:Dynamic):Dynamic;
	public function _increase_conversion_attempt_metric():Dynamic;
	public function _increase_conversion_success_metric():Dynamic;
	public function _is_unknown_shapes_allowed():Dynamic;
	/**
		Load graph_def from saved model with the default serving signature key.
		
		Args:
		  saved_model_dir: Directory of the SavedModel.
		  saved_model_tags: Set of tags identifying the MetaGraphDef within the
		    SavedModel to analyze.
		
		Returns:
		  graph_def: The loaded GraphDef.
		  input_tensors: List of input tensors.
		  output_tensors: List of output tensors.
	**/
	public function _load_saved_model(saved_model_dir:Dynamic, saved_model_tags:Dynamic):Dynamic;
	/**
		Run a Grappler pass to optimize the TensorFlow graph.
		
		Args:
		  graph_def: Frozen GraphDef to be optimized.
		  input_tensors: List of input tensors.
		  output_tensors: List of output tensors.
		  frozen_func: TensorFlow Graph.
		
		Returns:
		  The optimized TensorFlow graph.
	**/
	public function _optimize_tf_model(graph_def:Dynamic, input_tensors:Dynamic, output_tensors:Dynamic, frozen_func:Dynamic):Dynamic;
	/**
		Apply optimizations on a TFLite model.
	**/
	public function _optimize_tflite_model(model:Dynamic, quant_mode:Dynamic, ?quant_io:Dynamic):Dynamic;
	/**
		Parses SavedModel arguments from the given Keras/RNN SavedModel.
		
		Args:
		  always_enable_saved_model_import: Bool. When the value is true, it enables
		    MLIR saved model import path regardless of checking the conditions.
	**/
	public function _parse_saved_model_args(?always_enable_saved_model_import:Dynamic):Dynamic;
	/**
		Quantize the model.
	**/
	public function _quantize(result:Dynamic, input_type:Dynamic, output_type:Dynamic, activations_type:Dynamic, allow_float:Dynamic):Dynamic;
	/**
		Set conversion parameter metrics.
	**/
	public function _save_conversion_params_metric(?graph_def:Dynamic, ?inference_type:Dynamic, ?inference_input_type:Dynamic):Dynamic;
	public function _set_conversion_latency_metric(value:Dynamic):Dynamic;
	public function _sparsify_model():Dynamic;
	public function _validate_experimental_new_quantizer_flag():Dynamic;
	/**
		Validate inference_input_type and inference_output_type flags.
	**/
	public function _validate_inference_input_output_types(quant_mode:Dynamic):Dynamic;
	/**
		Validate the input parameters.
		
		Args:
		  graph_def: The TensorFlow GraphDef.
		  input_tensors: List of input tensors.
		Raise:
		  ValueError:
		    Input shape is not specified.
		    Invalid quantization parameters.
	**/
	public function _validate_inputs(graph_def:Dynamic, input_tensors:Dynamic):Dynamic;
	/**
		Converts a Jax serving func based on instance variables.
		
		Returns:
		  The converted data in serialized format.
		
		Raises:
		  ImportError:
		    If cannot import the xla_computation from jax.
		  ValueError:
		    No serving function is specified.
		    Input tensors are not specified.
		    The truth value of an array with more than one element is ambiguous.
		    Failed to convert the given Jax function to hlo.
	**/
	public function convert():Dynamic;
}