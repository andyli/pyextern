/* This file is generated, do not edit! */
package scipy.io;
@:pythonImport("scipy.io.arff") extern class Arff {
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
	static public var division : Dynamic;
	/**
		Read an arff file.
		
		The data is returned as a record array, which can be accessed much like
		a dictionary of numpy arrays.  For example, if one of the attributes is
		called 'pressure', then its first 10 data points can be accessed from the
		``data`` record array like so: ``data['pressure'][0:10]``
		
		
		Parameters
		----------
		f : file-like or str
		   File-like object to read from, or filename to open.
		
		Returns
		-------
		data : record array
		   The data of the arff file, accessible by attribute names.
		meta : `MetaData`
		   Contains information about the arff file such as name and
		   type of attributes, the relation (name of the dataset), etc...
		
		Raises
		------
		ParseArffError
		    This is raised if the given file is not ARFF-formatted.
		NotImplementedError
		    The ARFF file has an attribute which is not supported yet.
		
		Notes
		-----
		
		This function should be able to read most arff files. Not
		implemented functionality include:
		
		* date type attributes
		* string type attributes
		
		It can read files with numeric and nominal attributes.  It cannot read
		files with sparse data ({} in the file).  However, this function can
		read files with missing data (? in the file), representing the data
		points as NaNs.
	**/
	static public function loadarff(f:Dynamic):Dynamic;
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