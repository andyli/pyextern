/* This file is generated, do not edit! */
package inspect;
@:pythonImport("inspect", "Signature") extern class Signature {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
		Constructs Signature from the given list of Parameter
		objects and 'return_annotation'.  All arguments are optional.
	**/
	@:native("__init__")
	public function ___init__(?parameters:Dynamic, return_annotation:Dynamic, ?__validate_parameters__:Dynamic):Dynamic;
	/**
		Constructs Signature from the given list of Parameter
		objects and 'return_annotation'.  All arguments are optional.
	**/
	public function new(?parameters:Dynamic, return_annotation:Dynamic, ?__validate_parameters__:Dynamic):Void;
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
	public function __reduce__():Dynamic;
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
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
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
		Private method. Don't use directly.
	**/
	public function _bind(args:Dynamic, kwargs:Dynamic, ?partial:Dynamic):Dynamic;
	/**
		Result of `Signature.bind` call.  Holds the mapping of arguments
		to the function's parameters.
		
		Has the following public attributes:
		
		* arguments : OrderedDict
		    An ordered mutable mapping of parameters' names to arguments' values.
		    Does not contain arguments' default values.
		* signature : Signature
		    The Signature object that created this instance.
		* args : tuple
		    Tuple of positional arguments values.
		* kwargs : dict
		    Dict of keyword arguments values.
	**/
	static public function _bound_arguments_cls(signature:Dynamic, arguments:Dynamic):Dynamic;
	public function _hash_basis():Dynamic;
	/**
		Represents a parameter in a function signature.
		
		Has the following public attributes:
		
		* name : str
		    The name of the parameter as a string.
		* default : object
		    The default value for the parameter if specified.  If the
		    parameter has no default value, this attribute is set to
		    `Parameter.empty`.
		* annotation
		    The annotation for the parameter if specified.  If the
		    parameter has no annotation, this attribute is set to
		    `Parameter.empty`.
		* kind : str
		    Describes how argument values are bound to the parameter.
		    Possible values: `Parameter.POSITIONAL_ONLY`,
		    `Parameter.POSITIONAL_OR_KEYWORD`, `Parameter.VAR_POSITIONAL`,
		    `Parameter.KEYWORD_ONLY`, `Parameter.VAR_KEYWORD`.
	**/
	static public function _parameter_cls(name:Dynamic, kind:Dynamic, _default:Dynamic, annotation:Dynamic):Dynamic;
	public var _parameters : Dynamic;
	public var _return_annotation : Dynamic;
	/**
		Get a BoundArguments object, that maps the passed `args`
		and `kwargs` to the function's signature.  Raises `TypeError`
		if the passed arguments can not be bound.
	**/
	public function bind(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Get a BoundArguments object, that partially maps the
		passed `args` and `kwargs` to the function's signature.
		Raises `TypeError` if the passed arguments can not be bound.
	**/
	public function bind_partial(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Marker object for Signature.empty and Parameter.empty.
	**/
	static public function empty():Dynamic;
	/**
		Constructs Signature for the given builtin function.
	**/
	static public function from_builtin(func:Dynamic):Dynamic;
	/**
		Constructs Signature for the given callable object.
	**/
	static public function from_callable(obj:Dynamic, ?follow_wrapped:Dynamic):Dynamic;
	/**
		Constructs Signature for the given python function.
	**/
	static public function from_function(func:Dynamic):Dynamic;
	public var parameters : Dynamic;
	/**
		Creates a customized copy of the Signature.
		Pass 'parameters' and/or 'return_annotation' arguments
		to override them in the new copy.
	**/
	public function replace(?parameters:Dynamic, ?return_annotation:Dynamic):Dynamic;
	public var return_annotation : Dynamic;
}