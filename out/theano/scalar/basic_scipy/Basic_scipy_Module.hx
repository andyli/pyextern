/* This file is generated, do not edit! */
package theano.scalar.basic_scipy;
@:pythonImport("theano.scalar.basic_scipy") extern class Basic_scipy_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function chi2sf(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var complex_types : Dynamic;
	static public var discrete_types : Dynamic;
	static public var division : Dynamic;
	static public function erf(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erfc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erfcinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erfcx(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function erfinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function exp(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var float_types : Dynamic;
	static public function gamma(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gammaln(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var imported_scipy_special : Dynamic;
	static public function j0(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function j1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function psi(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function upcast(dtype:Dynamic, ?dtypes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Upgrade any int types to float32 or float64 to avoid losing precision.
	**/
	static public function upgrade_to_float(?types:python.VarArgs<Dynamic>):Dynamic;
	/**
		Upgrade any int and float32 to float64 to do as SciPy.
	**/
	static public function upgrade_to_float64(?types:python.VarArgs<Dynamic>):Dynamic;
	/**
		Don't accept complex, otherwise call upgrade_to_float().
	**/
	static public function upgrade_to_float_no_complex(?types:python.VarArgs<Dynamic>):Dynamic;
}