/* This file is generated, do not edit! */
package matplotlib.axes._base;
@:pythonImport("matplotlib.axes._base", "_process_plot_var_args") extern class _Process_plot_var_args {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(axes:Dynamic, ?command:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(axes:Dynamic, ?command:Dynamic):Void;
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
	/**
		Only advance the cycler if the cycler has information that
		is not specified in any of the supplied tuple of dicts.
		Ignore any keys specified in the `ignore` set.
		
		Returns a copy of defaults dictionary if there are any
		keys that are not found in any of the supplied dictionaries.
		If the supplied dictionaries have non-None values for
		everything the property cycler has, then just return
		an empty dictionary. Ignored keys are excluded from the
		returned dictionary.
	**/
	public function _getdefaults(ignore:Dynamic, ?kwargs:python.VarArgs<Dynamic>):Dynamic;
	public function _grab_next_args(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _makefill(x:Dynamic, y:Dynamic, kw:Dynamic, kwargs:Dynamic):Dynamic;
	public function _makeline(x:Dynamic, y:Dynamic, kw:Dynamic, kwargs:Dynamic):Dynamic;
	public function _plot_args(tup:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Given a defaults dictionary, and any other dictionaries,
		update those other dictionaries with information in defaults if
		none of the other dictionaries contains that information.
	**/
	public function _setdefaults(defaults:Dynamic, ?kwargs:python.VarArgs<Dynamic>):Dynamic;
	public function _xy_from_xy(x:Dynamic, y:Dynamic):Dynamic;
	public function set_lineprops(line:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_patchprops(fill_poly:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_prop_cycle(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}