/* This file is generated, do not edit! */
package scipy.sparse._index;
@:pythonImport("scipy.sparse._index", "IndexMixin") extern class IndexMixin {
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
	public function __getitem__(key:Dynamic):Dynamic;
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
	public function __setitem__(key:Dynamic, x:Dynamic):Dynamic;
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
		Convert `idx` to a valid index for an axis with a given length.
		
		Subclasses that need special validation can override this method.
	**/
	public function _asindices(idx:Dynamic, length:Dynamic):Dynamic;
	public function _get_arrayXarray(row:Dynamic, col:Dynamic):Dynamic;
	public function _get_arrayXint(row:Dynamic, col:Dynamic):Dynamic;
	public function _get_arrayXslice(row:Dynamic, col:Dynamic):Dynamic;
	public function _get_columnXarray(row:Dynamic, col:Dynamic):Dynamic;
	public function _get_intXarray(row:Dynamic, col:Dynamic):Dynamic;
	public function _get_intXint(row:Dynamic, col:Dynamic):Dynamic;
	public function _get_intXslice(row:Dynamic, col:Dynamic):Dynamic;
	public function _get_sliceXarray(row:Dynamic, col:Dynamic):Dynamic;
	public function _get_sliceXint(row:Dynamic, col:Dynamic):Dynamic;
	public function _get_sliceXslice(row:Dynamic, col:Dynamic):Dynamic;
	public function _set_arrayXarray(row:Dynamic, col:Dynamic, x:Dynamic):Dynamic;
	public function _set_arrayXarray_sparse(row:Dynamic, col:Dynamic, x:Dynamic):Dynamic;
	public function _set_intXint(row:Dynamic, col:Dynamic, x:Dynamic):Dynamic;
	public function _validate_indices(key:Dynamic):Dynamic;
	/**
		Return a copy of column i of the matrix, as a (m x 1) column vector.
		        
	**/
	public function getcol(i:Dynamic):Dynamic;
	/**
		Return a copy of row i of the matrix, as a (1 x n) row vector.
		        
	**/
	public function getrow(i:Dynamic):Dynamic;
}