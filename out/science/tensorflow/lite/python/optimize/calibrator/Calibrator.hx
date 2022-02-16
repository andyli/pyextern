/* This file is generated, do not edit! */
package tensorflow.lite.python.optimize.calibrator;
@:pythonImport("tensorflow.lite.python.optimize.calibrator", "Calibrator") extern class Calibrator {
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
		Constructor.
		
		Args:
		  model_content: Content of a TF-Lite Flatbuffer file.
		  custom_op_registerers_by_name: List of str (symbol names) that take a
		    pointer to a MutableOpResolver and register custom ops.
		  custom_op_registerers_by_func: List of functions that take a pointer to a
		    MutableOpResolver and register custom ops.
		
		Raises:
		  ValueError: If the calibrator was unable to open the model.
	**/
	@:native("__init__")
	public function ___init__(model_content:Dynamic, ?custom_op_registerers_by_name:Dynamic, ?custom_op_registerers_by_func:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  model_content: Content of a TF-Lite Flatbuffer file.
		  custom_op_registerers_by_name: List of str (symbol names) that take a
		    pointer to a MutableOpResolver and register custom ops.
		  custom_op_registerers_by_func: List of functions that take a pointer to a
		    MutableOpResolver and register custom ops.
		
		Raises:
		  ValueError: If the calibrator was unable to open the model.
	**/
	public function new(model_content:Dynamic, ?custom_op_registerers_by_name:Dynamic, ?custom_op_registerers_by_func:Dynamic):Void;
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
	public function _create_input_array_from_dict(signature_key:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Feed tensors to the calibrator.
	**/
	public function _feed_tensors(dataset_gen:Dynamic, resize_input:Dynamic):Dynamic;
	/**
		Calibrates the model with specified generator.
		
		Returns:
		  A model with min and max calibration stats.
		
		Args:
		  dataset_gen: A generator that generates calibration samples.
	**/
	public function calibrate(dataset_gen:Dynamic):Dynamic;
	/**
		Calibrates the model with specified generator and then quantizes it.
		
		The input shapes of the calibrator are resized with the calibration data if
		`resize_input` is set.
		
		Returns:
		  A quantized model.
		
		Args:
		  dataset_gen: A generator that generates calibration samples.
		  input_type: A tf.dtype representing the desired real-value input type.
		  output_type: A tf.dtype representing the desired real-value output type.
		  allow_float: A boolean. False if the resulting model cannot perform float
		               computation, useful when targeting an integer-only backend.
		               If False, an error will be thrown if an operation cannot be
		               quantized, otherwise the model will fallback to float ops.
		  activations_type: A tf.dtype representing the desired type for
		               activations.
		  resize_input: A boolean. True if the shape of the sample data is different
		    from the input.
		  disable_per_channel: A boolean. True if disabling per-channel
		               quantization.
	**/
	public function calibrate_and_quantize(dataset_gen:Dynamic, input_type:Dynamic, output_type:Dynamic, allow_float:Dynamic, ?activations_type:Dynamic, ?resize_input:Dynamic, ?disable_per_channel:Dynamic):Dynamic;
	/**
		Calibrates the model with specified generator and then quantizes it.
		
		Only the single op with output op_output_name will be quantized.
		The input shapes of the calibrator are resized with the calibration data.
		
		Returns:
		  A quantized model.
		
		Args:
		  dataset_gen: A generator that generates calibration samples.
		  input_type: A tf.dtype representing the desired real-value input type.
		  output_type: A tf.dtype representing the desired real-value output type.
		  allow_float: A boolean. False if the resulting model cannot perform float
		    computation, useful when targeting an integer-only backend. If False, an
		    error will be thrown if an operation cannot be quantized, otherwise the
		    model will fallback to float ops.
		  op_output_name: A string, only this op will be quantized.
		  resize_input: A boolean. True if the shape of the sample data is different
		    from the input.
	**/
	public function calibrate_and_quantize_single(dataset_gen:Dynamic, input_type:Dynamic, output_type:Dynamic, allow_float:Dynamic, op_output_name:Dynamic, ?resize_input:Dynamic):Dynamic;
}