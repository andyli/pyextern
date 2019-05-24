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
	static public var absolute_import : Dynamic;
	/**
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		`ctypes_load_library` is deprecated, use `load_library` instead!
		
		
		It is possible to load a library using 
		>>> lib = ctypes.cdll[<full_path_name>]
		
		But there are cross-platform considerations, such as library file extensions,
		plus the fact Windows will just load the first library it finds with that name.  
		NumPy supplies the load_library function as a convenience.
		
		Parameters
		----------
		libname : str
		    Name of the library, which can have 'lib' as a prefix,
		    but without an extension.
		loader_path : str
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
	static public function ctypes_load_library(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Issues a DeprecationWarning, adds warning to `old_name`'s
		docstring, rebinds ``old_name.__name__`` and returns the new
		function object.
		
		This function may also be used as a decorator.
		
		Parameters
		----------
		func : function
		    The function to be deprecated.
		old_name : str, optional
		    The name of the function to be deprecated. Default is None, in
		    which case the name of `func` is used.
		new_name : str, optional
		    The new name for the function. Default is None, in which case the
		    deprecation message is that `old_name` is deprecated. If given, the
		    deprecation message is that `old_name` is deprecated and `new_name`
		    should be used instead.
		message : str, optional
		    Additional explanation of the deprecation.  Displayed in the
		    docstring after the warning.
		
		Returns
		-------
		old_func : function
		    The deprecated function.
		
		Examples
		--------
		Note that ``olduint`` returns a value after printing Deprecation
		Warning:
		
		>>> olduint = np.deprecate(np.uint)
		>>> olduint(6)
		/usr/lib/python2.5/site-packages/numpy/lib/utils.py:114:
		DeprecationWarning: uint32 is deprecated
		  warnings.warn(str1, DeprecationWarning, stacklevel=2)
		6
	**/
	static public function deprecate(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	static public var division : Dynamic;
	/**
		frombuffer(buffer, dtype=float, count=-1, offset=0)
		
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
		
		Notes
		-----
		If the buffer has data that is not in machine byte-order, this should
		be specified as part of the data-type, e.g.::
		
		  >>> dt = np.dtype(int)
		  >>> dt = dt.newbyteorder('>')
		  >>> np.frombuffer(buf, dtype=dt)
		
		The data of the resulting array will not be byteswapped, but will be
		interpreted correctly.
		
		Examples
		--------
		>>> s = 'hello world'
		>>> np.frombuffer(s, dtype='S1', count=5, offset=6)
		array(['w', 'o', 'r', 'l', 'd'],
		      dtype='|S1')
		
		>>> np.frombuffer(b'\x01\x02', dtype=np.uint8)
		array([1, 2], dtype=uint8)
		>>> np.frombuffer(b'\x01\x02\x03\x04\x05', dtype=np.uint8, count=3)
		array([1, 2, 3], dtype=uint8)
	**/
	static public function frombuffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		It is possible to load a library using 
		>>> lib = ctypes.cdll[<full_path_name>]
		
		But there are cross-platform considerations, such as library file extensions,
		plus the fact Windows will just load the first library it finds with that name.  
		NumPy supplies the load_library function as a convenience.
		
		Parameters
		----------
		libname : str
		    Name of the library, which can have 'lib' as a prefix,
		    but without an extension.
		loader_path : str
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
	static public var print_function : Dynamic;
}