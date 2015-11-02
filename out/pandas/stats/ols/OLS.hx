/* This file is generated, do not edit! */
package pandas.stats.ols;
@:pythonImport("pandas.stats.ols", "OLS") extern class OLS {
	static public var RESULT_FIELDS : Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(y:Dynamic, x:Dynamic, ?intercept:Dynamic, ?weights:Dynamic, ?nw_lags:Dynamic, ?nw_overlap:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _beta_raw : Dynamic;
	static public var _coef_table : Dynamic;
	static public var _df_model_raw : Dynamic;
	static public var _df_raw : Dynamic;
	static public var _df_resid_raw : Dynamic;
	static public var _f_stat_raw : Dynamic;
	public var _nobs : Dynamic;
	static public var _p_value_raw : Dynamic;
	static public var _panel_model : Dynamic;
	/**
		Cleans the input for single OLS.
		
		Parameters
		----------
		lhs: Series
		    Dependent variable in the regression.
		rhs: dict, whose values are Series, DataFrame, or dict
		    Explanatory variables of the regression.
		
		Returns
		-------
		Series, DataFrame
		    Cleaned lhs and rhs
	**/
	public function _prepare_data():Dynamic;
	static public var _r2_adj_raw : Dynamic;
	static public var _r2_raw : Dynamic;
	static public var _resid_raw : Dynamic;
	static public var _results : Dynamic;
	static public var _rmse_raw : Dynamic;
	static public var _std_err_raw : Dynamic;
	static public var _t_stat_raw : Dynamic;
	static public var _time_obs_count : Dynamic;
	public var _total_times : Dynamic;
	public var _use_centered_tss : Dynamic;
	static public var _var_beta_raw : Dynamic;
	static public var _y_fitted_raw : Dynamic;
	static public var _y_predict_raw : Dynamic;
	static public var beta : Dynamic;
	static public var df : Dynamic;
	static public var df_model : Dynamic;
	static public var df_resid : Dynamic;
	static public var f_stat : Dynamic;
	/**
		Runs the F test, given a joint hypothesis.  The hypothesis is
		represented by a collection of equations, in the form
		
		A*x_1+B*x_2=C
		
		You must provide the coefficients even if they're 1.  No spaces.
		
		The equations can be passed as either a single string or a
		list of strings.
		
		Examples
		--------
		o = ols(...)
		o.f_test('1*x1+2*x2=0,1*x3=0')
		o.f_test(['1*x1+2*x2=0','1*x3=0'])
	**/
	public function f_test(hypothesis:Dynamic):Dynamic;
	public var nobs : Dynamic;
	public var nw_lags : Dynamic;
	static public var p_value : Dynamic;
	/**
		Parameters
		----------
		beta : Series
		x : Series or DataFrame
		fill_value : scalar or dict, default None
		fill_method : {'backfill', 'bfill', 'pad', 'ffill', None}, default None
		axis : {0, 1}, default 0
		    See DataFrame.fillna for more details
		
		Notes
		-----
		1. If both fill_value and fill_method are None then NaNs are dropped
		(this is the default behavior)
		2. An intercept will be automatically added to the new_y_values if
		   the model was fitted using an intercept
		
		Returns
		-------
		Series of predicted values
	**/
	public function predict(?beta:Dynamic, ?x:Dynamic, ?fill_value:Dynamic, ?fill_method:Dynamic, ?axis:Dynamic):Dynamic;
	static public var r2 : Dynamic;
	static public var r2_adj : Dynamic;
	static public var resid : Dynamic;
	static public var rmse : Dynamic;
	static public var std_err : Dynamic;
	static public var summary : Dynamic;
	static public var summary_as_matrix : Dynamic;
	static public var t_stat : Dynamic;
	static public var var_beta : Dynamic;
	/**
		Returns the filtered x used in the regression.
	**/
	public var x : Dynamic;
	/**
		Returns the filtered y used in the regression.
	**/
	public var y : Dynamic;
	static public var y_fitted : Dynamic;
	static public var y_predict : Dynamic;
}