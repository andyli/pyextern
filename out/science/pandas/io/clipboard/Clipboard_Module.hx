/* This file is generated, do not edit! */
package pandas.io.clipboard;
@:pythonImport("pandas.io.clipboard") extern class Clipboard_Module {
	static public var ENCODING : Dynamic;
	static public var EXCEPT_MSG : Dynamic;
	static public var HAS_DISPLAY : Dynamic;
	static public var WHICH_CMD : Dynamic;
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
	static public var __version__ : Dynamic;
	static public function _executable_exists(name:Dynamic):Dynamic;
	static public function _stringifyText(text:Dynamic):Dynamic;
	/**
		A stub function for paste(), which will load the real paste() function when
		called so that the real paste() function is used for later calls.
		
		This allows users to import pyperclip without having determine_clipboard()
		automatically run, which will automatically select a clipboard mechanism.
		This could be a problem if it selects, say, the memory-heavy PyQt4 module
		but the user was just going to immediately call set_clipboard() to use a
		different clipboard mechanism.
		
		The lazy loading this stub function implements gives the user a chance to
		call set_clipboard() to pick another clipboard mechanism. Or, if the user
		simply calls copy() or paste() without calling set_clipboard() first,
		will fall back on whatever clipboard mechanism that determine_clipboard()
		automatically chooses.
	**/
	static public function clipboard_get():Dynamic;
	/**
		A stub function for copy(), which will load the real copy() function when
		called so that the real copy() function is used for later calls.
		
		This allows users to import pyperclip without having determine_clipboard()
		automatically run, which will automatically select a clipboard mechanism.
		This could be a problem if it selects, say, the memory-heavy PyQt4 module
		but the user was just going to immediately call set_clipboard() to use a
		different clipboard mechanism.
		
		The lazy loading this stub function implements gives the user a chance to
		call set_clipboard() to pick another clipboard mechanism. Or, if the user
		simply calls copy() or paste() without calling set_clipboard() first,
		will fall back on whatever clipboard mechanism that determine_clipboard()
		automatically chooses.
	**/
	static public function clipboard_set(text:Dynamic):Dynamic;
	/**
		A stub function for copy(), which will load the real copy() function when
		called so that the real copy() function is used for later calls.
		
		This allows users to import pyperclip without having determine_clipboard()
		automatically run, which will automatically select a clipboard mechanism.
		This could be a problem if it selects, say, the memory-heavy PyQt4 module
		but the user was just going to immediately call set_clipboard() to use a
		different clipboard mechanism.
		
		The lazy loading this stub function implements gives the user a chance to
		call set_clipboard() to pick another clipboard mechanism. Or, if the user
		simply calls copy() or paste() without calling set_clipboard() first,
		will fall back on whatever clipboard mechanism that determine_clipboard()
		automatically chooses.
	**/
	static public function copy(text:Dynamic):Dynamic;
	/**
		Determine the OS/platform and set the copy() and paste() functions
		accordingly.
	**/
	static public function determine_clipboard():Dynamic;
	static public function get_errno(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function init_dev_clipboard_clipboard():Dynamic;
	static public function init_klipper_clipboard():Dynamic;
	static public function init_no_clipboard():Dynamic;
	static public function init_osx_pbcopy_clipboard():Dynamic;
	static public function init_osx_pyobjc_clipboard():Dynamic;
	static public function init_qt_clipboard():Dynamic;
	static public function init_windows_clipboard():Dynamic;
	static public function init_wsl_clipboard():Dynamic;
	static public function init_xclip_clipboard():Dynamic;
	static public function init_xsel_clipboard():Dynamic;
	static public function is_available():Dynamic;
	/**
		A stub function for copy(), which will load the real copy() function when
		called so that the real copy() function is used for later calls.
		
		This allows users to import pyperclip without having determine_clipboard()
		automatically run, which will automatically select a clipboard mechanism.
		This could be a problem if it selects, say, the memory-heavy PyQt4 module
		but the user was just going to immediately call set_clipboard() to use a
		different clipboard mechanism.
		
		The lazy loading this stub function implements gives the user a chance to
		call set_clipboard() to pick another clipboard mechanism. Or, if the user
		simply calls copy() or paste() without calling set_clipboard() first,
		will fall back on whatever clipboard mechanism that determine_clipboard()
		automatically chooses.
	**/
	static public function lazy_load_stub_copy(text:Dynamic):Dynamic;
	/**
		A stub function for paste(), which will load the real paste() function when
		called so that the real paste() function is used for later calls.
		
		This allows users to import pyperclip without having determine_clipboard()
		automatically run, which will automatically select a clipboard mechanism.
		This could be a problem if it selects, say, the memory-heavy PyQt4 module
		but the user was just going to immediately call set_clipboard() to use a
		different clipboard mechanism.
		
		The lazy loading this stub function implements gives the user a chance to
		call set_clipboard() to pick another clipboard mechanism. Or, if the user
		simply calls copy() or paste() without calling set_clipboard() first,
		will fall back on whatever clipboard mechanism that determine_clipboard()
		automatically chooses.
	**/
	static public function lazy_load_stub_paste():Dynamic;
	/**
		A stub function for paste(), which will load the real paste() function when
		called so that the real paste() function is used for later calls.
		
		This allows users to import pyperclip without having determine_clipboard()
		automatically run, which will automatically select a clipboard mechanism.
		This could be a problem if it selects, say, the memory-heavy PyQt4 module
		but the user was just going to immediately call set_clipboard() to use a
		different clipboard mechanism.
		
		The lazy loading this stub function implements gives the user a chance to
		call set_clipboard() to pick another clipboard mechanism. Or, if the user
		simply calls copy() or paste() without calling set_clipboard() first,
		will fall back on whatever clipboard mechanism that determine_clipboard()
		automatically chooses.
	**/
	static public function paste():Dynamic;
	/**
		Explicitly sets the clipboard mechanism. The "clipboard mechanism" is how
		the copy() and paste() functions interact with the operating system to
		implement the copy/paste feature. The clipboard parameter must be one of:
		    - pbcopy
		    - pbobjc (default on Mac OS X)
		    - qt
		    - xclip
		    - xsel
		    - klipper
		    - windows (default on Windows)
		    - no (this is what is set when no clipboard mechanism can be found)
	**/
	static public function set_clipboard(clipboard:Dynamic):Dynamic;
	/**
		sizeof(C type) -> integer
		sizeof(C instance) -> integer
		Return the size in bytes of a C instance
	**/
	static public function sizeof(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a command, mode, and a PATH string, return the path which
		conforms to the given mode on the PATH, or None if there is no such
		file.
		
		`mode` defaults to os.F_OK | os.X_OK. `path` defaults to the result
		of os.environ.get("PATH"), or can be overridden with a custom search
		path.
	**/
	static public function which(cmd:Dynamic, ?mode:Dynamic, ?path:Dynamic):Dynamic;
}