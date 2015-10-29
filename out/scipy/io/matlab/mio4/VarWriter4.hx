/* This file is generated, do not edit! */
package scipy.io.matlab.mio4;
@:pythonImport("scipy.io.matlab.mio4", "VarWriter4") extern class VarWriter4 {
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
	public function ___init__(file_writer:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Write matrix `arr`, with name `name`
		
		Parameters
		----------
		arr : array_like
		   array to write
		name : str
		   name in matlab workspace
	**/
	public function write(arr:Dynamic, name:Dynamic):Dynamic;
	public function write_bytes(arr:Dynamic):Dynamic;
	public function write_char(arr:Dynamic, name:Dynamic):Dynamic;
	/**
		Write header for given data options
		
		Parameters
		----------
		name : str
		    name of variable
		shape : sequence
		   Shape of array as it will be read in matlab
		P : int, optional
		    code for mat4 data type, one of ``miDOUBLE, miSINGLE, miINT32,
		    miINT16, miUINT16, miUINT8``
		T : int, optional
		    code for mat4 matrix class, one of ``mxFULL_CLASS, mxCHAR_CLASS,
		    mxSPARSE_CLASS``
		imagf : int, optional
		    flag indicating complex
	**/
	public function write_header(name:Dynamic, shape:Dynamic, ?P:Dynamic, ?T:Dynamic, ?imagf:Dynamic):Dynamic;
	public function write_numeric(arr:Dynamic, name:Dynamic):Dynamic;
	/**
		Sparse matrices are 2D
		
		See docstring for VarReader4.read_sparse_array
	**/
	public function write_sparse(arr:Dynamic, name:Dynamic):Dynamic;
	public function write_string(s:Dynamic):Dynamic;
}