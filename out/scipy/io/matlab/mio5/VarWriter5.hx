/* This file is generated, do not edit! */
package scipy.io.matlab.mio5;
@:pythonImport("scipy.io.matlab.mio5", "VarWriter5") extern class VarWriter5 {
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
	public function _write_items(arr:Dynamic):Dynamic;
	static public var mat_tag : Dynamic;
	public function update_matrix_tag(start_pos:Dynamic):Dynamic;
	/**
		Write `arr` to stream at top and sub levels
		
		Parameters
		----------
		arr : array_like
		    array-like object to create writer for
	**/
	public function write(arr:Dynamic):Dynamic;
	public function write_bytes(arr:Dynamic):Dynamic;
	public function write_cells(arr:Dynamic):Dynamic;
	/**
		Write string array `arr` with given `codec`
		        
	**/
	public function write_char(arr:Dynamic, ?codec:Dynamic):Dynamic;
	/**
		write tag and data 
	**/
	public function write_element(arr:Dynamic, ?mdtype:Dynamic):Dynamic;
	public function write_empty_struct():Dynamic;
	/**
		Write header for given data options
		shape : sequence
		   array shape
		mclass      - mat5 matrix class
		is_complex  - True if matrix is complex
		is_logical  - True if matrix is logical
		nzmax        - max non zero elements for sparse arrays
		
		We get the name and the global flag from the object, and reset
		them to defaults after we've used them
	**/
	public function write_header(shape:Dynamic, mclass:Dynamic, ?is_complex:Dynamic, ?is_logical:Dynamic, ?nzmax:Dynamic):Dynamic;
	public function write_numeric(arr:Dynamic):Dynamic;
	/**
		Same as writing structs, except different mx class, and extra
		classname element after header
	**/
	public function write_object(arr:Dynamic):Dynamic;
	public function write_regular_element(arr:Dynamic, mdtype:Dynamic, byte_count:Dynamic):Dynamic;
	public function write_smalldata_element(arr:Dynamic, mdtype:Dynamic, byte_count:Dynamic):Dynamic;
	/**
		Sparse matrices are 2D
		        
	**/
	public function write_sparse(arr:Dynamic):Dynamic;
	public function write_string(s:Dynamic):Dynamic;
	public function write_struct(arr:Dynamic):Dynamic;
	/**
		Write variable at top level of mat file
		
		Parameters
		----------
		arr : array_like
		    array-like object to create writer for
		name : str, optional
		    name as it will appear in matlab workspace
		    default is empty string
		is_global : {False, True}, optional
		    whether variable will be global on load into matlab
	**/
	public function write_top(arr:Dynamic, name:Dynamic, is_global:Dynamic):Dynamic;
}