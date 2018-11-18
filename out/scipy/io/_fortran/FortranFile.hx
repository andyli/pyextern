/* This file is generated, do not edit! */
package scipy.io._fortran;
@:pythonImport("scipy.io._fortran", "FortranFile") extern class FortranFile {
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
	@:native("__init__")
	public function ___init__(filename:Dynamic, ?mode:Dynamic, ?header_dtype:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(filename:Dynamic, ?mode:Dynamic, ?header_dtype:Dynamic):Void;
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
	public function _read_size():Dynamic;
	/**
		Closes the file. It is unsupported to call any other methods off this
		object after closing it. Note that this class supports the 'with'
		statement in modern versions of Python, to call this automatically
	**/
	public function close():Dynamic;
	/**
		Reads a record of a given type from the file, defaulting to an integer
		type (``INTEGER*4`` in Fortran).
		
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
		point number (``real*8`` in Fortran).
		
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
		*dtypes : dtypes, optional
		    Data type(s) specifying the size and endiness of the data.
		
		Returns
		-------
		data : ndarray
		    A one-dimensional array object.
		
		Notes
		-----
		If the record contains a multi-dimensional array, you can specify
		the size in the dtype. For example::
		
		    INTEGER var(5,4)
		
		can be read with::
		
		    read_record('(4,5)i4').T
		
		Note that this function does **not** assume the file data is in Fortran
		column major order, so you need to (i) swap the order of dimensions
		when reading and (ii) transpose the resulting array.
		
		Alternatively, you can read the data as a 1D array and handle the
		ordering yourself. For example::
		
		    read_record('i4').reshape(5, 4, order='F')
		
		For records that contain several variables or mixed types (as opposed
		to single scalar or array types), give them as separate arguments::
		
		    double precision :: a
		    integer :: b
		    write(1) a, b
		
		    record = f.read_record('<f4', '<i4')
		    a = record[0]  # first number
		    b = record[1]  # second number
		
		and if any of the variables are arrays, the shape can be specified as
		the third item in the relevant dtype::
		
		    double precision :: a
		    integer :: b(3,4)
		    write(1) a, b
		
		    record = f.read_record('<f4', np.dtype(('<i4', (4, 3))))
		    a = record[0]
		    b = record[1].T
		
		Numpy also supports a short syntax for this kind of type::
		
		    record = f.read_record('<f4', '(3,3)<i4')
		
		See Also
		--------
		read_reals
		read_ints
	**/
	public function read_record(?dtypes:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Write a record (including sizes) to the file.
		
		Parameters
		----------
		*items : array_like
		    The data arrays to write.
		
		Notes
		-----
		Writes data items to a file::
		
		    write_record(a.T, b.T, c.T, ...)
		
		    write(1) a, b, c, ...
		
		Note that data in multidimensional arrays is written in
		row-major order --- to make them read correctly by Fortran
		programs, you need to transpose the arrays yourself when
		writing them.
	**/
	public function write_record(?items:python.VarArgs<Dynamic>):Dynamic;
}