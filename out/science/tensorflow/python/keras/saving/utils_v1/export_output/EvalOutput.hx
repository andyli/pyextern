/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.utils_v1.export_output;
@:pythonImport("tensorflow.python.keras.saving.utils_v1.export_output", "EvalOutput") extern class EvalOutput {
	static public var LOSS_NAME : Dynamic;
	static public var METRICS_NAME : Dynamic;
	static public var METRIC_UPDATE_SUFFIX : Dynamic;
	static public var METRIC_VALUE_SUFFIX : Dynamic;
	static public var PREDICTIONS_NAME : Dynamic;
	static public var _SEPARATOR_CHAR : Dynamic;
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
		Constructor for SupervisedOutput (ie, Train or Eval output).
		
		Args:
		  loss: dict of Tensors or single Tensor representing calculated loss.
		  predictions: dict of Tensors or single Tensor representing model
		    predictions.
		  metrics: Dict of metric results keyed by name.
		    The values of the dict can be one of the following:
		    (1) instance of `Metric` class.
		    (2) (metric_value, update_op) tuples, or a single tuple.
		    metric_value must be a Tensor, and update_op must be a Tensor or Op.
		
		Raises:
		  ValueError: if any of the outputs' dict keys are not strings or tuples of
		    strings or the values are not Tensors (or Operations in the case of
		    update_op).
	**/
	@:native("__init__")
	public function ___init__(?loss:Dynamic, ?predictions:Dynamic, ?metrics:Dynamic):Dynamic;
	/**
		Constructor for SupervisedOutput (ie, Train or Eval output).
		
		Args:
		  loss: dict of Tensors or single Tensor representing calculated loss.
		  predictions: dict of Tensors or single Tensor representing model
		    predictions.
		  metrics: Dict of metric results keyed by name.
		    The values of the dict can be one of the following:
		    (1) instance of `Metric` class.
		    (2) (metric_value, update_op) tuples, or a single tuple.
		    metric_value must be a Tensor, and update_op must be a Tensor or Op.
		
		Raises:
		  ValueError: if any of the outputs' dict keys are not strings or tuples of
		    strings or the values are not Tensors (or Operations in the case of
		    update_op).
	**/
	public function new(?loss:Dynamic, ?predictions:Dynamic, ?metrics:Dynamic):Void;
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
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function _check_output_key(key:Dynamic, error_label:Dynamic):Dynamic;
	/**
		Returns a function that produces a SignatureDef given desired outputs.
	**/
	public function _get_signature_def_fn():Dynamic;
	static public var _loss : Dynamic;
	static public var _metrics : Dynamic;
	static public var _predictions : Dynamic;
	public function _prefix_key(key:Dynamic, output_name:Dynamic):Dynamic;
	/**
		Prepend output_name to the output_dict keys if it doesn't exist.
		
		This produces predictable prefixes for the pre-determined outputs
		of SupervisedOutput.
		
		Args:
		  output_dict: dict of string to Tensor, assumed valid.
		  output_name: prefix string to prepend to existing keys.
		
		Returns:
		  dict with updated keys and existing values.
	**/
	public function _prefix_output_keys(output_dict:Dynamic, output_name:Dynamic):Dynamic;
	/**
		Handle the saving of metrics.
		
		Metrics is either a tuple of (value, update_op), or a dict of such tuples.
		Here, we separate out the tuples and create a dict with names to tensors.
		
		Args:
		  metrics: Dict of metric results keyed by name.
		    The values of the dict can be one of the following:
		    (1) instance of `Metric` class.
		    (2) (metric_value, update_op) tuples, or a single tuple.
		    metric_value must be a Tensor, and update_op must be a Tensor or Op.
		
		Returns:
		  dict of output_names to tensors
		
		Raises:
		  ValueError: if the dict key is not a string, or the metric values or ops
		    are not tensors.
	**/
	public function _wrap_and_check_metrics(metrics:Dynamic):Dynamic;
	/**
		Wraps raw tensors as dicts and checks type.
		
		Note that we create a new dict here so that we can overwrite the keys
		if necessary.
		
		Args:
		  outputs: A `Tensor` or a dict of string to `Tensor`.
		  single_output_default_name: A string key for use in the output dict
		    if the provided `outputs` is a raw tensor.
		  error_label: descriptive string for use in error messages. If none,
		    single_output_default_name will be used.
		
		Returns:
		  A dict of tensors
		
		Raises:
		  ValueError: if the outputs dict keys are not strings or tuples of strings
		    or the values are not Tensors.
	**/
	public function _wrap_and_check_outputs(outputs:Dynamic, single_output_default_name:Dynamic, ?error_label:Dynamic):Dynamic;
	/**
		Generate a SignatureDef proto for inclusion in a MetaGraphDef.
		
		The SignatureDef will specify outputs as described in this ExportOutput,
		and will use the provided receiver_tensors as inputs.
		
		Args:
		  receiver_tensors: a `Tensor`, or a dict of string to `Tensor`, specifying
		    input nodes that will be fed.
	**/
	public function as_signature_def(receiver_tensors:Dynamic):Dynamic;
	public var loss : Dynamic;
	public var metrics : Dynamic;
	public var predictions : Dynamic;
}