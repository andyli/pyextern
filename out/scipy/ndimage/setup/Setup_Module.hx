/* This file is generated, do not edit! */
package scipy.ndimage.setup;
@:pythonImport("scipy.ndimage.setup") extern class Setup_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function configuration(?parent_package:Dynamic, ?top_path:Dynamic):Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
	static public function setup(?attr:python.KwArgs<Dynamic>):Dynamic;
}