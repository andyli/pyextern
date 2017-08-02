/* This file is generated, do not edit! */
package theano.misc.windows;
@:pythonImport("theano.misc.windows") extern class Windows_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Calls subprocess_Popen and discards the output, returning only the
		exit code.
	**/
	static public function call_subprocess_Popen(command:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Calls subprocess_Popen, returning the output, error and exit code
		in a tuple.
	**/
	static public function output_subprocess_Popen(command:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Utility function to work around windows behavior that open windows.
		
		:see: call_subprocess_Popen and output_subprocess_Popen
	**/
	static public function subprocess_Popen(command:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
}