/* This file is generated, do not edit! */
package pandas.io.stata;
@:pythonImport("pandas.io.stata", "StataStrLWriter") extern class StataStrLWriter {
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
	public function ___init__(df:Dynamic, columns:Dynamic, ?version:Dynamic, ?byteorder:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(df:Dynamic, columns:Dynamic, ?version:Dynamic, ?byteorder:Dynamic):Void;
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
	public function _convert_key(key:Dynamic):Dynamic;
	/**
		Python 3 compatibility shim
	**/
	public function _encode(s:Dynamic):Dynamic;
	/**
		Generates the binary blob of GSOs that is written to the dta file.
		
		Parameters
		----------
		gso_table : OrderedDict
		    Ordered dictionary (str, vo)
		
		Returns
		-------
		gso : bytes
		    Binary content of dta file to be placed between strl tags
		
		Notes
		-----
		Output format depends on dta version.  117 uses two uint32s to
		express v and o while 118+ uses a uint32 for v and a uint64 for o.
	**/
	public function generate_blob(gso_table:Dynamic):Dynamic;
	/**
		Generates the GSO lookup table for the DataFRame
		
		Returns
		-------
		gso_table : OrderedDict
		    Ordered dictionary using the string found as keys
		    and their lookup position (v,o) as values
		gso_df : DataFrame
		    DataFrame where strl columns have been converted to
		    (v,o) values
		
		Notes
		-----
		Modifies the DataFrame in-place.
		
		The DataFrame returned encodes the (v,o) values as uint64s. The
		encoding depends on teh dta version, and can be expressed as
		
		enc = v + o * 2 ** (o_size * 8)
		
		so that v is stored in the lower bits and o is in the upper
		bits. o_size is
		
		  * 117: 4
		  * 118: 6
		  * 119: 5
	**/
	public function generate_table():Dynamic;
}