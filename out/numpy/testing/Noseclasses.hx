/* This file is generated, do not edit! */
package numpy.testing;
@:pythonImport("numpy.testing.noseclasses") extern class Noseclasses {
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
	static public var print_function : Dynamic;
	static public var print_state : Dynamic;
	/**
		Find the python source file for a .pyc, .pyo or $py.class file on
		jython. Returns the filename provided if it is not a python source
		file.
	**/
	static public function src(filename:Dynamic):Dynamic;
}