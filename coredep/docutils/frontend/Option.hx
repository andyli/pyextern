/* This file is generated, do not edit! */
package docutils.frontend;
@:pythonImport("docutils.frontend", "Option") extern class Option {
	static public var ACTIONS : Dynamic;
	static public var ALWAYS_TYPED_ACTIONS : Dynamic;
	static public var ATTRS : Dynamic;
	static public var CHECK_METHODS : Dynamic;
	static public var CONST_ACTIONS : Dynamic;
	static public var STORE_ACTIONS : Dynamic;
	static public var TYPED_ACTIONS : Dynamic;
	static public var TYPES : Dynamic;
	static public var TYPE_CHECKER : Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?opts:python.VarArgs<Dynamic>, ?attrs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?opts:python.VarArgs<Dynamic>, ?attrs:python.KwArgs<Dynamic>):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _check_action():Dynamic;
	public function _check_callback():Dynamic;
	public function _check_choice():Dynamic;
	public function _check_const():Dynamic;
	public function _check_dest():Dynamic;
	public function _check_nargs():Dynamic;
	public function _check_opt_strings(opts:Dynamic):Dynamic;
	public function _check_type():Dynamic;
	public function _set_attrs(attrs:Dynamic):Dynamic;
	public function _set_opt_strings(opts:Dynamic):Dynamic;
	public function check_value(opt:Dynamic, value:Dynamic):Dynamic;
	public function convert_value(opt:Dynamic, value:Dynamic):Dynamic;
	public function get_opt_string():Dynamic;
	/**
		Call the validator function on applicable settings and
		evaluate the 'overrides' option.
		Extends `optparse.Option.process`.
	**/
	public function process(opt:Dynamic, value:Dynamic, values:Dynamic, parser:Dynamic):Dynamic;
	public function take_action(action:Dynamic, dest:Dynamic, opt:Dynamic, value:Dynamic, values:Dynamic, parser:Dynamic):Dynamic;
	public function takes_value():Dynamic;
}