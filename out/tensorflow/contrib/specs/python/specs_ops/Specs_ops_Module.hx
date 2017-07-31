/* This file is generated, do not edit! */
package tensorflow.contrib.specs.python.specs_ops;
@:pythonImport("tensorflow.contrib.specs.python.specs_ops") extern class Specs_ops_Module {
	static public function Ap(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Bn(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cl(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		2D LSTM with 3x3 pre-convolution.
	**/
	static public function Clstm2(n:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cm(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cr(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cs(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Ct(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Cx(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Do(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Depth-wise convolution + softmax (used after LSTM).
	**/
	static public function Dwm(n:Dynamic):Dynamic;
	/**
		Depth-wise convolution + sigmoid (used after LSTM).
	**/
	static public function Dws(n:Dynamic):Dynamic;
	static public function Expand(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Import a function from an external module.
		
		Note that the `module_name` must be a module name
		that works with the usual import mechanisms. Shorthands
		like "tf.nn" will not work.
		
		Args:
		    module_name: name of the module
		    function_name: name of the function within the module
		
		Returns:
		    Function-wrapped value of symbol.
	**/
	static public function External(module_name:Dynamic, function_name:Dynamic):Dynamic;
	static public function Fl(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Flat(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Fm(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Fr(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Fs(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Ft(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Fx(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Id(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Import a function by exec.
		
		Args:
		    statements: Python statements
		
		Returns:
		    Function-wrapped value of `f`.
		
		Raises:
		    ValueError: the statements didn't define a value for "f"
	**/
	static public function Import(statements:Dynamic):Dynamic;
	static public function Lrn(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Lstm1(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Lstm1to0(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Lstm2(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Lstm2to0(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Lstm2to1(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Mp(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Print(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Relu(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Reshape(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Sig(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Smax(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Squeeze(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Ssm(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Tanh(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Transpose(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function Unit(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implements an operator that generates a variable.
		
		This function is still experimental. Use it only
		for generating a single variable instance for
		each name.
		
		Args:
		    name: Name of the variable.
		    *args: Other arguments to get_variable.
		    **kw: Other keywords for get_variable.
		
		Returns:
		    A specs object for generating a variable.
	**/
	static public function Var(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
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
		Turn on/off debugging mode.
		
		Debugging mode prints more information about the construction
		of a network.
		
		Args:
		    mode: True if turned on, False otherwise
	**/
	static public function debug(?mode:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}