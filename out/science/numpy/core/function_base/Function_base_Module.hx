/* This file is generated, do not edit! */
package numpy.core.function_base;
@:pythonImport("numpy.core.function_base") extern class Function_base_Module {
	static public var NaN : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_docstring(obj:Dynamic, doc:Dynamic, warn_on_python:Dynamic):Dynamic;
	static public function _geomspace_dispatcher(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _linspace_dispatcher(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):Dynamic;
	static public function _logspace_dispatcher(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?base:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Returns true if the only way to set the docstring of `obj` from python is
		via add_docstring.
		
		This function errs on the side of being overly conservative.
	**/
	static public function _needs_add_docstring(obj:Dynamic):Dynamic;
	/**
		add_docstring(obj, docstring)
		
		Add a docstring to a built-in obj if possible.
		If the obj already has a docstring raise a RuntimeError
		If this routine does not know how to add a docstring to the object
		raise a TypeError
	**/
	static public function add_docstring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Add documentation to an existing object, typically one defined in C
		
		The purpose is to allow easier editing of the docstrings without requiring
		a re-compile. This exists primarily for internal use within numpy itself.
		
		Parameters
		----------
		place : str
		    The absolute name of the module to import from
		obj : str
		    The name of the object to add documentation to, typically a class or
		    function name
		doc : {str, Tuple[str, str], List[Tuple[str, str]]}
		    If a string, the documentation to apply to `obj`
		
		    If a tuple, then the first element is interpreted as an attribute of
		    `obj` and the second as the docstring to apply - ``(method, docstring)``
		
		    If a list, then each element of the list should be a tuple of length
		    two - ``[(method1, docstring1), (method2, docstring2), ...]``
		warn_on_python : bool
		    If True, the default, emit `UserWarning` if this is used to attach
		    documentation to a pure-python object.
		
		Notes
		-----
		This routine never raises an error if the docstring can't be written, but
		will raise an error if the object being documented does not exist.
		
		This routine cannot modify read-only docstrings, as appear
		in new-style classes or built-in functions. Because this
		routine never raises an error the caller must check manually
		that the docstrings were changed.
		
		Since this function grabs the ``char *`` from a c-level str object and puts
		it into the ``tp_doc`` slot of the type of `obj`, it violates a number of
		C-API best-practices, by:
		
		- modifying a `PyTypeObject` after calling `PyType_Ready`
		- calling `Py_INCREF` on the str and losing the reference, so the str
		  will never be released
		
		If possible it should be avoided.
	**/
	static public function add_newdoc(place:Dynamic, obj:Dynamic, doc:Dynamic, ?warn_on_python:Dynamic):Dynamic;
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	/**
		asanyarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'C'.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray or an ndarray subclass
		    Array interpretation of `a`.  If `a` is an ndarray or a subclass
		    of ndarray, it is returned as-is and no copy is performed.
		
		See Also
		--------
		asarray : Similar function which always returns ndarrays.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and
		                    Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asanyarray(a)
		array([1, 2])
		
		Instances of `ndarray` subclasses are passed through as-is:
		
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asanyarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return numbers spaced evenly on a log scale (a geometric progression).
		
		This is similar to `logspace`, but with endpoints specified directly.
		Each output sample is a constant multiple of the previous.
		
		.. versionchanged:: 1.16.0
		    Non-scalar `start` and `stop` are now supported.
		
		Parameters
		----------
		start : array_like
		    The starting value of the sequence.
		stop : array_like
		    The final value of the sequence, unless `endpoint` is False.
		    In that case, ``num + 1`` values are spaced over the
		    interval in log-space, of which all but the last (a sequence of
		    length `num`) are returned.
		num : integer, optional
		    Number of samples to generate.  Default is 50.
		endpoint : boolean, optional
		    If true, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, the data type
		    is inferred from `start` and `stop`. The inferred dtype will never be
		    an integer; `float` is chosen even if the arguments would produce an
		    array of integers.
		axis : int, optional
		    The axis in the result to store the samples.  Relevant only if start
		    or stop are array-like.  By default (0), the samples will be along a
		    new axis inserted at the beginning. Use -1 to get an axis at the end.
		
		    .. versionadded:: 1.16.0
		
		Returns
		-------
		samples : ndarray
		    `num` samples, equally spaced on a log scale.
		
		See Also
		--------
		logspace : Similar to geomspace, but with endpoints specified using log
		           and base.
		linspace : Similar to geomspace, but with arithmetic instead of geometric
		           progression.
		arange : Similar to linspace, with the step size specified instead of the
		         number of samples.
		
		Notes
		-----
		If the inputs or dtype are complex, the output will follow a logarithmic
		spiral in the complex plane.  (There are an infinite number of spirals
		passing through two points; the output will follow the shortest such path.)
		
		Examples
		--------
		>>> np.geomspace(1, 1000, num=4)
		array([    1.,    10.,   100.,  1000.])
		>>> np.geomspace(1, 1000, num=3, endpoint=False)
		array([   1.,   10.,  100.])
		>>> np.geomspace(1, 1000, num=4, endpoint=False)
		array([   1.        ,    5.62341325,   31.6227766 ,  177.827941  ])
		>>> np.geomspace(1, 256, num=9)
		array([   1.,    2.,    4.,    8.,   16.,   32.,   64.,  128.,  256.])
		
		Note that the above may not produce exact integers:
		
		>>> np.geomspace(1, 256, num=9, dtype=int)
		array([  1,   2,   4,   7,  16,  32,  63, 127, 256])
		>>> np.around(np.geomspace(1, 256, num=9)).astype(int)
		array([  1,   2,   4,   8,  16,  32,  64, 128, 256])
		
		Negative, decreasing, and complex inputs are allowed:
		
		>>> np.geomspace(1000, 1, num=4)
		array([1000.,  100.,   10.,    1.])
		>>> np.geomspace(-1000, -1, num=4)
		array([-1000.,  -100.,   -10.,    -1.])
		>>> np.geomspace(1j, 1000j, num=4)  # Straight line
		array([0.   +1.j, 0.  +10.j, 0. +100.j, 0.+1000.j])
		>>> np.geomspace(-1+0j, 1+0j, num=5)  # Circle
		array([-1.00000000e+00+1.22464680e-16j, -7.07106781e-01+7.07106781e-01j,
		        6.12323400e-17+1.00000000e+00j,  7.07106781e-01+7.07106781e-01j,
		        1.00000000e+00+0.00000000e+00j])
		
		Graphical illustration of `endpoint` parameter:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 10
		>>> y = np.zeros(N)
		>>> plt.semilogx(np.geomspace(1, 1000, N, endpoint=True), y + 1, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.semilogx(np.geomspace(1, 1000, N, endpoint=False), y + 2, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.axis([0.5, 2000, 0, 3])
		[0.5, 2000, 0, 3]
		>>> plt.grid(True, color='0.7', linestyle='-', which='both', axis='both')
		>>> plt.show()
	**/
	static public function geomspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Return evenly spaced numbers over a specified interval.
		
		Returns `num` evenly spaced samples, calculated over the
		interval [`start`, `stop`].
		
		The endpoint of the interval can optionally be excluded.
		
		.. versionchanged:: 1.16.0
		    Non-scalar `start` and `stop` are now supported.
		
		.. versionchanged:: 1.20.0
		    Values are rounded towards ``-inf`` instead of ``0`` when an
		    integer ``dtype`` is specified. The old behavior can
		    still be obtained with ``np.linspace(start, stop, num).astype(int)``
		
		Parameters
		----------
		start : array_like
		    The starting value of the sequence.
		stop : array_like
		    The end value of the sequence, unless `endpoint` is set to False.
		    In that case, the sequence consists of all but the last of ``num + 1``
		    evenly spaced samples, so that `stop` is excluded.  Note that the step
		    size changes when `endpoint` is False.
		num : int, optional
		    Number of samples to generate. Default is 50. Must be non-negative.
		endpoint : bool, optional
		    If True, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		retstep : bool, optional
		    If True, return (`samples`, `step`), where `step` is the spacing
		    between samples.
		dtype : dtype, optional
		    The type of the output array.  If `dtype` is not given, the data type
		    is inferred from `start` and `stop`. The inferred dtype will never be
		    an integer; `float` is chosen even if the arguments would produce an
		    array of integers.
		
		    .. versionadded:: 1.9.0
		
		axis : int, optional
		    The axis in the result to store the samples.  Relevant only if start
		    or stop are array-like.  By default (0), the samples will be along a
		    new axis inserted at the beginning. Use -1 to get an axis at the end.
		
		    .. versionadded:: 1.16.0
		
		Returns
		-------
		samples : ndarray
		    There are `num` equally spaced samples in the closed interval
		    ``[start, stop]`` or the half-open interval ``[start, stop)``
		    (depending on whether `endpoint` is True or False).
		step : float, optional
		    Only returned if `retstep` is True
		
		    Size of spacing between samples.
		
		
		See Also
		--------
		arange : Similar to `linspace`, but uses a step size (instead of the
		         number of samples).
		geomspace : Similar to `linspace`, but with numbers spaced evenly on a log
		            scale (a geometric progression).
		logspace : Similar to `geomspace`, but with the end points specified as
		           logarithms.
		
		Examples
		--------
		>>> np.linspace(2.0, 3.0, num=5)
		array([2.  , 2.25, 2.5 , 2.75, 3.  ])
		>>> np.linspace(2.0, 3.0, num=5, endpoint=False)
		array([2. ,  2.2,  2.4,  2.6,  2.8])
		>>> np.linspace(2.0, 3.0, num=5, retstep=True)
		(array([2.  ,  2.25,  2.5 ,  2.75,  3.  ]), 0.25)
		
		Graphical illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 8
		>>> y = np.zeros(N)
		>>> x1 = np.linspace(0, 10, N, endpoint=True)
		>>> x2 = np.linspace(0, 10, N, endpoint=False)
		>>> plt.plot(x1, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(x2, y + 0.5, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.ylim([-0.5, 1])
		(-0.5, 1)
		>>> plt.show()
	**/
	static public function linspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Return numbers spaced evenly on a log scale.
		
		In linear space, the sequence starts at ``base ** start``
		(`base` to the power of `start`) and ends with ``base ** stop``
		(see `endpoint` below).
		
		.. versionchanged:: 1.16.0
		    Non-scalar `start` and `stop` are now supported.
		
		Parameters
		----------
		start : array_like
		    ``base ** start`` is the starting value of the sequence.
		stop : array_like
		    ``base ** stop`` is the final value of the sequence, unless `endpoint`
		    is False.  In that case, ``num + 1`` values are spaced over the
		    interval in log-space, of which all but the last (a sequence of
		    length `num`) are returned.
		num : integer, optional
		    Number of samples to generate.  Default is 50.
		endpoint : boolean, optional
		    If true, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		base : array_like, optional
		    The base of the log space. The step size between the elements in
		    ``ln(samples) / ln(base)`` (or ``log_base(samples)``) is uniform.
		    Default is 10.0.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, the data type
		    is inferred from `start` and `stop`. The inferred type will never be
		    an integer; `float` is chosen even if the arguments would produce an
		    array of integers.
		axis : int, optional
		    The axis in the result to store the samples.  Relevant only if start
		    or stop are array-like.  By default (0), the samples will be along a
		    new axis inserted at the beginning. Use -1 to get an axis at the end.
		
		    .. versionadded:: 1.16.0
		
		
		Returns
		-------
		samples : ndarray
		    `num` samples, equally spaced on a log scale.
		
		See Also
		--------
		arange : Similar to linspace, with the step size specified instead of the
		         number of samples. Note that, when used with a float endpoint, the
		         endpoint may or may not be included.
		linspace : Similar to logspace, but with the samples uniformly distributed
		           in linear space, instead of log space.
		geomspace : Similar to logspace, but with endpoints specified directly.
		
		Notes
		-----
		Logspace is equivalent to the code
		
		>>> y = np.linspace(start, stop, num=num, endpoint=endpoint)
		... # doctest: +SKIP
		>>> power(base, y).astype(dtype)
		... # doctest: +SKIP
		
		Examples
		--------
		>>> np.logspace(2.0, 3.0, num=4)
		array([ 100.        ,  215.443469  ,  464.15888336, 1000.        ])
		>>> np.logspace(2.0, 3.0, num=4, endpoint=False)
		array([100.        ,  177.827941  ,  316.22776602,  562.34132519])
		>>> np.logspace(2.0, 3.0, num=4, base=2.0)
		array([4.        ,  5.0396842 ,  6.34960421,  8.        ])
		
		Graphical illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> N = 10
		>>> x1 = np.logspace(0.1, 1, N, endpoint=True)
		>>> x2 = np.logspace(0.1, 1, N, endpoint=False)
		>>> y = np.zeros(N)
		>>> plt.plot(x1, y, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.plot(x2, y + 0.5, 'o')
		[<matplotlib.lines.Line2D object at 0x...>]
		>>> plt.ylim([-0.5, 1])
		(-0.5, 1)
		>>> plt.show()
	**/
	static public function logspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?base:Dynamic, ?dtype:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Return the number of dimensions of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.  If it is not already an ndarray, a conversion is
		    attempted.
		
		Returns
		-------
		number_of_dimensions : int
		    The number of dimensions in `a`.  Scalars are zero-dimensional.
		
		See Also
		--------
		ndarray.ndim : equivalent method
		shape : dimensions of array
		ndarray.shape : dimensions of array
		
		Examples
		--------
		>>> np.ndim([[1,2,3],[4,5,6]])
		2
		>>> np.ndim(np.array([[1,2,3],[4,5,6]]))
		2
		>>> np.ndim(1)
		0
	**/
	static public function ndim(a:Dynamic):Int;
	/**
		result_type(*arrays_and_dtypes)
		
		Returns the type that results from applying the NumPy
		type promotion rules to the arguments.
		
		Type promotion in NumPy works similarly to the rules in languages
		like C++, with some slight differences.  When both scalars and
		arrays are used, the array's type takes precedence and the actual value
		of the scalar is taken into account.
		
		For example, calculating 3*a, where a is an array of 32-bit floats,
		intuitively should result in a 32-bit float output.  If the 3 is a
		32-bit integer, the NumPy rules indicate it can't convert losslessly
		into a 32-bit float, so a 64-bit float should be the result type.
		By examining the value of the constant, '3', we see that it fits in
		an 8-bit integer, which can be cast losslessly into the 32-bit float.
		
		Parameters
		----------
		arrays_and_dtypes : list of arrays and dtypes
		    The operands of some operation whose result type is needed.
		
		Returns
		-------
		out : dtype
		    The result type.
		
		See also
		--------
		dtype, promote_types, min_scalar_type, can_cast
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The specific algorithm used is as follows.
		
		Categories are determined by first checking which of boolean,
		integer (int/uint), or floating point (float/complex) the maximum
		kind of all the arrays and the scalars are.
		
		If there are only scalars or the maximum category of the scalars
		is higher than the maximum category of the arrays,
		the data types are combined with :func:`promote_types`
		to produce the return value.
		
		Otherwise, `min_scalar_type` is called on each array, and
		the resulting data types are all combined with :func:`promote_types`
		to produce the return value.
		
		The set of int values is not a subset of the uint values for types
		with the same number of bits, something not reflected in
		:func:`min_scalar_type`, but handled as a special case in `result_type`.
		
		Examples
		--------
		>>> np.result_type(3, np.arange(7, dtype='i1'))
		dtype('int8')
		
		>>> np.result_type('i4', 'c8')
		dtype('complex128')
		
		>>> np.result_type(3.0, -2)
		dtype('float64')
	**/
	static public function result_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
}