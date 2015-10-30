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
	static public var _flagdict : Dynamic;
	static public var _flagnames : Dynamic;
	static public function _flags_fromnum(num:Dynamic):Dynamic;
	static public function _num_fromflags(flaglist:Dynamic):Dynamic;
	static public var _pointer_type_cache : Dynamic;
	static public var _typecodes : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		array(object, dtype=None, copy=True, order=None, subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an
		    object whose __array__ method returns an array, or any
		    (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then
		    the type will be determined as the minimum type required
		    to hold the objects in the sequence.  This argument can only
		    be used to 'upcast' the array.  For downcasting, use the
		    .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`dtype`, `order`, etc.).
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
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
		empty, empty_like, zeros, zeros_like, ones, ones_like, fill
		
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
		Create a numpy array from a ctypes array or a ctypes POINTER.
		The numpy array shares the memory with the ctypes object.
		
		The size parameter must be given if converting from a ctypes POINTER.
		The size parameter is ignored if converting from a ctypes array
	**/
	static public function as_array(obj:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		Create and return a ctypes object from a numpy array.  Actually
		anything that exposes the __array_interface__ is accepted.
	**/
	static public function as_ctypes(obj:Dynamic):Dynamic;
	static public var code : Dynamic;
	/**
		`ctypes_load_library` is deprecated, use `load_library` instead!
	**/
	static public function ctypes_load_library(args:Dynamic, kwds:Dynamic):Dynamic;
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
		  warnings.warn(str1, DeprecationWarning)
		6
	**/
	static public function deprecate(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var division : Dynamic;
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
	/**
		Given a ctypes array type, construct and attach an
		__array_interface__ property to it if it does not yet have one.
	**/
	static public function prep_array(array_type:Dynamic):Dynamic;
	/**
		Given a ctypes pointer object, construct and
		attach an __array_interface__ property to it if it does not
		yet have one.
	**/
	static public function prep_pointer(pointer_obj:Dynamic, shape:Dynamic):Dynamic;
	/**
		Given a ctypes simple type, construct and attach an
		__array_interface__ property to it if it does not yet have one.
	**/
	static public function prep_simple(simple_type:Dynamic, dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var simple_types : Dynamic;
	static public var types : Dynamic;
}