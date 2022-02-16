/* This file is generated, do not edit! */
package numpy.ctypeslib;
@:pythonImport("numpy.ctypeslib") extern class Ctypeslib_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ctype_from_dtype(dtype:Dynamic):Dynamic;
	static public function _ctype_from_dtype_scalar(dtype:Dynamic):Dynamic;
	static public function _ctype_from_dtype_structured(dtype:Dynamic):Dynamic;
	static public function _ctype_from_dtype_subarray(dtype:Dynamic):Dynamic;
	/**
		Create an ndarray of the given element type and shape 
	**/
	static public function _ctype_ndarray(element_type:Dynamic, shape:Dynamic):Dynamic;
	static public var _flagdict : Dynamic;
	static public var _flagnames : Dynamic;
	static public function _flags_fromnum(num:Dynamic):Dynamic;
	/**
		Return a dictionary mapping native endian scalar dtype to ctypes types
	**/
	static public function _get_scalar_type_map():Dynamic;
	static public function _num_fromflags(flaglist:Dynamic):Dynamic;
	static public var _pointer_type_cache : Dynamic;
	static public var _scalar_type_map : Dynamic;
	/**
		Create a numpy array from a ctypes array or POINTER.
		
		The numpy array shares the memory with the ctypes object.
		
		The shape parameter must be given if converting from a ctypes POINTER.
		The shape parameter is ignored if converting from a ctypes array
	**/
	static public function as_array(obj:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		Create and return a ctypes object from a numpy array.  Actually
		anything that exposes the __array_interface__ is accepted.
	**/
	static public function as_ctypes(obj:Dynamic):Dynamic;
	/**
		Convert a dtype into a ctypes type.
		
		Parameters
		----------
		dtype : dtype
		    The dtype to convert
		
		Returns
		-------
		ctype
		    A ctype scalar, union, array, or struct
		
		Raises
		------
		NotImplementedError
		    If the conversion is not possible
		
		Notes
		-----
		This function does not losslessly round-trip in either direction.
		
		``np.dtype(as_ctypes_type(dt))`` will:
		
		 - insert padding fields
		 - reorder fields to be sorted by offset
		 - discard field titles
		
		``as_ctypes_type(np.dtype(ctype))`` will:
		
		 - discard the class names of `ctypes.Structure`\ s and
		   `ctypes.Union`\ s
		 - convert single-element `ctypes.Union`\ s into single-element
		   `ctypes.Structure`\ s
		 - insert padding fields
	**/
	static public function as_ctypes_type(dtype:Dynamic):Dynamic;
	/**
		asarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'K'.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray with matching dtype and order.  If `a` is a
		    subclass of ndarray, a base class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.recarray, np.ndarray)
		True
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frombuffer(buffer, dtype=float, count=-1, offset=0, *, like=None)
		
		Interpret a buffer as a 1-dimensional array.
		
		Parameters
		----------
		buffer : buffer_like
		    An object that exposes the buffer interface.
		dtype : data-type, optional
		    Data-type of the returned array; default: float.
		count : int, optional
		    Number of items to read. ``-1`` means all data in the buffer.
		offset : int, optional
		    Start reading the buffer from this offset (in bytes); default: 0.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		
		Notes
		-----
		If the buffer has data that is not in machine byte-order, this should
		be specified as part of the data-type, e.g.::
		
		  >>> dt = np.dtype(int)
		  >>> dt = dt.newbyteorder('>')
		  >>> np.frombuffer(buf, dtype=dt) # doctest: +SKIP
		
		The data of the resulting array will not be byteswapped, but will be
		interpreted correctly.
		
		Examples
		--------
		>>> s = b'hello world'
		>>> np.frombuffer(s, dtype='S1', count=5, offset=6)
		array([b'w', b'o', b'r', b'l', b'd'], dtype='|S1')
		
		>>> np.frombuffer(b'\x01\x02', dtype=np.uint8)
		array([1, 2], dtype=uint8)
		>>> np.frombuffer(b'\x01\x02\x03\x04\x05', dtype=np.uint8, count=3)
		array([1, 2, 3], dtype=uint8)
	**/
	static public function frombuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		It is possible to load a library using
		
		>>> lib = ctypes.cdll[<full_path_name>] # doctest: +SKIP
		
		But there are cross-platform considerations, such as library file extensions,
		plus the fact Windows will just load the first library it finds with that name.
		NumPy supplies the load_library function as a convenience.
		
		.. versionchanged:: 1.20.0
		    Allow libname and loader_path to take any
		    :term:`python:path-like object`.
		
		Parameters
		----------
		libname : path-like
		    Name of the library, which can have 'lib' as a prefix,
		    but without an extension.
		loader_path : path-like
		    Where the library can be found.
		
		Returns
		-------
		ctypes.cdll[libpath] : library object
		   A ctypes library object
		
		Raises
		------
		OSError
		    If there is no library with the expected extension, or the
		    library is defective and cannot be loaded.
	**/
	static public function load_library(libname:Dynamic, loader_path:Dynamic):Dynamic;
	/**
		Array-checking restype/argtypes.
		
		An ndpointer instance is used to describe an ndarray in restypes
		and argtypes specifications.  This approach is more flexible than
		using, for example, ``POINTER(c_double)``, since several restrictions
		can be specified, which are verified upon calling the ctypes function.
		These include data type, number of dimensions, shape and flags.  If a
		given array does not satisfy the specified restrictions,
		a ``TypeError`` is raised.
		
		Parameters
		----------
		dtype : data-type, optional
		    Array data-type.
		ndim : int, optional
		    Number of array dimensions.
		shape : tuple of ints, optional
		    Array shape.
		flags : str or tuple of str
		    Array flags; may be one or more of:
		
		      - C_CONTIGUOUS / C / CONTIGUOUS
		      - F_CONTIGUOUS / F / FORTRAN
		      - OWNDATA / O
		      - WRITEABLE / W
		      - ALIGNED / A
		      - WRITEBACKIFCOPY / X
		      - UPDATEIFCOPY / U
		
		Returns
		-------
		klass : ndpointer type object
		    A type object, which is an ``_ndtpr`` instance containing
		    dtype, ndim, shape and flags information.
		
		Raises
		------
		TypeError
		    If a given array does not satisfy the specified restrictions.
		
		Examples
		--------
		>>> clib.somefunc.argtypes = [np.ctypeslib.ndpointer(dtype=np.float64,
		...                                                  ndim=1,
		...                                                  flags='C_CONTIGUOUS')]
		... #doctest: +SKIP
		>>> clib.somefunc(np.array([1, 2, 3], dtype=np.float64))
		... #doctest: +SKIP
	**/
	static public function ndpointer(?dtype:Dynamic, ?ndim:Dynamic, ?shape:Dynamic, ?flags:Dynamic):Dynamic;
}