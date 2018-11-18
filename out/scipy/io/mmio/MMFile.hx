/* This file is generated, do not edit! */
package scipy.io.mmio;
@:pythonImport("scipy.io.mmio", "MMFile") extern class MMFile {
	static public var DTYPES_BY_FIELD : Dynamic;
	static public var FIELD_COMPLEX : Dynamic;
	static public var FIELD_INTEGER : Dynamic;
	static public var FIELD_PATTERN : Dynamic;
	static public var FIELD_REAL : Dynamic;
	static public var FIELD_UNSIGNED : Dynamic;
	static public var FIELD_VALUES : Dynamic;
	static public var FORMAT_ARRAY : Dynamic;
	static public var FORMAT_COORDINATE : Dynamic;
	static public var FORMAT_VALUES : Dynamic;
	static public var SYMMETRY_GENERAL : Dynamic;
	static public var SYMMETRY_HERMITIAN : Dynamic;
	static public var SYMMETRY_SKEW_SYMMETRIC : Dynamic;
	static public var SYMMETRY_SYMMETRIC : Dynamic;
	static public var SYMMETRY_VALUES : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	public function ___init__(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var __slots__ : Dynamic;
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
	public var _cols : Dynamic;
	public var _entries : Dynamic;
	public var _field : Dynamic;
	static public function _field_template(field:Dynamic, precision:Dynamic):Dynamic;
	public var _format : Dynamic;
	static public function _get_symmetry(a:Dynamic):Dynamic;
	/**
		Initialize each attributes with the corresponding keyword arg value
		or a default of None
	**/
	public function _init_attrs(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an open file stream for reading based on source.
		
		If source is a file name, open it (after trying to find it with mtx and
		gzipped mtx extensions).  Otherwise, just return source.
		
		Parameters
		----------
		filespec : str or file-like
		    String giving file name or file-like object
		mode : str, optional
		    Mode with which to open file, if `filespec` is a file name.
		
		Returns
		-------
		fobj : file-like
		    Open file-like object.
		close_it : bool
		    True if the calling function should close this file when done,
		    false otherwise.
	**/
	static public function _open(filespec:Dynamic, ?mode:Dynamic):Dynamic;
	public function _parse_body(stream:Dynamic):Dynamic;
	public function _parse_header(stream:Dynamic):Dynamic;
	public var _rows : Dynamic;
	public var _symmetry : Dynamic;
	static public function _validate_field(field:Dynamic):Dynamic;
	static public function _validate_format(format:Dynamic):Dynamic;
	static public function _validate_symmetry(symmetry:Dynamic):Dynamic;
	public function _write(stream:Dynamic, a:Dynamic, ?comment:Dynamic, ?field:Dynamic, ?precision:Dynamic, ?symmetry:Dynamic):Dynamic;
	public var cols : Dynamic;
	public var entries : Dynamic;
	public var field : Dynamic;
	public var format : Dynamic;
	public var has_symmetry : Dynamic;
	/**
		Return size, storage parameters from Matrix Market file-like 'source'.
		
		Parameters
		----------
		source : str or file-like
		    Matrix Market filename (extension .mtx) or open file-like object
		
		Returns
		-------
		rows : int
		    Number of matrix rows.
		cols : int
		    Number of matrix columns.
		entries : int
		    Number of non-zero entries of a sparse matrix
		    or rows*cols for a dense matrix.
		format : str
		    Either 'coordinate' or 'array'.
		field : str
		    Either 'real', 'complex', 'pattern', or 'integer'.
		symmetry : str
		    Either 'general', 'symmetric', 'skew-symmetric', or 'hermitian'.
	**/
	static public function info(source:Dynamic):Int;
	/**
		Reads the contents of a Matrix Market file-like 'source' into a matrix.
		
		Parameters
		----------
		source : str or file-like
		    Matrix Market filename (extensions .mtx, .mtz.gz)
		    or open file object.
		
		Returns
		-------
		a : ndarray or coo_matrix
		    Dense or sparse matrix depending on the matrix format in the
		    Matrix Market file.
	**/
	public function read(source:Dynamic):Dynamic;
	static public function reader():Dynamic;
	public var rows : Dynamic;
	public var symmetry : Dynamic;
	/**
		Writes sparse or dense array `a` to Matrix Market file-like `target`.
		
		Parameters
		----------
		target : str or file-like
		    Matrix Market filename (extension .mtx) or open file-like object.
		a : array like
		    Sparse or dense 2D array.
		comment : str, optional
		    Comments to be prepended to the Matrix Market file.
		field : None or str, optional
		    Either 'real', 'complex', 'pattern', or 'integer'.
		precision : None or int, optional
		    Number of digits to display for real or complex values.
		symmetry : None or str, optional
		    Either 'general', 'symmetric', 'skew-symmetric', or 'hermitian'.
		    If symmetry is None the symmetry type of 'a' is determined by its
		    values.
	**/
	public function write(target:Dynamic, a:Dynamic, ?comment:Dynamic, ?field:Dynamic, ?precision:Dynamic, ?symmetry:Dynamic):Dynamic;
	static public function writer():Dynamic;
}