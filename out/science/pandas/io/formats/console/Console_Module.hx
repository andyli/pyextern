/* This file is generated, do not edit! */
package pandas.io.formats.console;
@:pythonImport("pandas.io.formats.console") extern class Console_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return console size as tuple = (width, height).
		
		Returns (None,None) in non-interactive session.
	**/
	static public function get_console_size():Dynamic;
	/**
		Get the size of the terminal window.
		
		For each of the two dimensions, the environment variable, COLUMNS
		and LINES respectively, is checked. If the variable is defined and
		the value is a positive integer, it is used.
		
		When COLUMNS or LINES is not defined, which is the common case,
		the terminal connected to sys.__stdout__ is queried
		by invoking os.get_terminal_size.
		
		If the terminal size cannot be successfully queried, either because
		the system doesn't support querying, or because we are not
		connected to a terminal, the value given in fallback parameter
		is used. Fallback defaults to (80, 24) which is the default
		size used by many terminal emulators.
		
		The value returned is a named tuple of type os.terminal_size.
	**/
	static public function get_terminal_size(?fallback:Dynamic):Dynamic;
	/**
		Check if we're running in an interactive shell.
		
		Returns
		-------
		bool
		    True if running under python/ipython interactive shell.
	**/
	static public function in_interactive_session():Dynamic;
	/**
		Check if we're inside an IPython zmq frontend.
		
		Returns
		-------
		bool
	**/
	static public function in_ipython_frontend():Dynamic;
}