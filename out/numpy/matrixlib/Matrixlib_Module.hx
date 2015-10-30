/* This file is generated, do not edit! */
package numpy.matrixlib;
@:pythonImport("numpy.matrixlib") extern class Matrixlib_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Interpret the input as a matrix.
		
		Unlike `matrix`, `asmatrix` does not make a copy if the input is already
		a matrix or an ndarray.  Equivalent to ``matrix(data, copy=False)``.
		
		Parameters
		----------
		data : array_like
		    Input data.
		dtype : data-type
		   Data-type of the output matrix.
		
		Returns
		-------
		mat : matrix
		    `data` interpreted as a matrix.
		
		Examples
		--------
		>>> x = np.array([[1, 2], [3, 4]])
		
		>>> m = np.asmatrix(x)
		
		>>> x[0,0] = 5
		
		>>> m
		matrix([[5, 2],
		        [3, 4]])
	**/
	static public function asmatrix(data:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Dynamic;
	/**
		Build a matrix object from a string, nested sequence, or array.
		
		Parameters
		----------
		obj : str or array_like
		    Input data.  Names of variables in the current scope may be
		    referenced, even if `obj` is a string.
		ldict : dict, optional
		    A dictionary that replaces local operands in current frame.
		    Ignored if `obj` is not a string or `gdict` is `None`.
		gdict : dict, optional
		    A dictionary that replaces global operands in current frame.
		    Ignored if `obj` is not a string.
		
		Returns
		-------
		out : matrix
		    Returns a matrix object, which is a specialized 2-D array.
		
		See Also
		--------
		matrix
		
		Examples
		--------
		>>> A = np.mat('1 1; 1 1')
		>>> B = np.mat('2 2; 2 2')
		>>> C = np.mat('3 4; 5 6')
		>>> D = np.mat('7 8; 9 0')
		
		All the following expressions construct the same block matrix:
		
		>>> np.bmat([[A, B], [C, D]])
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
		>>> np.bmat(np.r_[np.c_[A, B], np.c_[C, D]])
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
		>>> np.bmat('A,B; C,D')
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
	**/
	static public function bmat(obj:Dynamic, ?ldict:Dynamic, ?gdict:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Interpret the input as a matrix.
		
		Unlike `matrix`, `asmatrix` does not make a copy if the input is already
		a matrix or an ndarray.  Equivalent to ``matrix(data, copy=False)``.
		
		Parameters
		----------
		data : array_like
		    Input data.
		dtype : data-type
		   Data-type of the output matrix.
		
		Returns
		-------
		mat : matrix
		    `data` interpreted as a matrix.
		
		Examples
		--------
		>>> x = np.array([[1, 2], [3, 4]])
		
		>>> m = np.asmatrix(x)
		
		>>> x[0,0] = 5
		
		>>> m
		matrix([[5, 2],
		        [3, 4]])
	**/
	static public function mat(data:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
}