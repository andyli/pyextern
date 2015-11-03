/* This file is generated, do not edit! */
package pandas.stats._var;
@:pythonImport("pandas.stats.var", "PanelVAR") extern class PanelVAR {
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
	public function ___init__(data:Dynamic, lags:Dynamic, ?intercept:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, lags:Dynamic, ?intercept:Dynamic):Void;
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
	static public var _alpha : Dynamic;
	static public var _beta_raw : Dynamic;
	static public var _cov_beta : Dynamic;
	/**
		Returns the cross-section of the data at the given timestep.
	**/
	public function _data_xs(i:Dynamic):Dynamic;
	/**
		Returns the covariance of the beta errors for the forecast at
		1, 2, ..., n timesteps.
	**/
	public function _forecast_cov_beta_raw(n:Dynamic):Dynamic;
	public function _forecast_cov_raw(n:Dynamic):Dynamic;
	/**
		Returns the covariance of the residual errors for the forecast at
		1, 2, ..., h timesteps.
	**/
	public function _forecast_cov_resid_raw(h:Dynamic):Dynamic;
	/**
		Returns the forecast at 1, 2, ..., h timesteps in the future.
	**/
	public function _forecast_raw(h:Dynamic):Dynamic;
	/**
		Returns the standard error of the forecasts
		at 1, 2, ..., n timesteps.
	**/
	public function _forecast_std_err_raw(h:Dynamic):Dynamic;
	static public var _ic : Dynamic;
	static public var _k : Dynamic;
	static public var _lag_betas : Dynamic;
	static public var _lagged_data : Dynamic;
	static public var _nobs : Dynamic;
	/**
		psi value used for calculating standard error.
		
		Returns [psi_0, psi_1, ..., psi_(h - 1)]
	**/
	public function _psi(h:Dynamic):Dynamic;
	static public var _resid_raw : Dynamic;
	static public var _rss : Dynamic;
	static public var _sigma : Dynamic;
	/**
		Returns 0, 1, ..., (h-1)-th power of transpose of B as defined in
		equation (4) on p. 142 of the Stata 11 Time Series reference book.
	**/
	public function _trans_B(h:Dynamic):Dynamic;
	static public var _x : Dynamic;
	static public var aic : Dynamic;
	static public var beta : Dynamic;
	static public var bic : Dynamic;
	/**
		Returns the forecasts at 1, 2, ..., n timesteps in the future.
	**/
	public function forecast(h:Dynamic):Dynamic;
	/**
		Returns the covariance of the forecast residuals.
		
		Returns
		-------
		DataFrame
	**/
	public function forecast_cov(h:Dynamic):Dynamic;
	/**
		Returns the standard errors of the forecast residuals.
		
		Returns
		-------
		DataFrame
	**/
	public function forecast_std_err(h:Dynamic):Dynamic;
	static public var granger_causality : Dynamic;
	static public var ols_results : Dynamic;
	static public var resid : Dynamic;
	static public var summary : Dynamic;
}