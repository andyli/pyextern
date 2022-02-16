/* This file is generated, do not edit! */
package matplotlib.tri.triinterpolate;
@:pythonImport("matplotlib.tri.triinterpolate", "_Sparse_Matrix_coo") extern class _Sparse_Matrix_coo {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Create a sparse matrix in coo format.
		*vals*: arrays of values of non-null entries of the matrix
		*rows*: int arrays of rows of non-null entries of the matrix
		*cols*: int arrays of cols of non-null entries of the matrix
		*shape*: 2-tuple (n, m) of matrix shape
	**/
	@:native("__init__")
	public function ___init__(vals:Dynamic, rows:Dynamic, cols:Dynamic, shape:Dynamic):Dynamic;
	/**
		Create a sparse matrix in coo format.
		*vals*: arrays of values of non-null entries of the matrix
		*rows*: int arrays of rows of non-null entries of the matrix
		*cols*: int arrays of cols of non-null entries of the matrix
		*shape*: 2-tuple (n, m) of matrix shape
	**/
	public function new(vals:Dynamic, rows:Dynamic, cols:Dynamic, shape:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Compress rows, cols, vals / summing duplicates. Sort for csc format.
	**/
	public function compress_csc():Dynamic;
	/**
		Compress rows, cols, vals / summing duplicates. Sort for csr format.
	**/
	public function compress_csr():Dynamic;
	/**
		Return the (dense) vector of the diagonal elements.
	**/
	public var diag : Dynamic;
	/**
		Dot product of self by a vector *V* in sparse-dense to dense format
		*V* dense vector of shape (self.m,).
	**/
	public function dot(V:Dynamic):Dynamic;
	/**
		Return a dense matrix representing self, mainly for debugging purposes.
	**/
	public function to_dense():Dynamic;
}