/* This file is generated, do not edit! */
package tensorflow.python.estimator.export.export_output;
@:pythonImport("tensorflow.python.estimator.export.export_output", "RegressionOutput") extern class RegressionOutput {
	static public var _SEPARATOR_CHAR : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructor for `RegressionOutput`.
		
		Args:
		  value: a float `Tensor` giving the predicted values.  Required.
		
		Raises:
		  ValueError: if the value is not a `Tensor` with dtype tf.float32.
	**/
	@:native("__init__")
	public function ___init__(value:Dynamic):Dynamic;
	/**
		Constructor for `RegressionOutput`.
		
		Args:
		  value: a float `Tensor` giving the predicted values.  Required.
		
		Raises:
		  ValueError: if the value is not a `Tensor` with dtype tf.float32.
	**/
	public function new(value:Dynamic):Void;
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
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var _estimator_api_names : Dynamic;
	static public var _estimator_api_names_v1 : Dynamic;
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
	public var value : Dynamic;
}