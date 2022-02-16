/* This file is generated, do not edit! */
package numpy.lib.utils;
@:pythonImport("numpy.lib.utils") extern class Utils_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _dictlist : Dynamic;
	static public var _function_signature_re : Dynamic;
	/**
		Determines the leading whitespace that could be removed from all the lines.
	**/
	static public function _get_indent(lines:Dynamic):Dynamic;
	static public function _getmembers(item:Dynamic):Dynamic;
	/**
		Provide information about ndarray obj.
		
		Parameters
		----------
		obj : ndarray
		    Must be ndarray, not checked.
		output
		    Where printed output goes.
		
		Notes
		-----
		Copied over from the numarray module prior to its removal.
		Adapted somewhat as only numpy is an option now.
		
		Called by info.
	**/
	static public function _info(obj:Dynamic, ?output:Dynamic):Dynamic;
	static public var _lookfor_caches : Dynamic;
	/**
		Generate docstring cache for given module.
		
		Parameters
		----------
		module : str, None, module
		    Module for which to generate docstring cache
		import_modules : bool
		    Whether to import sub-modules in packages.
		regenerate : bool
		    Re-generate the docstring cache
		
		Returns
		-------
		cache : dict {obj_full_name: (docstring, kind, index), ...}
		    Docstring cache for the module, either cached one (regenerate=False)
		    or newly generated.
	**/
	static public function _lookfor_generate_cache(module:Dynamic, import_modules:Dynamic, regenerate:Dynamic):Dynamic;
	static public function _makenamedict(?module:Dynamic):Dynamic;
	/**
		Utility function to check median result from data for NaN values at the end
		and return NaN in that case. Input result can also be a MaskedArray.
		
		Parameters
		----------
		data : array
		    Sorted input data to median function
		result : Array or MaskedArray
		    Result of median function.
		axis : int
		    Axis along which the median was computed.
		
		Returns
		-------
		result : scalar or ndarray
		    Median or NaN in axes which contained NaN in the input.  If the input
		    was an array, NaN will be inserted in-place.  If a scalar, either the
		    input itself or a scalar NaN.
	**/
	static public function _median_nancheck(data:Dynamic, result:Dynamic, axis:Dynamic):Dynamic;
	static public var _namedict : Dynamic;
	/**
		Returns a string contains the supported CPU features by the current build.
		
		The string format can be explained as follows:
		    - dispatched features that are supported by the running machine
		      end with `*`.
		    - dispatched features that are "not" supported by the running machine
		      end with `?`.
		    - remained features are representing the baseline.
	**/
	static public function _opt_info():Dynamic;
	static public function _set_function_name(func:Dynamic, name:Dynamic):Dynamic;
	static public function _split_line(name:Dynamic, arguments:Dynamic, width:Dynamic):Dynamic;
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
		Returns pointers to the end-points of an array.
		
		Parameters
		----------
		a : ndarray
		    Input array. It must conform to the Python-side of the array
		    interface.
		
		Returns
		-------
		(low, high) : tuple of 2 integers
		    The first integer is the first byte of the array, the second
		    integer is just past the last byte of the array.  If `a` is not
		    contiguous it will not use every byte between the (`low`, `high`)
		    values.
		
		Examples
		--------
		>>> I = np.eye(2, dtype='f'); I.dtype
		dtype('float32')
		>>> low, high = np.byte_bounds(I)
		>>> high - low == I.size*I.itemsize
		True
		>>> I = np.eye(2); I.dtype
		dtype('float64')
		>>> low, high = np.byte_bounds(I)
		>>> high - low == I.size*I.itemsize
		True
	**/
	static public function byte_bounds(a:Dynamic):Dynamic;
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
		DeprecationWarning: `uint64` is deprecated! # may vary
		>>> olduint(6)
		6
	**/
	static public function deprecate(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):haxe.Constraints.Function;
	/**
		Deprecates a function and includes the deprecation in its docstring.
		
		This function is used as a decorator. It returns an object that can be
		used to issue a DeprecationWarning, by passing the to-be decorated
		function as argument, this adds warning to the to-be decorated function's
		docstring and returns the new function object.
		
		See Also
		--------
		deprecate : Decorate a function such that it issues a `DeprecationWarning`
		
		Parameters
		----------
		msg : str
		    Additional explanation of the deprecation. Displayed in the
		    docstring after the warning.
		
		Returns
		-------
		obj : object
	**/
	static public function deprecate_with_doc(msg:Dynamic):Dynamic;
	/**
		Return the directory that contains the NumPy \*.h header files.
		
		Extension modules that need to compile against NumPy should use this
		function to locate the appropriate include directory.
		
		Notes
		-----
		When using ``distutils``, for example in ``setup.py``.
		::
		
		    import numpy as np
		    ...
		    Extension('extension_name', ...
		            include_dirs=[np.get_include()])
		    ...
	**/
	static public function get_include():Dynamic;
	/**
		Get help information for a function, class, or module.
		
		Parameters
		----------
		object : object or str, optional
		    Input object or name to get information about. If `object` is a
		    numpy object, its docstring is given. If it is a string, available
		    modules are searched for matching objects.  If None, information
		    about `info` itself is returned.
		maxwidth : int, optional
		    Printing width.
		output : file like object, optional
		    File like object that the output is written to, default is
		    ``stdout``.  The object has to be opened in 'w' or 'a' mode.
		toplevel : str, optional
		    Start search at this level.
		
		See Also
		--------
		source, lookfor
		
		Notes
		-----
		When used interactively with an object, ``np.info(obj)`` is equivalent
		to ``help(obj)`` on the Python prompt or ``obj?`` on the IPython
		prompt.
		
		Examples
		--------
		>>> np.info(np.polyval) # doctest: +SKIP
		   polyval(p, x)
		     Evaluate the polynomial p at x.
		     ...
		
		When using a string for `object` it is possible to get multiple results.
		
		>>> np.info('fft') # doctest: +SKIP
		     *** Found in numpy ***
		Core FFT routines
		...
		     *** Found in numpy.fft ***
		 fft(a, n=None, axis=-1)
		...
		     *** Repeat reference found in numpy.fft.fftpack ***
		     *** Total of 3 references found. ***
	**/
	static public function info(?object:Dynamic, ?maxwidth:Dynamic, ?output:Dynamic, ?toplevel:Dynamic):Dynamic;
	/**
		Determine if a class is a subclass of a second class.
		
		`issubclass_` is equivalent to the Python built-in ``issubclass``,
		except that it returns False instead of raising a TypeError if one
		of the arguments is not a class.
		
		Parameters
		----------
		arg1 : class
		    Input class. True is returned if `arg1` is a subclass of `arg2`.
		arg2 : class or tuple of classes.
		    Input class. If a tuple of classes, True is returned if `arg1` is a
		    subclass of any of the tuple elements.
		
		Returns
		-------
		out : bool
		    Whether `arg1` is a subclass of `arg2` or not.
		
		See Also
		--------
		issubsctype, issubdtype, issctype
		
		Examples
		--------
		>>> np.issubclass_(np.int32, int)
		False
		>>> np.issubclass_(np.int32, float)
		False
		>>> np.issubclass_(np.float64, float)
		True
	**/
	static public function issubclass_(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		This is like the builtin :func:`issubclass`, but for `dtype`\ s.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    `dtype` or object coercible to one
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		:ref:`arrays.scalars` : Overview of the numpy type hierarchy.
		issubsctype, issubclass_
		
		Examples
		--------
		`issubdtype` can be used to check the type of arrays:
		
		>>> ints = np.array([1, 2, 3], dtype=np.int32)
		>>> np.issubdtype(ints.dtype, np.integer)
		True
		>>> np.issubdtype(ints.dtype, np.floating)
		False
		
		>>> floats = np.array([1, 2, 3], dtype=np.float32)
		>>> np.issubdtype(floats.dtype, np.integer)
		False
		>>> np.issubdtype(floats.dtype, np.floating)
		True
		
		Similar types of different sizes are not subdtypes of each other:
		
		>>> np.issubdtype(np.float64, np.float32)
		False
		>>> np.issubdtype(np.float32, np.float64)
		False
		
		but both are subtypes of `floating`:
		
		>>> np.issubdtype(np.float64, np.floating)
		True
		>>> np.issubdtype(np.float32, np.floating)
		True
		
		For convenience, dtype-like objects are allowed too:
		
		>>> np.issubdtype('S1', np.string_)
		True
		>>> np.issubdtype('i4', np.signedinteger)
		True
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Determine if the first argument is a subclass of the second argument.
		
		Parameters
		----------
		arg1, arg2 : dtype or dtype specifier
		    Data-types.
		
		Returns
		-------
		out : bool
		    The result.
		
		See Also
		--------
		issctype, issubdtype, obj2sctype
		
		Examples
		--------
		>>> np.issubsctype('S8', str)
		False
		>>> np.issubsctype(np.array([1]), int)
		True
		>>> np.issubsctype(np.array([1]), float)
		False
	**/
	static public function issubsctype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Do a keyword search on docstrings.
		
		A list of objects that matched the search is displayed,
		sorted by relevance. All given keywords need to be found in the
		docstring for it to be returned as a result, but the order does
		not matter.
		
		Parameters
		----------
		what : str
		    String containing words to look for.
		module : str or list, optional
		    Name of module(s) whose docstrings to go through.
		import_modules : bool, optional
		    Whether to import sub-modules in packages. Default is True.
		regenerate : bool, optional
		    Whether to re-generate the docstring cache. Default is False.
		output : file-like, optional
		    File-like object to write the output to. If omitted, use a pager.
		
		See Also
		--------
		source, info
		
		Notes
		-----
		Relevance is determined only roughly, by checking if the keywords occur
		in the function name, at the start of a docstring, etc.
		
		Examples
		--------
		>>> np.lookfor('binary representation') # doctest: +SKIP
		Search results for 'binary representation'
		------------------------------------------
		numpy.binary_repr
		    Return the binary representation of the input number as a string.
		numpy.core.setup_common.long_double_representation
		    Given a binary dump as given by GNU od -b, look for long double
		numpy.base_repr
		    Return a string representation of a number in the given base system.
		...
	**/
	static public function lookfor(what:Dynamic, ?module:Dynamic, ?import_modules:Dynamic, ?regenerate:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Protected string evaluation.
		
		Evaluate a string containing a Python literal expression without
		allowing the execution of arbitrary non-literal code.
		
		Parameters
		----------
		source : str
		    The string to evaluate.
		
		Returns
		-------
		obj : object
		   The result of evaluating `source`.
		
		Raises
		------
		SyntaxError
		    If the code has invalid Python syntax, or if it contains
		    non-literal code.
		
		Examples
		--------
		>>> np.safe_eval('1')
		1
		>>> np.safe_eval('[1, 2, 3]')
		[1, 2, 3]
		>>> np.safe_eval('{"foo": ("bar", 10.0)}')
		{'foo': ('bar', 10.0)}
		
		>>> np.safe_eval('import os')
		Traceback (most recent call last):
		  ...
		SyntaxError: invalid syntax
		
		>>> np.safe_eval('open("/home/user/.ssh/id_dsa").read()')
		Traceback (most recent call last):
		  ...
		ValueError: malformed node or string: <_ast.Call object at 0x...>
	**/
	static public function safe_eval(source:Dynamic):Dynamic;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
	/**
		Print or write to a file the source code for a NumPy object.
		
		The source code is only returned for objects written in Python. Many
		functions and classes are defined in C and will therefore not return
		useful information.
		
		Parameters
		----------
		object : numpy object
		    Input object. This can be any object (function, class, module,
		    ...).
		output : file object, optional
		    If `output` not supplied then source code is printed to screen
		    (sys.stdout).  File object must be created with either write 'w' or
		    append 'a' modes.
		
		See Also
		--------
		lookfor, info
		
		Examples
		--------
		>>> np.source(np.interp)                        #doctest: +SKIP
		In file: /usr/lib/python2.6/dist-packages/numpy/lib/function_base.py
		def interp(x, xp, fp, left=None, right=None):
		    """.... (full docstring printed)"""
		    if isinstance(x, (float, int, number)):
		        return compiled_interp([x], xp, fp, left, right).item()
		    else:
		        return compiled_interp(x, xp, fp, left, right)
		
		The source code is only returned for objects written in Python.
		
		>>> np.source(np.array)                         #doctest: +SKIP
		Not available for this object.
	**/
	static public function source(object:Dynamic, ?output:Dynamic):Dynamic;
	/**
		Print the NumPy arrays in the given dictionary.
		
		If there is no dictionary passed in or `vardict` is None then returns
		NumPy arrays in the globals() dictionary (all NumPy arrays in the
		namespace).
		
		Parameters
		----------
		vardict : dict, optional
		    A dictionary possibly containing ndarrays.  Default is globals().
		
		Returns
		-------
		out : None
		    Returns 'None'.
		
		Notes
		-----
		Prints out the name, shape, bytes and type of all of the ndarrays
		present in `vardict`.
		
		Examples
		--------
		>>> a = np.arange(10)
		>>> b = np.ones(20)
		>>> np.who()
		Name            Shape            Bytes            Type
		===========================================================
		a               10               80               int64
		b               20               160              float64
		Upper bound on total bytes  =       240
		
		>>> d = {'x': np.arange(2.0), 'y': np.arange(3.0), 'txt': 'Some str',
		... 'idx':5}
		>>> np.who(d)
		Name            Shape            Bytes            Type
		===========================================================
		x               2                16               float64
		y               3                24               float64
		Upper bound on total bytes  =       40
	**/
	static public function who(?vardict:Dynamic):Dynamic;
}