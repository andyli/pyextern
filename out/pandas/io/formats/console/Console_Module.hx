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
	static public var _initial_defencoding : Dynamic;
	/**
		Try to find the most capable encoding supported by the console.
		slightly modified from the way IPython handles the same issue.
	**/
	static public function detect_console_encoding():Dynamic;
	/**
		Return console size as tuple = (width, height).
		
		Returns (None,None) in non-interactive session.
	**/
	static public function get_console_size():Dynamic;
	/**
		Detect terminal size and return tuple = (width, height).
		
		Only to be used when running in a terminal. Note that the IPython notebook,
		IPython zmq frontends, or IDLE do not run in a terminal,
	**/
	static public function get_terminal_size():Dynamic;
	/**
		check if we're running in an interactive shell
		
		returns True if running under python/ipython interactive shell
	**/
	static public function in_interactive_session():Dynamic;
	/**
		check if we're inside an IPython Notebook
		
		.. deprecated:: 0.14.1
		   This is no longer needed, or working, in IPython 3 and above.
	**/
	static public function in_ipnb():Dynamic;
	/**
		check if we're inside an an IPython zmq frontend
	**/
	static public function in_ipython_frontend():Dynamic;
	/**
		check if we're inside an IPython qtconsole
		
		.. deprecated:: 0.14.1
		   This is no longer needed, or working, in IPython 3 and above.
	**/
	static public function in_qtconsole():Dynamic;
}