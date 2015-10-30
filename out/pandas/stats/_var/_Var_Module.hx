/* This file is generated, do not edit! */
package pandas.stats._var;
@:pythonImport("pandas.stats.var") extern class _Var_Module {
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
	static public function _drop_incomplete_rows(array:Dynamic):Dynamic;
	static public function _make_param_name(lag:Dynamic, name:Dynamic):Dynamic;
	/**
		Converts the given data into a Panel.
	**/
	static public function _prep_panel_data(data:Dynamic):Dynamic;
	/**
		Returns the dot product of the given matrices.
		
		Parameters
		----------
		matrices: argument list of ndarray
	**/
	static public function chain_dot(matrices:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the inverse of A.
	**/
	static public function inv(a:Dynamic):Dynamic;
	/**
		Select number of lags based on a variety of information criteria
		
		Parameters
		----------
		data : DataFrame-like
		max_lags : int
		    Maximum number of lags to evaluate
		ic : {None, 'aic', 'bic', ...}
		    Choosing None will just display the results
		
		Returns
		-------
		None
	**/
	static public function lag_select(data:Dynamic, ?max_lags:Dynamic, ?ic:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
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