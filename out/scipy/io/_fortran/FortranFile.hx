/* This file is generated, do not edit! */
package scipy.io._fortran;
@:pythonImport("scipy.io._fortran", "FortranFile") extern class FortranFile {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(type:Dynamic, value:Dynamic, tb:Dynamic):Dynamic;
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
	public function __init__(filename:Dynamic, ?mode:Dynamic, ?header_dtype:Dynamic):Dynamic;
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
	public function _read_size():Dynamic;
	/**
		Closes the file. It is unsupported to call any other methods off this
		object after closing it. Note that this class supports the 'with'
		statement in modern versions of Python, to call this automatically
	**/
	public function close():Dynamic;
	/**
		Reads a record of a given type from the file, defaulting to an integer
		type (INTEGER*4 in Fortran)
		
		Parameters
		----------
		dtype : dtype, optional
		    Data type specifying the size and endiness of the data.
		
		Returns
		-------
		data : ndarray
		    A one-dimensional array object.
		
		See Also
		--------
		read_reals
		read_record
	**/
	public function read_ints(?dtype:Dynamic):Dynamic;
	/**
		Reads a record of a given type from the file, defaulting to a floating
		point number (real*8 in Fortran)
		
		Parameters
		----------
		dtype : dtype, optional
		    Data type specifying the size and endiness of the data.
		
		Returns
		-------
		data : ndarray
		    A one-dimensional array object.
		
		See Also
		--------
		read_ints
		read_record
	**/
	public function read_reals(?dtype:Dynamic):Dynamic;
	/**
		Reads a record of a given type from the file.
		
		Parameters
		----------
		dtype : dtype, optional
		    Data type specifying the size and endiness of the data.
		
		Returns
		-------
		data : ndarray
		    A one-dimensional array object.
		
		Notes
		-----
		If the record contains a multi-dimensional array, calling reshape or
		resize will restructure the array to the correct size.
		Since Fortran multidimensional arrays are stored in column-major format,
		this may have some non-intuitive consequences. If the variable was
		declared as 'INTEGER var(5,4)', for example, var could be read with
		'read_record(dtype=np.integer).reshape( (4,5) )' since Python uses
		row-major ordering of indices.
		
		One can transpose to obtain the indices in the same order as in Fortran.
		
		For records that contain several variables or mixed types (as opposed
		to single scalar or array types), it is possible to specify a dtype
		with mixed types:
		
		>>> record = f.read_record([('a', '<f4'), ('b', '<i4')])
		>>> record['a']  # access the variable 'a'
		5.6
		
		and if any of the variables are arrays, the shape can be specified as
		the third item in the relevant tuple:
		
		>>> record = f.read_record([('a', '<f4'), ('b', '<i4', (3,3))])
		
		Numpy also supports a short syntax for this kind of type:
		
		>>> record = f.read_record('<f4,(3,3)<i4')
		>>> record['f0']  # variables are called f0, f1, ...
		5.6
		
		
		See Also
		--------
		read_reals
		read_ints
	**/
	public function read_record(?dtype:Dynamic):Dynamic;
	/**
		Write a record (including sizes) to the file.
		
		Parameters
		----------
		s : array_like
		   The data to write.
	**/
	public function write_record(s:Dynamic):Dynamic;
}