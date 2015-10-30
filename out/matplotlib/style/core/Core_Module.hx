/* This file is generated, do not edit! */
package matplotlib.style.core;
@:pythonImport("matplotlib.style.core") extern class Core_Module {
	static public var BASE_LIBRARY_PATH : Dynamic;
	static public var STYLE_EXTENSION : Dynamic;
	static public var STYLE_FILE_PATTERN : Dynamic;
	static public var USER_LIBRARY_PATHS : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _base_library : Dynamic;
	static public var absolute_import : Dynamic;
	static public var available : Dynamic;
	/**
		Context manager for using style settings temporarily.
		
		Parameters
		----------
		name : str or list of str
		    Name of style or path/URL to a style file. For a list of available
		    style names, see `style.available`. If given a list, each style is
		    applied from first to last in the list.
		after_reset : bool
		    If True, apply style after resetting settings to their defaults;
		    otherwise, apply style on top of the current settings.
	**/
	static public function context(name:Dynamic, ?after_reset:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return True if the filename looks like a style file.
	**/
	static public function is_style_file(filename:Dynamic):Dynamic;
	/**
		Yield file path and name of styles in the given directory.
	**/
	static public function iter_style_files(style_dir:Dynamic):Dynamic;
	static public function iter_user_libraries():Dynamic;
	static public var library : Dynamic;
	/**
		Load style library defined in this package.
	**/
	static public function load_base_library():Dynamic;
	static public var print_function : Dynamic;
	/**
		Return :class:`matplotlib.RcParams` from the contents of the given file.
		
		Parameters
		----------
		fname : str
		    Name of file parsed for matplotlib settings.
		fail_on_error : bool
		    If True, raise an error when the parser fails to convert a parameter.
		use_default_template : bool
		    If True, initialize with default parameters before updating with those
		    in the given file. If False, the configuration class only contains the
		    parameters specified in the file. (Useful for updating dicts.)
	**/
	static public function rc_params_from_file(fname:Dynamic, ?fail_on_error:Dynamic, ?use_default_template:Dynamic):Dynamic;
	/**
		Return dictionary of styles defined in `style_dir`.
	**/
	static public function read_style_directory(style_dir:Dynamic):Dynamic;
	/**
		Reload style library.
	**/
	static public function reload_library():Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		Update nested dict (only level of nesting) with new values.
		
		Unlike dict.update, this assumes that the values of the parent dict are
		dicts (or dict-like), so you shouldn't replace the nested dict if it
		already exists. Instead you should update the sub-dict.
	**/
	static public function update_nested_dict(main_dict:Dynamic, new_dict:Dynamic):Dynamic;
	/**
		Update style library with user-defined rc files
	**/
	static public function update_user_library(library:Dynamic):Dynamic;
	/**
		Use matplotlib style settings from a known style sheet or from a file.
		
		Parameters
		----------
		name : str or list of str
		    Name of style or path/URL to a style file. For a list of available
		    style names, see `style.available`. If given a list, each style is
		    applied from first to last in the list.
	**/
	static public function use(name:Dynamic):Dynamic;
}