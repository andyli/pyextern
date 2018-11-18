/* This file is generated, do not edit! */
package matplotlib.style;
@:pythonImport("matplotlib.style") extern class Style_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var available : Dynamic;
	/**
		Context manager for using style settings temporarily.
		
		Parameters
		----------
		style : str, dict, or list
		    A style specification. Valid options are:
		
		    +------+-------------------------------------------------------------+
		    | str  | The name of a style or a path/URL to a style file. For a    |
		    |      | list of available style names, see `style.available`.       |
		    +------+-------------------------------------------------------------+
		    | dict | Dictionary with valid key/value pairs for                   |
		    |      | `matplotlib.rcParams`.                                      |
		    +------+-------------------------------------------------------------+
		    | list | A list of style specifiers (str or dict) applied from first |
		    |      | to last in the list.                                        |
		    +------+-------------------------------------------------------------+
		
		after_reset : bool
		    If True, apply style after resetting settings to their defaults;
		    otherwise, apply style on top of the current settings.
	**/
	static public function context(style:Dynamic, ?after_reset:Dynamic):Dynamic;
	static public var library : Dynamic;
	/**
		Reload style library.
	**/
	static public function reload_library():Dynamic;
	/**
		Use matplotlib style settings from a style specification.
		
		The style name of 'default' is reserved for reverting back to
		the default style settings.
		
		Parameters
		----------
		style : str, dict, or list
		    A style specification. Valid options are:
		
		    +------+-------------------------------------------------------------+
		    | str  | The name of a style or a path/URL to a style file. For a    |
		    |      | list of available style names, see `style.available`.       |
		    +------+-------------------------------------------------------------+
		    | dict | Dictionary with valid key/value pairs for                   |
		    |      | `matplotlib.rcParams`.                                      |
		    +------+-------------------------------------------------------------+
		    | list | A list of style specifiers (str or dict) applied from first |
		    |      | to last in the list.                                        |
		    +------+-------------------------------------------------------------+
	**/
	static public function use(style:Dynamic):Dynamic;
}