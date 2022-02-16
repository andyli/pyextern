/* This file is generated, do not edit! */
package pandas._libs.ops;
@:pythonImport("pandas._libs.ops") extern class Ops_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function maybe_convert_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Apply the given binary operator `op` between each element of the array
		`values` and the scalar `val`.
		
		Parameters
		----------
		values : ndarray[object]
		val : object
		op : binary operator
		
		Returns
		-------
		result : ndarray[object]
	**/
	static public function scalar_binop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compare each element of `values` array with the scalar `val`, with
		the comparison operation described by `op`.
		
		Parameters
		----------
		values : ndarray[object]
		val : object
		op : {operator.eq, operator.ne,
		      operator.le, operator.lt,
		      operator.ge, operator.gt}
		
		Returns
		-------
		result : ndarray[bool]
	**/
	static public function scalar_compare(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Apply the given binary operator `op` pointwise to the elements of
		arrays `left` and `right`.
		
		Parameters
		----------
		left : ndarray[object]
		right : ndarray[object]
		op : binary operator
		
		Returns
		-------
		result : ndarray[object]
	**/
	static public function vec_binop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compare the elements of `left` with the elements of `right` pointwise,
		with the comparison operation described by `op`.
		
		Parameters
		----------
		left : ndarray[object]
		right : ndarray[object]
		op : {operator.eq, operator.ne,
		      operator.le, operator.lt,
		      operator.ge, operator.gt}
		
		Returns
		-------
		result : ndarray[bool]
	**/
	static public function vec_compare(args:haxe.extern.Rest<Dynamic>):Dynamic;
}