/* This file is generated, do not edit! */
package pandas.computation.common;
@:pythonImport("pandas.computation.common") extern class Common_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		if we have bytes, decode them to unicode 
	**/
	static public function _ensure_decoded(s:Dynamic):Dynamic;
	/**
		wrapper around numpy.result_type which overcomes the NPY_MAXARGS (32)
		argument limit 
	**/
	static public function _result_type_many(?arrays_and_dtypes:python.VarArgs<Dynamic>):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
}