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
		slighly modified from the way IPython handles the same issue.
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
}