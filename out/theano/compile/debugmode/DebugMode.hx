/* This file is generated, do not edit! */
package theano.compile.debugmode;
@:pythonImport("theano.compile.debugmode", "DebugMode") extern class DebugMode {
	public function _Mode__get_optimizer():Dynamic;
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
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		If any of these arguments (except optimizer) is not None, it overrides
		the class default. The linker argument is not used. It is set there to
		allow Mode.requiring() and some other fct to work with DebugMode too.
	**/
	@:native("__init__")
	public function ___init__(?optimizer:Dynamic, ?stability_patience:Dynamic, ?check_c_code:Dynamic, ?check_py_code:Dynamic, ?check_isfinite:Dynamic, ?check_preallocated_output:Dynamic, ?require_matching_strides:Dynamic, ?linker:Dynamic):Dynamic;
	/**
		If any of these arguments (except optimizer) is not None, it overrides
		the class default. The linker argument is not used. It is set there to
		allow Mode.requiring() and some other fct to work with DebugMode too.
	**/
	public function new(?optimizer:Dynamic, ?stability_patience:Dynamic, ?check_c_code:Dynamic, ?check_py_code:Dynamic, ?check_isfinite:Dynamic, ?check_preallocated_output:Dynamic, ?require_matching_strides:Dynamic, ?linker:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __setstate__(state:Dynamic):Dynamic;
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
	static public var check_c_code : Dynamic;
	static public var check_isfinite : Dynamic;
	static public var check_preallocated_output : Dynamic;
	static public var check_py_code : Dynamic;
	/**
		Create a new instance of this Mode.
		
		Keyword arguments can be provided for the linker,
		in which case its `clone` method will be called with these
		arguments.
	**/
	public function clone(?link_kwargs:Dynamic, ?optimizer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function excluding(?tags:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return an instance of `_Maker` which handles much of the debugging work.
	**/
	public function function_maker(i:Dynamic, o:Dynamic, m:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_linker_optimizer(linker:Dynamic, optimizer:Dynamic):Dynamic;
	public function including(?tags:python.VarArgs<Dynamic>):Dynamic;
	public var optimizer : Dynamic;
	/**
		Adds new optimization instances to a mode.
		
		This method adds new optimization instances to a compilation mode. It
		works like the `including()` method but takes as inputs optimization
		instances to add instead of tags.
		
		Parameters
		----------
		optimizations :
		    Every element of `optimizations` is a tuple containing an
		    optimization instance and a floating point value indicating the
		    position at which to insert the optimization in the mode.
		
		Returns
		-------
		Mode
		    Copy of the current Mode which includes the provided
		    optimizations.
	**/
	public function register(?optimizations:python.VarArgs<Dynamic>):Dynamic;
	static public var require_matching_strides : Dynamic;
	public function requiring(?tags:python.VarArgs<Dynamic>):Dynamic;
	static public var stability_patience : Dynamic;
}