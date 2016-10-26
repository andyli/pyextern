/* This file is generated, do not edit! */
package tensorflow.python.ops.template;
@:pythonImport("tensorflow.python.ops.template", "Template") extern class Template {
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a template for the given function.
		
		Args:
		  name: A name for the scope created by this template. The
		    name will be made unique by appending `_N` to the it (see how
		    `tf.variable_op_scope` treats the `default_name` for details).
		  func: The function to apply each time.
		  create_scope_now: Whether to create the scope at Template construction
		    time, rather than first call. Defaults to false. Creating the scope at
		    construction time may be more convenient if the template is to passed
		    through much lower level code, and you want to be sure of the scope
		    name without knowing exactly where it will be first called. If set to
		    True, the scope will be created in the constructor, and all subsequent
		    times in __call__, leading to a trailing numeral being added to the
		    names of all created Tensors. If set to False, the scope will be created
		    at the first call location.
		  unique_name: When used, it overrides name_ and is not made unique. If a
		    template of the same scope/unique_name already exists and reuse is
		    false, an error is raised. Defaults to None.
		
		Raises:
		  ValueError: if the name is None.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, func:Dynamic, ?create_scope_now:Dynamic, ?unique_name:Dynamic):Dynamic;
	/**
		Creates a template for the given function.
		
		Args:
		  name: A name for the scope created by this template. The
		    name will be made unique by appending `_N` to the it (see how
		    `tf.variable_op_scope` treats the `default_name` for details).
		  func: The function to apply each time.
		  create_scope_now: Whether to create the scope at Template construction
		    time, rather than first call. Defaults to false. Creating the scope at
		    construction time may be more convenient if the template is to passed
		    through much lower level code, and you want to be sure of the scope
		    name without knowing exactly where it will be first called. If set to
		    True, the scope will be created in the constructor, and all subsequent
		    times in __call__, leading to a trailing numeral being added to the
		    names of all created Tensors. If set to False, the scope will be created
		    at the first call location.
		  unique_name: When used, it overrides name_ and is not made unique. If a
		    template of the same scope/unique_name already exists and reuse is
		    false, an error is raised. Defaults to None.
		
		Raises:
		  ValueError: if the name is None.
	**/
	public function new(name:Dynamic, func:Dynamic, ?create_scope_now:Dynamic, ?unique_name:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _call_func(args:Dynamic, kwargs:Dynamic, check_for_new_variables:Dynamic):Dynamic;
	/**
		Returns the variable scope object created by this Template.
	**/
	public var var_scope : Dynamic;
}