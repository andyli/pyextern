/* This file is generated, do not edit! */
package matplotlib.quiver;
@:pythonImport("matplotlib.quiver") extern class Quiver_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _barbs_doc : Dynamic;
	static public function _check_consistent_shapes(?arrays:python.VarArgs<Dynamic>):Dynamic;
	/**
		Helper function to parse positional parameters for colored vector plots.
		
		This is currently used for Quiver and Barbs.
		
		Parameters
		----------
		*args : list
		    list of 2-5 arguments. Depending on their number they are parsed to::
		
		        U, V
		        U, V, C
		        X, Y, U, V
		        X, Y, U, V, C
		
		caller_name : str
		    Name of the calling method (used in error messages).
	**/
	static public function _parse_args(?args:python.VarArgs<Dynamic>, ?caller_name:Dynamic):Dynamic;
	static public var _quiver_doc : Dynamic;
}