/* This file is generated, do not edit! */
package matplotlib.style.core;
@:pythonImport("matplotlib.style.core") extern class Core_Module {
	static public var BASE_LIBRARY_PATH : Dynamic;
	static public var STYLE_BLACKLIST : Dynamic;
	static public var STYLE_EXTENSION : Dynamic;
	static public var USER_LIBRARY_PATHS : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getattr__(name:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _apply_style(d:Dynamic, ?warn:Dynamic):Dynamic;
	static public var _base_library : Dynamic;
	static public var _log : Dynamic;
	static public function _remove_blacklisted_style_params(d:Dynamic, ?warn:Dynamic):Dynamic;
	static public var available : Dynamic;
	/**
		Context manager for using style settings temporarily.
		
		Parameters
		----------
		style : str, dict, Path or list
		    A style specification. Valid options are:
		
		    +------+-------------------------------------------------------------+
		    | str  | The name of a style or a path/URL to a style file. For a    |
		    |      | list of available style names, see `.style.available`.      |
		    +------+-------------------------------------------------------------+
		    | dict | Dictionary with valid key/value pairs for                   |
		    |      | `matplotlib.rcParams`.                                      |
		    +------+-------------------------------------------------------------+
		    | Path | A path-like object which is a path to a style file.         |
		    +------+-------------------------------------------------------------+
		    | list | A list of style specifiers (str, Path or dict) applied from |
		    |      | first to last in the list.                                  |
		    +------+-------------------------------------------------------------+
		
		after_reset : bool
		    If True, apply style after resetting settings to their defaults;
		    otherwise, apply style on top of the current settings.
	**/
	static public function context(style:Dynamic, ?after_reset:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.5
		   \ 
	**/
	static public function iter_user_libraries():Dynamic;
	static public var library : Dynamic;
	/**
		[*Deprecated*] Load style library defined in this package.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	static public function load_base_library():Dynamic;
	static public var rcParamsDefault : Dynamic;
	/**
		Construct a `RcParams` from file *fname*.
		
		Parameters
		----------
		fname : str or path-like
		    A file with Matplotlib rc settings.
		fail_on_error : bool
		    If True, raise an error when the parser fails to convert a parameter.
		use_default_template : bool
		    If True, initialize with default parameters before updating with those
		    in the given file. If False, the configuration class only contains the
		    parameters specified in the file. (Useful for updating dicts.)
	**/
	static public function rc_params_from_file(fname:Dynamic, ?fail_on_error:Dynamic, ?use_default_template:Dynamic):Dynamic;
	/**
		Return dictionary of styles defined in *style_dir*.
	**/
	static public function read_style_directory(style_dir:Dynamic):Dynamic;
	/**
		Reload the style library.
	**/
	static public function reload_library():Dynamic;
	/**
		Update nested dict (only level of nesting) with new values.
		
		Unlike `dict.update`, this assumes that the values of the parent dict are
		dicts (or dict-like), so you shouldn't replace the nested dict if it
		already exists. Instead you should update the sub-dict.
	**/
	static public function update_nested_dict(main_dict:Dynamic, new_dict:Dynamic):Dynamic;
	/**
		Update style library with user-defined rc files.
	**/
	static public function update_user_library(library:Dynamic):Dynamic;
	/**
		Use Matplotlib style settings from a style specification.
		
		The style name of 'default' is reserved for reverting back to
		the default style settings.
		
		.. note::
		
		   This updates the `.rcParams` with the settings from the style.
		   `.rcParams` not defined in the style are kept.
		
		Parameters
		----------
		style : str, dict, Path or list
		    A style specification. Valid options are:
		
		    +------+-------------------------------------------------------------+
		    | str  | The name of a style or a path/URL to a style file. For a    |
		    |      | list of available style names, see `.style.available`.      |
		    +------+-------------------------------------------------------------+
		    | dict | Dictionary with valid key/value pairs for                   |
		    |      | `matplotlib.rcParams`.                                      |
		    +------+-------------------------------------------------------------+
		    | Path | A path-like object which is a path to a style file.         |
		    +------+-------------------------------------------------------------+
		    | list | A list of style specifiers (str, Path or dict) applied from |
		    |      | first to last in the list.                                  |
		    +------+-------------------------------------------------------------+
		
		Notes
		-----
		The following `.rcParams` are not related to style and will be ignored if
		found in a style specification:
		
		- backend
		- backend_fallback
		- datapath
		- date.epoch
		- docstring.hardcopy
		- figure.max_open_warning
		- figure.raise_window
		- interactive
		- savefig.directory
		- timezone
		- tk.window_focus
		- toolbar
		- webagg.address
		- webagg.open_in_browser
		- webagg.port
		- webagg.port_retries
	**/
	static public function use(style:Dynamic):Dynamic;
}