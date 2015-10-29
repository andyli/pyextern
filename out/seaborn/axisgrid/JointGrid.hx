/* This file is generated, do not edit! */
package seaborn.axisgrid;
@:pythonImport("seaborn.axisgrid", "JointGrid") extern class JointGrid {
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
		Set up the grid of subplots.
		
		Parameters
		----------
		x, y : strings or vectors
		    Data or names of variables in ``data``.
		data : DataFrame, optional
		    DataFrame when ``x`` and ``y`` are variable names.
		size : numeric
		    Size of each side of the figure in inches (it will be square).
		ratio : numeric
		    Ratio of joint axes size to marginal axes height.
		space : numeric, optional
		    Space between the joint and marginal axes
		dropna : bool, optional
		    If True, remove observations that are missing from `x` and `y`.
		{x, y}lim : two-tuples, optional
		    Axis limits to set before plotting.
		
		See Also
		--------
		jointplot : High-level interface for drawing bivariate plots with
		            several different default plot kinds.
		
		Examples
		--------
		
		Initialize the figure but don't draw any plots onto it:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set(style="ticks", color_codes=True)
		    >>> tips = sns.load_dataset("tips")
		    >>> g = sns.JointGrid(x="total_bill", y="tip", data=tips)
		
		Add plots using default parameters:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.JointGrid(x="total_bill", y="tip", data=tips)
		    >>> g = g.plot(sns.regplot, sns.distplot)
		
		Draw the join and marginal plots separately, which allows finer-level
		control other parameters:
		
		.. plot::
		    :context: close-figs
		
		    >>> import matplotlib.pyplot as plt
		    >>> g = sns.JointGrid(x="total_bill", y="tip", data=tips)
		    >>> g = g.plot_joint(plt.scatter, color=".5", edgecolor="white")
		    >>> g = g.plot_marginals(sns.distplot, kde=False, color=".5")
		
		Draw the two marginal plots separately:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np
		    >>> g = sns.JointGrid(x="total_bill", y="tip", data=tips)
		    >>> g = g.plot_joint(plt.scatter, color="m", edgecolor="white")
		    >>> _ = g.ax_marg_x.hist(tips["total_bill"], color="b", alpha=.6,
		    ...                      bins=np.arange(0, 60, 5))
		    >>> _ = g.ax_marg_y.hist(tips["tip"], color="r", alpha=.6,
		    ...                      orientation="horizontal",
		    ...                      bins=np.arange(0, 12, 1))
		
		Add an annotation with a statistic summarizing the bivariate
		relationship:
		
		.. plot::
		    :context: close-figs
		
		    >>> from scipy import stats
		    >>> g = sns.JointGrid(x="total_bill", y="tip", data=tips)
		    >>> g = g.plot_joint(plt.scatter,
		    ...                  color="g", s=40, edgecolor="white")
		    >>> g = g.plot_marginals(sns.distplot, kde=False, color="g")
		    >>> g = g.annotate(stats.pearsonr)
		
		Use a custom function and formatting for the annotation
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.JointGrid(x="total_bill", y="tip", data=tips)
		    >>> g = g.plot_joint(plt.scatter,
		    ...                  color="g", s=40, edgecolor="white")
		    >>> g = g.plot_marginals(sns.distplot, kde=False, color="g")
		    >>> rsquare = lambda a, b: stats.pearsonr(a, b)[0] ** 2
		    >>> g = g.annotate(rsquare, template="{stat}: {val:.2f}",
		    ...                stat="$R^2$", loc="upper left", fontsize=12)
		
		Remove the space between the joint and marginal axes:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.JointGrid(x="total_bill", y="tip", data=tips, space=0)
		    >>> g = g.plot_joint(sns.kdeplot, cmap="Blues_d")
		    >>> g = g.plot_marginals(sns.kdeplot, shade=True)
		
		Draw a smaller plot with relatively larger marginal axes:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.JointGrid(x="total_bill", y="tip", data=tips,
		    ...                   size=5, ratio=2)
		    >>> g = g.plot_joint(sns.kdeplot, cmap="Reds_d")
		    >>> g = g.plot_marginals(sns.kdeplot, color="r", shade=True)
		
		Set limits on the axes:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.JointGrid(x="total_bill", y="tip", data=tips,
		    ...                   xlim=(0, 50), ylim=(0, 8))
		    >>> g = g.plot_joint(sns.kdeplot, cmap="Purples_d")
		    >>> g = g.plot_marginals(sns.kdeplot, color="m", shade=True)
	**/
	public function __init__(x:Dynamic, y:Dynamic, ?data:Dynamic, ?size:Dynamic, ?ratio:Dynamic, ?space:Dynamic, ?dropna:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	/**
		Annotate the plot with a statistic about the relationship.
		
		Parameters
		----------
		func : callable
		    Statistical function that maps the x, y vectors either to (val, p)
		    or to val.
		template : string format template, optional
		    The template must have the format keys "stat" and "val";
		    if `func` returns a p value, it should also have the key "p".
		stat : string, optional
		    Name to use for the statistic in the annotation, by default it
		    uses the name of `func`.
		loc : string or int, optional
		    Matplotlib legend location code; used to place the annotation.
		kwargs : key, value mappings
		    Other keyword arguments are passed to `ax.legend`, which formats
		    the annotation.
		
		Returns
		-------
		self : JointGrid instance.
		    Returns `self`.
	**/
	public function annotate(func:Dynamic, ?template:Dynamic, ?stat:Dynamic, ?loc:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Shortcut to draw the full plot.
		
		Use `plot_joint` and `plot_marginals` directly for more control.
		
		Parameters
		----------
		joint_func, marginal_func: callables
		    Functions to draw the bivariate and univariate plots.
		
		Returns
		-------
		self : JointGrid instance
		    Returns `self`.
	**/
	public function plot(joint_func:Dynamic, marginal_func:Dynamic, ?annot_func:Dynamic):Dynamic;
	/**
		Draw a bivariate plot of `x` and `y`.
		
		Parameters
		----------
		func : plotting callable
		    This must take two 1d arrays of data as the first two
		    positional arguments, and it must plot on the "current" axes.
		kwargs : key, value mappings
		    Keyword argument are passed to the plotting function.
		
		Returns
		-------
		self : JointGrid instance
		    Returns `self`.
	**/
	public function plot_joint(func:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Draw univariate plots for `x` and `y` separately.
		
		Parameters
		----------
		func : plotting callable
		    This must take a 1d array of data as the first positional
		    argument, it must plot on the "current" axes, and it must
		    accept a "vertical" keyword argument to orient the measure
		    dimension of the plot vertically.
		kwargs : key, value mappings
		    Keyword argument are passed to the plotting function.
		
		Returns
		-------
		self : JointGrid instance
		    Returns `self`.
	**/
	public function plot_marginals(func:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Wrap figure.savefig defaulting to tight bounding box.
	**/
	public function savefig(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Set the axis labels on the bivariate axes.
		
		Parameters
		----------
		xlabel, ylabel : strings
		    Label names for the x and y variables.
		kwargs : key, value mappings
		    Other keyword arguments are passed to the set_xlabel or
		    set_ylabel.
		
		Returns
		-------
		self : JointGrid instance
		    returns `self`
	**/
	public function set_axis_labels(?xlabel:Dynamic, ?ylabel:Dynamic, kwargs:Dynamic):Dynamic;
}