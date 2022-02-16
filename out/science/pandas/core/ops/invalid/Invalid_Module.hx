/* This file is generated, do not edit! */
package pandas.core.ops.invalid;
@:pythonImport("pandas.core.ops.invalid") extern class Invalid_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		If a comparison has mismatched types and is not necessarily meaningful,
		follow python3 conventions by:
		
		    - returning all-False for equality
		    - returning all-True for inequality
		    - raising TypeError otherwise
		
		Parameters
		----------
		left : array-like
		right : scalar, array-like
		op : operator.{eq, ne, lt, le, gt}
		
		Raises
		------
		TypeError : on inequality comparisons
	**/
	static public function invalid_comparison(left:Dynamic, right:Dynamic, op:Dynamic):Dynamic;
	/**
		Return a binary method that always raises a TypeError.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		invalid_op : function
	**/
	static public function make_invalid_op(name:Dynamic):Dynamic;
}