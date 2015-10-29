/* This file is generated, do not edit! */
package numpy.core;
@:pythonImport("numpy.core.umath_tests") extern class Umath_tests {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		euclidean_pdist(x[, out])
		
		pairwise euclidean distance on last two dimensions 
		     "(n,d)->(p)" 
	**/
	static public function euclidean_pdist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inner1d(x1, x2[, out])
		
		inner on the last dimension and broadcast on the rest 
		     "(i),(i)->()" 
	**/
	static public function inner1d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		innerwt(x1, x2, x3[, out])
		
		inner1d with a weight argument 
		     "(i),(i),(i)->()" 
	**/
	static public function innerwt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		matrix_multiply(x1, x2[, out])
		
		matrix multiplication on last two dimensions 
		     "(m,n),(n,p)->(m,p)" 
	**/
	static public function matrix_multiply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Test signature parsing of ufunc. 
		Arguments: nin nout signature 
		If fails, it returns NULL. Otherwise it will returns 0 for scalar ufunc and 1 for generalized ufunc. 
	**/
	static public function test_signature(args:haxe.extern.Rest<Dynamic>):Dynamic;
}