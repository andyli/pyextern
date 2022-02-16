/* This file is generated, do not edit! */
package tensorflow.python.distribute.combinations;
@:pythonImport("tensorflow.python.distribute.combinations", "DistributionParameter") extern class DistributionParameter {
	static public var DO_NOT_PASS_TO_THE_TEST : Dynamic;
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
		Compare `ParameterModifier` by type and `parameter_name`.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
		Compare `ParameterModifier` by type or `parameter_name`.
	**/
	public function __hash__():Dynamic;
	/**
		Construct a parameter modifier that may be specific to a parameter.
		
		Args:
		  parameter_name:  A `ParameterModifier` instance may operate on a class of
		    parameters or on a parameter with a particular name.  Only
		    `ParameterModifier` instances that are of a unique type or were
		    initialized with a unique `parameter_name` will be executed.
		    See `__eq__` and `__hash__`.
	**/
	@:native("__init__")
	public function ___init__(?parameter_name:Dynamic):Dynamic;
	/**
		Construct a parameter modifier that may be specific to a parameter.
		
		Args:
		  parameter_name:  A `ParameterModifier` instance may operate on a class of
		    parameters or on a parameter with a particular name.  Only
		    `ParameterModifier` instances that are of a unique type or were
		    initialized with a unique `parameter_name` will be executed.
		    See `__eq__` and `__hash__`.
	**/
	public function new(?parameter_name:Dynamic):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Replace user-provided arguments before they are passed to a test.
		
		This makes it possible to adjust user-provided arguments before passing
		them to the test method.
		
		Args:
		  kwargs:  The combined arguments for the test.
		  requested_parameters: The set of parameters that are defined in the
		    signature of the test method.
		
		Returns:
		  A dictionary with updates to `kwargs`.  Keys with values set to
		  `ParameterModifier.DO_NOT_PASS_TO_THE_TEST` are going to be deleted and
		  not passed to the test.
	**/
	public function modified_arguments(kwargs:Dynamic, requested_parameters:Dynamic):Dynamic;
}