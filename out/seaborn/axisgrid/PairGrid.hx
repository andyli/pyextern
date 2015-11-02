/* This file is generated, do not edit! */
package seaborn.axisgrid;
@:pythonImport("seaborn.axisgrid", "PairGrid") extern class PairGrid {
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
		Initialize the plot figure and PairGrid object.
		
		Parameters
		----------
		data : DataFrame
		    Tidy (long-form) dataframe where each column is a variable and
		    each row is an observation.
		hue : string (variable name), optional
		    Variable in ``data`` to map plot aspects to different colors.
		hue_order : list of strings
		    Order for the levels of the hue variable in the palette
		palette : dict or seaborn color palette
		    Set of colors for mapping the ``hue`` variable. If a dict, keys
		    should be values  in the ``hue`` variable.
		hue_kws : dictionary of param -> list of values mapping
		    Other keyword arguments to insert into the plotting call to let
		    other plot attributes vary across levels of the hue variable (e.g.
		    the markers in a scatterplot).
		vars : list of variable names, optional
		    Variables within ``data`` to use, otherwise use every column with
		    a numeric datatype.
		{x, y}_vars : lists of variable names, optional
		    Variables within ``data`` to use separately for the rows and
		    columns of the figure; i.e. to make a non-square plot.
		size : scalar, optional
		    Height (in inches) of each facet.
		aspect : scalar, optional
		    Aspect * size gives the width (in inches) of each facet.
		despine : boolean, optional
		    Remove the top and right spines from the plots.
		dropna : boolean, optional
		    Drop missing values from the data before plotting.
		
		See Also
		--------
		pairplot : Easily drawing common uses of :class:`PairGrid`.
		FacetGrid : Subplot grid for plotting conditional relationships.
		
		Examples
		--------
		
		Draw a scatterplot for each pairwise relationship:
		
		.. plot::
		    :context: close-figs
		
		    >>> import matplotlib.pyplot as plt
		    >>> import seaborn as sns; sns.set()
		    >>> iris = sns.load_dataset("iris")
		    >>> g = sns.PairGrid(iris)
		    >>> g = g.map(plt.scatter)
		
		Show a univariate distribution on the diagonal:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.PairGrid(iris)
		    >>> g = g.map_diag(plt.hist)
		    >>> g = g.map_offdiag(plt.scatter)
		
		(It's not actually necessary to catch the return value every time,
		as it is the same object, but it makes it easier to deal with the
		doctests).
		
		Color the points using a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.PairGrid(iris, hue="species")
		    >>> g = g.map(plt.scatter)
		    >>> g = g.add_legend()
		
		Plot a subset of variables
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.PairGrid(iris, vars=["sepal_length", "sepal_width"])
		    >>> g = g.map(plt.scatter)
		
		Pass additional keyword arguments to the functions
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.PairGrid(iris)
		    >>> g = g.map_diag(plt.hist, edgecolor="w")
		    >>> g = g.map_offdiag(plt.scatter, edgecolor="w", s=40)
		
		Use different variables for the rows and columns:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.PairGrid(iris,
		    ...                  x_vars=["sepal_length", "sepal_width"],
		    ...                  y_vars=["petal_length", "petal_width"])
		    >>> g = g.map(plt.scatter)
		
		Use different functions on the upper and lower triangles:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.PairGrid(iris)
		    >>> g = g.map_upper(plt.scatter)
		    >>> g = g.map_lower(sns.kdeplot, cmap="Blues_d")
		    >>> g = g.map_diag(sns.kdeplot, lw=3, legend=False)
		
		Use different colors and markers for each categorical level:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.PairGrid(iris, hue="species", palette="Set2",
		    ...                  hue_kws={"marker": ["o", "s", "D"]})
		    >>> g = g.map(plt.scatter, linewidths=1, edgecolor="w", s=40)
		    >>> g = g.add_legend()
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, ?hue:Dynamic, ?hue_order:Dynamic, ?palette:Dynamic, ?hue_kws:Dynamic, ?vars:Dynamic, ?x_vars:Dynamic, ?y_vars:Dynamic, ?diag_sharey:Dynamic, ?size:Dynamic, ?aspect:Dynamic, ?despine:Dynamic, ?dropna:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	/**
		Add labels to the left and bottom Axes.
	**/
	public function _add_axis_labels():Dynamic;
	/**
		Turn off axis labels and legend.
	**/
	public function _clean_axis(ax:Dynamic):Dynamic;
	/**
		Find which variables in a DataFrame are numeric.
	**/
	public function _find_numeric_cols(data:Dynamic):Dynamic;
	/**
		Get a list of colors for the hue variable.
	**/
	public function _get_palette(data:Dynamic, hue:Dynamic, hue_order:Dynamic, palette:Dynamic):Dynamic;
	static public var _legend_out : Dynamic;
	static public var _margin_titles : Dynamic;
	/**
		Extract the legend data from an axes object and save it.
	**/
	public function _update_legend_data(ax:Dynamic):Dynamic;
	/**
		Draw a legend, maybe placing it outside axes and resizing the figure.
		
		Parameters
		----------
		legend_data : dict, optional
		    Dictionary mapping label names to matplotlib artist handles. The
		    default reads from ``self._legend_data``.
		title : string, optional
		    Title for the legend. The default reads from ``self._hue_var``.
		label_order : list of labels, optional
		    The order that the legend entries should appear in. The default
		    reads from ``self.hue_names`` or sorts the keys in ``legend_data``.
		kwargs : key, value pairings
		    Other keyword arguments are passed to the underlying legend methods
		    on the Figure or Axes object.
		
		Returns
		-------
		self : Grid instance
		    Returns self for easy chaining.
	**/
	public function add_legend(?legend_data:Dynamic, ?title:Dynamic, ?label_order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with the same function in every subplot.
		
		Parameters
		----------
		func : callable plotting function
		    Must take x, y arrays as positional arguments and draw onto the
		    "currently active" matplotlib Axes.
	**/
	public function map(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with a univariate function on each diagonal subplot.
		
		Parameters
		----------
		func : callable plotting function
		    Must take an x array as a positional arguments and draw onto the
		    "currently active" matplotlib Axes. There is a special case when
		    using a ``hue`` variable and ``plt.hist``; the histogram will be
		    plotted with stacked bars.
	**/
	public function map_diag(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with a bivariate function on the lower diagonal subplots.
		
		Parameters
		----------
		func : callable plotting function
		    Must take x, y arrays as positional arguments and draw onto the
		    "currently active" matplotlib Axes.
	**/
	public function map_lower(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with a bivariate function on the off-diagonal subplots.
		
		Parameters
		----------
		func : callable plotting function
		    Must take x, y arrays as positional arguments and draw onto the
		    "currently active" matplotlib Axes.
	**/
	public function map_offdiag(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with a bivariate function on the upper diagonal subplots.
		
		Parameters
		----------
		func : callable plotting function
		    Must take x, y arrays as positional arguments and draw onto the
		    "currently active" matplotlib Axes.
	**/
	public function map_upper(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save the figure.
	**/
	public function savefig(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set attributes on each subplot Axes.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}