/* This file is generated, do not edit! */
package pandas.io.formats.terminal;
@:pythonImport("pandas.io.formats.terminal") extern class Terminal_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_terminal_size_linux():Dynamic;
	static public function _get_terminal_size_tput():Dynamic;
	static public function _get_terminal_size_windows():Dynamic;
	/**
		Detect terminal size and return tuple = (width, height).
		
		Only to be used when running in a terminal. Note that the IPython notebook,
		IPython zmq frontends, or IDLE do not run in a terminal,
	**/
	static public function get_terminal_size():Dynamic;
	static public var print_function : Dynamic;
}