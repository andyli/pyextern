/* This file is generated, do not edit! */
package tensorflow.python.platform.app;
@:pythonImport("tensorflow.python.platform.app") extern class App_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _define_help_flags():Dynamic;
	static public var _define_help_flags_called : Dynamic;
	/**
		Writes __main__'s docstring to stdout with some help text.
		
		Args:
		  shorthelp: bool, if True, prints only flags from the main module,
		      rather than all flags.
	**/
	static public function _usage(shorthelp:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Runs the program with an optional 'main' function and 'argv' list.
	**/
	static public function run(?main:Dynamic, ?argv:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}