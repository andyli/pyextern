/* This file is generated, do not edit! */
package scipy.stats._distn_infrastructure;
@:pythonImport("scipy.stats._distn_infrastructure", "rv_frozen") extern class Rv_frozen {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(dist:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dist:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Void;
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
	public function cdf(x:Dynamic):Dynamic;
	public function entropy():Dynamic;
	public function expect(?func:Dynamic, ?lb:Dynamic, ?ub:Dynamic, ?conditional:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	public function interval(alpha:Dynamic):Dynamic;
	public function isf(q:Dynamic):Dynamic;
	public function logcdf(x:Dynamic):Dynamic;
	public function logpdf(x:Dynamic):Dynamic;
	public function logpmf(k:Dynamic):Dynamic;
	public function logsf(x:Dynamic):Dynamic;
	public function mean():Dynamic;
	public function median():Dynamic;
	public function moment(n:Dynamic):Dynamic;
	public function pdf(x:Dynamic):Dynamic;
	public function pmf(k:Dynamic):Dynamic;
	public function ppf(q:Dynamic):Dynamic;
	public var random_state : Dynamic;
	public function rvs(?size:Dynamic, ?random_state:Dynamic):Dynamic;
	public function sf(x:Dynamic):Dynamic;
	public function stats(?moments:Dynamic):Dynamic;
	public function std():Dynamic;
	@:native("var")
	public function _var():Dynamic;
}