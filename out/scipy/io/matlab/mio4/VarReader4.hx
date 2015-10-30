/* This file is generated, do not edit! */
package scipy.io.matlab.mio4;
@:pythonImport("scipy.io.matlab.mio4", "VarReader4") extern class VarReader4 {
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
	public function ___init__(file_reader:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	public function array_from_header(hdr:Dynamic, ?process:Dynamic):Dynamic;
	/**
		latin-1 text matrix (char matrix) reader
		
		Parameters
		----------
		hdr : ``VarHeader4`` instance
		
		Returns
		-------
		arr : ndarray
		    with dtype 'U1', shape given by `hdr` ``dims``
	**/
	public function read_char_array(hdr:Dynamic):Dynamic;
	/**
		Full (rather than sparse) matrix getter
		
		Read matrix (array) can be real or complex
		
		Parameters
		----------
		hdr : ``VarHeader4`` instance
		
		Returns
		-------
		arr : ndarray
		    complex array if ``hdr.is_complex`` is True, otherwise a real
		    numeric array
	**/
	public function read_full_array(hdr:Dynamic):Dynamic;
	/**
		Read and return header for variable 
	**/
	public function read_header():Dynamic;
	/**
		Read and return sparse matrix type
		
		Parameters
		----------
		hdr : ``VarHeader4`` instance
		
		Returns
		-------
		arr : ``scipy.sparse.coo_matrix``
		    with dtype ``float`` and shape read from the sparse matrix data
		
		Notes
		-----
		MATLAB 4 real sparse arrays are saved in a N+1 by 3 array format, where
		N is the number of non-zero values.  Column 1 values [0:N] are the
		(1-based) row indices of the each non-zero value, column 2 [0:N] are the
		column indices, column 3 [0:N] are the (real) values.  The last values
		[-1,0:2] of the rows, column indices are shape[0] and shape[1]
		respectively of the output matrix. The last value for the values column
		is a padding 0. mrows and ncols values from the header give the shape of
		the stored matrix, here [N+1, 3].  Complex data is saved as a 4 column
		matrix, where the fourth column contains the imaginary component; the
		last value is again 0.  Complex sparse data do *not* have the header
		``imagf`` field set to True; the fact that the data are complex is only
		detectable because there are 4 storage columns
	**/
	public function read_sparse_array(hdr:Dynamic):Dynamic;
	/**
		Mat4 read using header `hdr` dtype and dims
		
		Parameters
		----------
		hdr : object
		   object with attributes ``dtype``, ``dims``.  dtype is assumed to be
		   the correct endianness
		copy : bool, optional
		   copies array before return if True (default True)
		   (buffer is usually read only)
		
		Returns
		-------
		arr : ndarray
		    of dtype givem by `hdr` ``dtype`` and shape givem by `hdr` ``dims``
	**/
	public function read_sub_array(hdr:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Read the shape of the array described by the header.
		The file position after this call is unspecified.
	**/
	public function shape_from_header(hdr:Dynamic):Dynamic;
}