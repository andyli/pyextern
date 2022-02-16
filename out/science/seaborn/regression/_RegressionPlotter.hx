/* This file is generated, do not edit! */
package seaborn.regression;
@:pythonImport("seaborn.regression", "_RegressionPlotter") extern class _RegressionPlotter {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(x:Dynamic, y:Dynamic, ?data:Dynamic, ?x_estimator:Dynamic, ?x_bins:Dynamic, ?x_ci:Dynamic, ?scatter:Dynamic, ?fit_reg:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?seed:Dynamic, ?order:Dynamic, ?logistic:Dynamic, ?lowess:Dynamic, ?robust:Dynamic, ?logx:Dynamic, ?x_partial:Dynamic, ?y_partial:Dynamic, ?truncate:Dynamic, ?dropna:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?color:Dynamic, ?label:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(x:Dynamic, y:Dynamic, ?data:Dynamic, ?x_estimator:Dynamic, ?x_bins:Dynamic, ?x_ci:Dynamic, ?scatter:Dynamic, ?fit_reg:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?seed:Dynamic, ?order:Dynamic, ?logistic:Dynamic, ?lowess:Dynamic, ?robust:Dynamic, ?logx:Dynamic, ?x_partial:Dynamic, ?y_partial:Dynamic, ?truncate:Dynamic, ?dropna:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?color:Dynamic, ?label:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Discretize a predictor by assigning value to closest bin.
	**/
	public function bin_predictor(bins:Dynamic):Dynamic;
	/**
		Remove observations with missing data.
	**/
	public function dropna(?vars:python.VarArgs<Dynamic>):Dynamic;
	/**
		Extract variables from data or use directly.
	**/
	public function establish_variables(data:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	/**
		Data with a point estimate and CI for each discrete x value.
	**/
	public var estimate_data : Dynamic;
	/**
		Low-level regression and prediction using linear algebra.
	**/
	public function fit_fast(grid:Dynamic):Dynamic;
	/**
		Fit the model in log-space.
	**/
	public function fit_logx(grid:Dynamic):Dynamic;
	/**
		Fit a locally-weighted regression, which returns its own grid.
	**/
	public function fit_lowess():Dynamic;
	/**
		Regression using numpy polyfit for higher-order trends.
	**/
	public function fit_poly(grid:Dynamic, order:Dynamic):Dynamic;
	/**
		Fit the regression model.
	**/
	public function fit_regression(?ax:Dynamic, ?x_range:Dynamic, ?grid:Dynamic):Dynamic;
	/**
		More general regression function using statsmodels objects.
	**/
	public function fit_statsmodels(grid:Dynamic, model:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw the model.
	**/
	public function lineplot(ax:Dynamic, kws:Dynamic):Dynamic;
	/**
		Draw the full plot.
	**/
	public function plot(ax:Dynamic, scatter_kws:Dynamic, line_kws:Dynamic):Dynamic;
	/**
		Regress b from a keeping a's original mean.
	**/
	public function regress_out(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Data where each observation is a point.
	**/
	public var scatter_data : Dynamic;
	/**
		Draw the data.
	**/
	public function scatterplot(ax:Dynamic, kws:Dynamic):Dynamic;
}