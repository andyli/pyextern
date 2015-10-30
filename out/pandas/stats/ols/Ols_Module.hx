/* This file is generated, do not edit! */
package pandas.stats.ols;
@:pythonImport("pandas.stats.ols") extern class Ols_Module {
	static public var _FP_ERR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Glue input X variables together while checking for potential
		duplicates
	**/
	static public function _combine_rhs(rhs:Dynamic):Dynamic;
	static public function _ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Cleans the input for single OLS.
		
		Parameters
		----------
		lhs : Series
		    Dependent variable in the regression.
		rhs : dict, whose values are Series, DataFrame, or dict
		    Explanatory variables of the regression.
		weights : array-like, optional
		    1d array of weights.  If None, equivalent to an unweighted OLS.
		
		Returns
		-------
		Series, DataFrame
		    Cleaned lhs and rhs
	**/
	static public function _filter_data(lhs:Dynamic, rhs:Dynamic, ?weights:Dynamic):Dynamic;
	/**
		Combine dictionaries with non-overlapping keys
	**/
	static public function _safe_update(d:Dynamic, other:Dynamic):Dynamic;
	static public function _y_converter(y:Dynamic):Dynamic;
	static public function f_stat_to_dict(result:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
}