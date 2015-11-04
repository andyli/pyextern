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
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Return evenly spaced numbers over a specified interval.
		
		Returns `num` evenly spaced samples, calculated over the
		interval [`start`, `stop`].
		
		The endpoint of the interval can optionally be excluded.
		
		Parameters
		----------
		start : scalar
		    The starting value of the sequence.
		stop : scalar
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
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		samples : ndarray
		    There are `num` equally spaced samples in the closed interval
		    ``[start, stop]`` or the half-open interval ``[start, stop)``
		    (depending on whether `endpoint` is True or False).
		step : float
		    Only returned if `retstep` is True
		
		    Size of spacing between samples.
		
		
		See Also
		--------
		arange : Similar to `linspace`, but uses a step size (instead of the
		         number of samples).
		logspace : Samples uniformly distributed in log space.
		
		Examples
		--------
		>>> np.linspace(2.0, 3.0, num=5)
		    array([ 2.  ,  2.25,  2.5 ,  2.75,  3.  ])
		>>> np.linspace(2.0, 3.0, num=5, endpoint=False)
		    array([ 2. ,  2.2,  2.4,  2.6,  2.8])
		>>> np.linspace(2.0, 3.0, num=5, retstep=True)
		    (array([ 2.  ,  2.25,  2.5 ,  2.75,  3.  ]), 0.25)
		
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
	static public function linspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?retstep:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return numbers spaced evenly on a log scale.
		
		In linear space, the sequence starts at ``base ** start``
		(`base` to the power of `start`) and ends with ``base ** stop``
		(see `endpoint` below).
		
		Parameters
		----------
		start : float
		    ``base ** start`` is the starting value of the sequence.
		stop : float
		    ``base ** stop`` is the final value of the sequence, unless `endpoint`
		    is False.  In that case, ``num + 1`` values are spaced over the
		    interval in log-space, of which all but the last (a sequence of
		    length ``num``) are returned.
		num : integer, optional
		    Number of samples to generate.  Default is 50.
		endpoint : boolean, optional
		    If true, `stop` is the last sample. Otherwise, it is not included.
		    Default is True.
		base : float, optional
		    The base of the log space. The step size between the elements in
		    ``ln(samples) / ln(base)`` (or ``log_base(samples)``) is uniform.
		    Default is 10.0.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
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
		    array([  100.        ,   215.443469  ,   464.15888336,  1000.        ])
		>>> np.logspace(2.0, 3.0, num=4, endpoint=False)
		    array([ 100.        ,  177.827941  ,  316.22776602,  562.34132519])
		>>> np.logspace(2.0, 3.0, num=4, base=2.0)
		    array([ 4.        ,  5.0396842 ,  6.34960421,  8.        ])
		
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
	static public function logspace(start:Dynamic, stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic, ?base:Dynamic, ?dtype:Dynamic):numpy.Ndarray;
	static public var print_function : Dynamic;
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