/* This file is generated, do not edit! */
package pandas.tseries.frequencies;
@:pythonImport("pandas.tseries.frequencies", "Resolution") extern class Resolution {
	static public var RESO_DAY : Dynamic;
	static public var RESO_HR : Dynamic;
	static public var RESO_MIN : Dynamic;
	static public var RESO_MS : Dynamic;
	static public var RESO_SEC : Dynamic;
	static public var RESO_US : Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _freq_reso_map : Dynamic;
	static public var _reso_freq_map : Dynamic;
	static public var _reso_str_map : Dynamic;
	static public var _str_reso_map : Dynamic;
	/**
		Return frequency str against resolution str.
		
		Example
		-------
		>>> f.Resolution.get_freq('day')
		'D'
	**/
	static public function get_freq(resostr:Dynamic):Dynamic;
	/**
		Return frequency str against resolution str.
		
		Example
		-------
		>>> f.Resolution.get_freq_group('day')
		4000
	**/
	static public function get_freq_group(resostr:Dynamic):Dynamic;
	/**
		Return resolution str against resolution code.
		
		Example
		-------
		>>> Resolution.get_reso('second')
		2
		
		>>> Resolution.get_reso('second') == Resolution.RESO_SEC
		True
	**/
	static public function get_reso(resostr:Dynamic):Dynamic;
	/**
		Return resolution code against frequency str.
		
		Example
		-------
		>>> Resolution.get_reso_from_freq('H')
		4
		
		>>> Resolution.get_reso_from_freq('H') == Resolution.RESO_HR
		True
	**/
	static public function get_reso_from_freq(freq:Dynamic):Dynamic;
	/**
		Return resolution str against resolution code.
		
		Example
		-------
		>>> Resolution.get_str(Resolution.RESO_SEC)
		'second'
	**/
	static public function get_str(reso:Dynamic):Dynamic;
	/**
		Return resolution str against frequency str.
		
		Example
		-------
		>>> Resolution.get_str_from_freq('H')
		'hour'
	**/
	static public function get_str_from_freq(freq:Dynamic):Dynamic;
}