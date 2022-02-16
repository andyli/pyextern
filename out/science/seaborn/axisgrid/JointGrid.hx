/* This file is generated, do not edit! */
package seaborn.axisgrid;
@:pythonImport("seaborn.axisgrid", "JointGrid") extern class JointGrid {
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
		Set up the grid of subplots and store data internally for easy plotting.
		
		Parameters
		----------
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
		height : number
		    Size of each side of the figure in inches (it will be square).
		ratio : number
		    Ratio of joint axes height to marginal axes height.
		space : number
		    Space between the joint and marginal axes
		dropna : bool
		    If True, remove missing observations before plotting.
		{x, y}lim : pairs of numbers
		    Set axis limits to these values before plotting.
		marginal_ticks : bool
		    If False, suppress ticks on the count/density axis of the marginal plots.
		hue : vector or key in ``data``
		    Semantic variable that is mapped to determine the color of plot elements.
		    Note: unlike in :class:`FacetGrid` or :class:`PairGrid`, the axes-level
		    functions must support ``hue`` to use it in :class:`JointGrid`.
		palette : string, list, dict, or :class:`matplotlib.colors.Colormap`
		    Method for choosing the colors to use when mapping the ``hue`` semantic.
		    String values are passed to :func:`color_palette`. List or dict values
		    imply categorical mapping, while a colormap object implies numeric mapping.
		hue_order : vector of strings
		    Specify the order of processing and plotting for categorical levels of the
		    ``hue`` semantic.
		hue_norm : tuple or :class:`matplotlib.colors.Normalize`
		    Either a pair of values that set the normalization range in data units
		    or an object that will map from data units into a [0, 1] interval. Usage
		    implies numeric mapping.
		
		See Also
		--------
		jointplot : Draw a bivariate plot with univariate marginal distributions.
		PairGrid : Set up a figure with joint and marginal views on multiple variables.
		jointplot : Draw multiple bivariate plots with univariate marginal distributions.
		
		Examples
		--------
		
		.. include:: ../docstrings/JointGrid.rst
	**/
	@:native("__init__")
	public function ___init__(?x:Dynamic, ?y:Dynamic, ?data:Dynamic, ?height:Dynamic, ?ratio:Dynamic, ?space:Dynamic, ?dropna:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?size:Dynamic, ?marginal_ticks:Dynamic, ?hue:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic):Dynamic;
	/**
		Set up the grid of subplots and store data internally for easy plotting.
		
		Parameters
		----------
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
		height : number
		    Size of each side of the figure in inches (it will be square).
		ratio : number
		    Ratio of joint axes height to marginal axes height.
		space : number
		    Space between the joint and marginal axes
		dropna : bool
		    If True, remove missing observations before plotting.
		{x, y}lim : pairs of numbers
		    Set axis limits to these values before plotting.
		marginal_ticks : bool
		    If False, suppress ticks on the count/density axis of the marginal plots.
		hue : vector or key in ``data``
		    Semantic variable that is mapped to determine the color of plot elements.
		    Note: unlike in :class:`FacetGrid` or :class:`PairGrid`, the axes-level
		    functions must support ``hue`` to use it in :class:`JointGrid`.
		palette : string, list, dict, or :class:`matplotlib.colors.Colormap`
		    Method for choosing the colors to use when mapping the ``hue`` semantic.
		    String values are passed to :func:`color_palette`. List or dict values
		    imply categorical mapping, while a colormap object implies numeric mapping.
		hue_order : vector of strings
		    Specify the order of processing and plotting for categorical levels of the
		    ``hue`` semantic.
		hue_norm : tuple or :class:`matplotlib.colors.Normalize`
		    Either a pair of values that set the normalization range in data units
		    or an object that will map from data units into a [0, 1] interval. Usage
		    implies numeric mapping.
		
		See Also
		--------
		jointplot : Draw a bivariate plot with univariate marginal distributions.
		PairGrid : Set up a figure with joint and marginal views on multiple variables.
		jointplot : Draw multiple bivariate plots with univariate marginal distributions.
		
		Examples
		--------
		
		.. include:: ../docstrings/JointGrid.rst
	**/
	public function new(?x:Dynamic, ?y:Dynamic, ?data:Dynamic, ?height:Dynamic, ?ratio:Dynamic, ?space:Dynamic, ?dropna:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?size:Dynamic, ?marginal_ticks:Dynamic, ?hue:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic):Void;
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
		Add params to kws if they are accepted by func.
	**/
	public function _inject_kwargs(func:Dynamic, kws:Dynamic, params:Dynamic):Dynamic;
	/**
		DEPRECATED: prefer the `figure` property.
	**/
	public var fig : Dynamic;
	/**
		Access the :class:`matplotlib.figure.Figure` object underlying the grid.
	**/
	public var figure : Dynamic;
	/**
		Draw the plot by passing functions for joint and marginal axes.
		
		This method passes the ``kwargs`` dictionary to both functions. If you
		need more control, call :meth:`JointGrid.plot_joint` and
		:meth:`JointGrid.plot_marginals` directly with specific parameters.
		
		Parameters
		----------
		joint_func, marginal_func : callables
		    Functions to draw the bivariate and univariate plots. See methods
		    referenced above for information about the required characteristics
		    of these functions.
		kwargs
		    Additional keyword arguments are passed to both functions.
		
		Returns
		-------
		:class:`JointGrid` instance
		    Returns ``self`` for easy method chaining.
	**/
	public function plot(joint_func:Dynamic, marginal_func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a bivariate plot on the joint axes of the grid.
		
		Parameters
		----------
		func : plotting callable
		    If a seaborn function, it should accept ``x`` and ``y``. Otherwise,
		    it must accept ``x`` and ``y`` vectors of data as the first two
		    positional arguments, and it must plot on the "current" axes.
		    If ``hue`` was defined in the class constructor, the function must
		    accept ``hue`` as a parameter.
		kwargs
		    Keyword argument are passed to the plotting function.
		
		Returns
		-------
		:class:`JointGrid` instance
		    Returns ``self`` for easy method chaining.
	**/
	public function plot_joint(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw univariate plots on each marginal axes.
		
		Parameters
		----------
		func : plotting callable
		    If a seaborn function, it should  accept ``x`` and ``y`` and plot
		    when only one of them is defined. Otherwise, it must accept a vector
		    of data as the first positional argument and determine its orientation
		    using the ``vertical`` parameter, and it must plot on the "current" axes.
		    If ``hue`` was defined in the class constructor, it must accept ``hue``
		    as a parameter.
		kwargs
		    Keyword argument are passed to the plotting function.
		
		Returns
		-------
		:class:`JointGrid` instance
		    Returns ``self`` for easy method chaining.
	**/
	public function plot_marginals(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a reference line(s) to joint and/or marginal axes.
		
		Parameters
		----------
		x, y : numeric
		    Value(s) to draw the line(s) at.
		joint, marginal : bools
		    Whether to add the reference line(s) to the joint/marginal axes.
		color : :mod:`matplotlib color <matplotlib.colors>`
		    Specifies the color of the reference line(s).
		linestyle : str
		    Specifies the style of the reference line(s).
		line_kws : key, value mappings
		    Other keyword arguments are passed to :meth:`matplotlib.axes.Axes.axvline`
		    when ``x`` is not None and :meth:`matplotlib.axes.Axes.axhline` when ``y``
		    is not None.
		
		Returns
		-------
		:class:`JointGrid` instance
		    Returns ``self`` for easy method chaining.
	**/
	public function refline(?x:Dynamic, ?y:Dynamic, ?joint:Dynamic, ?marginal:Dynamic, ?color:Dynamic, ?linestyle:Dynamic, ?line_kws:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save an image of the plot.
		
		This wraps :meth:`matplotlib.figure.Figure.savefig`, using bbox_inches="tight"
		by default. Parameters are passed through to the matplotlib function.
	**/
	public function savefig(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set attributes on each subplot Axes.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set axis labels on the bivariate axes.
		
		Parameters
		----------
		xlabel, ylabel : strings
		    Label names for the x and y variables.
		kwargs : key, value mappings
		    Other keyword arguments are passed to the following functions:
		
		    - :meth:`matplotlib.axes.Axes.set_xlabel`
		    - :meth:`matplotlib.axes.Axes.set_ylabel`
		
		Returns
		-------
		:class:`JointGrid` instance
		    Returns ``self`` for easy method chaining.
	**/
	public function set_axis_labels(?xlabel:Dynamic, ?ylabel:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}