/* This file is generated, do not edit! */
package scipy.io.harwell_boeing.hb;
@:pythonImport("scipy.io.harwell_boeing.hb", "HBInfo") extern class HBInfo {
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
		Do not use this directly, but the class ctrs (from_* functions).
	**/
	@:native("__init__")
	public function ___init__(title:Dynamic, key:Dynamic, total_nlines:Dynamic, pointer_nlines:Dynamic, indices_nlines:Dynamic, values_nlines:Dynamic, mxtype:Dynamic, nrows:Dynamic, ncols:Dynamic, nnon_zeros:Dynamic, pointer_format_str:Dynamic, indices_format_str:Dynamic, values_format_str:Dynamic, ?right_hand_sides_nlines:Dynamic, ?nelementals:Dynamic):Dynamic;
	/**
		Do not use this directly, but the class ctrs (from_* functions).
	**/
	public function new(title:Dynamic, key:Dynamic, total_nlines:Dynamic, pointer_nlines:Dynamic, indices_nlines:Dynamic, values_nlines:Dynamic, mxtype:Dynamic, nrows:Dynamic, ncols:Dynamic, nnon_zeros:Dynamic, pointer_format_str:Dynamic, indices_format_str:Dynamic, values_format_str:Dynamic, ?right_hand_sides_nlines:Dynamic, ?nelementals:Dynamic):Void;
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
	/**
		Gives the header corresponding to this instance as a string.
	**/
	public function dump():Dynamic;
	/**
		Create a HBInfo instance from an existing sparse matrix.
		
		Parameters
		----------
		m : sparse matrix
		    the HBInfo instance will derive its parameters from m
		title : str
		    Title to put in the HB header
		key : str
		    Key
		mxtype : HBMatrixType
		    type of the input matrix
		fmt : dict
		    not implemented
		
		Returns
		-------
		hb_info : HBInfo instance
	**/
	static public function from_data(m:Dynamic, ?title:Dynamic, ?key:Dynamic, ?mxtype:Dynamic, ?fmt:Dynamic):Dynamic;
	/**
		Create a HBInfo instance from a file object containing a matrix in the
		HB format.
		
		Parameters
		----------
		fid : file-like matrix
		    File or file-like object containing a matrix in the HB format.
		
		Returns
		-------
		hb_info : HBInfo instance
	**/
	static public function from_file(fid:Dynamic):Dynamic;
}