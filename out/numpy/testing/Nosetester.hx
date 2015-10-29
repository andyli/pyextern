/* This file is generated, do not edit! */
package numpy.testing;
@:pythonImport("numpy.testing.nosetester") extern class Nosetester {
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
		Given a path where a package is installed, determine its name.
		
		Parameters
		----------
		filepath : str
		    Path to a file. If the determination fails, "numpy" is returned.
		
		Examples
		--------
		>>> np.testing.nosetester.get_package_name('nonsense')
		'numpy'
	**/
	static public function get_package_name(filepath:Dynamic):Dynamic;
	/**
		Import nose only when needed.
		    
	**/
	static public function import_nose():Dynamic;
	static public var print_function : Dynamic;
	/**
		Run a test module.
		
		Equivalent to calling ``$ nosetests <argv> <file_to_run>`` from
		the command line
		
		Parameters
		----------
		file_to_run : str, optional
		    Path to test module, or None.
		    By default, run the module from which this function is called.
		argv : list of strings
		    Arguments to be passed to the nose test runner. ``argv[0]`` is
		    ignored. All command line arguments accepted by ``nosetests``
		    will work. If it is the default value None, sys.argv is used.
		
		    .. versionadded:: 1.9.0
		
		Examples
		--------
		Adding the following::
		
		    if __name__ == "__main__" :
		        run_module_suite(argv=sys.argv)
		
		at the end of a test module will run the tests when that module is
		called in the python interpreter.
		
		Alternatively, calling::
		
		>>> run_module_suite(file_to_run="numpy/tests/test_matlib.py")
		
		from an interpreter will run all the test routine in 'test_matlib.py'.
	**/
	static public function run_module_suite(?file_to_run:Dynamic, ?argv:Dynamic):Dynamic;
}