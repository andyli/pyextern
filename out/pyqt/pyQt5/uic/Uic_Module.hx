/* This file is generated, do not edit! */
package pyQt5.uic;
@:pythonImport("PyQt5.uic") extern class Uic_Module {
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
	static public var _display_code : Dynamic;
	static public var _header : Dynamic;
	/**
		compileUi(uifile, pyfile, execute=False, indent=4, from_imports=False, resource_suffix='_rc', import_from='.')
		
		Creates a Python module from a Qt Designer .ui file.
		
		uifile is a file name or file-like object containing the .ui file.
		pyfile is the file-like object to which the Python code will be written to.
		execute is optionally set to generate extra Python code that allows the
		code to be run as a standalone application.  The default is False.
		indent is the optional indentation width using spaces.  If it is 0 then a
		tab is used.  The default is 4.
		from_imports is optionally set to generate relative import statements.  At
		the moment this only applies to the import of resource modules.
		resource_suffix is the suffix appended to the basename of any resource file
		specified in the .ui file to create the name of the Python module generated
		from the resource file by pyrcc4.  The default is '_rc', i.e. if the .ui
		file specified a resource file called foo.qrc then the corresponding Python
		module is foo_rc.
		import_from is optionally set to the package used for relative import
		statements.  The default is ``'.'``.
	**/
	static public function compileUi(uifile:Dynamic, pyfile:Dynamic, ?execute:Dynamic, ?indent:Dynamic, ?from_imports:Dynamic, ?resource_suffix:Dynamic, ?import_from:Dynamic):Dynamic;
	/**
		compileUiDir(dir, recurse=False, map=None, **compileUi_args)
		
		Creates Python modules from Qt Designer .ui files in a directory or
		directory tree.
		
		dir is the name of the directory to scan for files whose name ends with
		'.ui'.  By default the generated Python module is created in the same
		directory ending with '.py'.
		recurse is set if any sub-directories should be scanned.  The default is
		False.
		map is an optional callable that is passed the name of the directory
		containing the '.ui' file and the name of the Python module that will be
		created.  The callable should return a tuple of the name of the directory
		in which the Python module will be created and the (possibly modified)
		name of the module.  The default is None.
		compileUi_args are any additional keyword arguments that are passed to
		the compileUi() function that is called to create each Python module.
	**/
	static public function compileUiDir(dir:Dynamic, ?recurse:Dynamic, ?map:Dynamic, ?compileUi_args:python.KwArgs<Dynamic>):Dynamic;
	/**
		loadUi(uifile, baseinstance=None, package='') -> widget
		
		Load a Qt Designer .ui file and return an instance of the user interface.
		
		uifile is a file name or file-like object containing the .ui file.
		baseinstance is an optional instance of the Qt base class.  If specified
		then the user interface is created in it.  Otherwise a new instance of the
		base class is automatically created.
		package is the optional package which is used as the base for any relative
		imports of custom widgets.
		resource_suffix is the suffix appended to the basename of any resource file
		specified in the .ui file to create the name of the Python module generated
		from the resource file by pyrcc4.  The default is '_rc', i.e. if the .ui
		file specified a resource file called foo.qrc then the corresponding Python
		module is foo_rc.
	**/
	static public function loadUi(uifile:Dynamic, ?baseinstance:Dynamic, ?_package:Dynamic, ?resource_suffix:Dynamic):Dynamic;
	/**
		loadUiType(uifile, from_imports=False, resource_suffix='_rc', import_from='.') -> (form class, base class)
		
		Load a Qt Designer .ui file and return the generated form class and the Qt
		base class.
		
		uifile is a file name or file-like object containing the .ui file.
		from_imports is optionally set to generate relative import statements.  At
		the moment this only applies to the import of resource modules.
		resource_suffix is the suffix appended to the basename of any resource file
		specified in the .ui file to create the name of the Python module generated
		from the resource file by pyrcc4.  The default is '_rc', i.e. if the .ui
		file specified a resource file called foo.qrc then the corresponding Python
		module is foo_rc.
		import_from is optionally set to the package used for relative import
		statements.  The default is ``'.'``.
	**/
	static public function loadUiType(uifile:Dynamic, ?from_imports:Dynamic, ?resource_suffix:Dynamic, ?import_from:Dynamic):Dynamic;
	static public var widgetPluginPath : Dynamic;
}