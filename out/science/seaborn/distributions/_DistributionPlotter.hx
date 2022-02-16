/* This file is generated, do not edit! */
package seaborn.distributions;
@:pythonImport("seaborn.distributions", "_DistributionPlotter") extern class _DistributionPlotter {
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
	public function ___init__(?data:Dynamic, ?variables:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?data:Dynamic, ?variables:Dynamic):Void;
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
		Add axis labels if not present, set visibility to match ticklabels.
	**/
	public function _add_axis_labels(ax:Dynamic, ?default_x:Dynamic, ?default_y:Dynamic):Dynamic;
	/**
		Add artists that reflect semantic mappings and put then in a legend.
	**/
	public function _add_legend(ax_obj:Dynamic, artist:Dynamic, fill:Dynamic, element:Dynamic, multiple:Dynamic, alpha:Dynamic, artist_kws:Dynamic, legend_kws:Dynamic):Dynamic;
	/**
		Handle differences between artists in filled/unfilled plots.
	**/
	public function _artist_kws(kws:Dynamic, fill:Dynamic, element:Dynamic, multiple:Dynamic, color:Dynamic, alpha:Dynamic):Dynamic;
	/**
		Define plot variables given long-form data and/or vector inputs.
		
		Parameters
		----------
		data : dict-like collection of vectors
		    Input data where variable names map to vector values.
		kwargs : variable -> data mappings
		    Keys are seaborn variables (x, y, hue, ...) and values are vectors
		    in any format that can construct a :class:`pandas.DataFrame` or
		    names of columns or index levels in ``data``.
		
		Returns
		-------
		plot_data : :class:`pandas.DataFrame`
		    Long-form data object mapping seaborn variables (x, y, hue, ...)
		    to data vectors.
		variables : dict
		    Keys are defined seaborn variables; values are names inferred from
		    the inputs (or None when no name can be determined).
		
		Raises
		------
		ValueError
		    When variables are strings that don't appear in ``data``.
	**/
	public function _assign_variables_longform(?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Define plot variables given wide-form data.
		
		Parameters
		----------
		data : flat vector or collection of vectors
		    Data can be a vector or mapping that is coerceable to a Series
		    or a sequence- or mapping-based collection of such vectors, or a
		    rectangular numpy array, or a Pandas DataFrame.
		kwargs : variable -> data mappings
		    Behavior with keyword arguments is currently undefined.
		
		Returns
		-------
		plot_data : :class:`pandas.DataFrame`
		    Long-form data object mapping seaborn variables (x, y, hue, ...)
		    to data vectors.
		variables : dict
		    Keys are defined seaborn variables; values are names inferred from
		    the inputs (or None when no name can be determined).
	**/
	public function _assign_variables_wideform(?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Associate the plotter with an Axes manager and initialize its units.
		
		Parameters
		----------
		obj : :class:`matplotlib.axes.Axes` or :class:'FacetGrid`
		    Structural object that we will eventually plot onto.
		allowed_types : str or list of str
		    If provided, raise when either the x or y variable does not have
		    one of the declared seaborn types.
		log_scale : bool, number, or pair of bools or numbers
		    If not False, set the axes to use log scaling, with the given
		    base or defaulting to 10. If a tuple, interpreted as separate
		    arguments for the x and y axes.
	**/
	public function _attach(obj:Dynamic, ?allowed_types:Dynamic, ?log_scale:Dynamic):Dynamic;
	/**
		Return a sequential colormap given a color seed.
	**/
	public function _cmap_from_color(color:Dynamic):Dynamic;
	public function _compute_univariate_density(data_variable:Dynamic, common_norm:Dynamic, common_grid:Dynamic, estimate_kws:Dynamic, log_scale:Dynamic, ?warn_singular:Dynamic):Dynamic;
	/**
		Find default values for discrete hist estimation based on variable type.
	**/
	public function _default_discrete():Dynamic;
	static public var _default_size_range : Dynamic;
	/**
		Return an Axes object based on existence of row/col variables.
	**/
	public function _get_axes(sub_vars:Dynamic):Dynamic;
	/**
		Return True if specified axis is log scaled on all attached axes.
	**/
	public function _log_scaled(axis:Dynamic):Dynamic;
	/**
		Draw a rugplot along one axis of the plot.
	**/
	public function _plot_single_rug(sub_data:Dynamic, _var:Dynamic, height:Dynamic, ax:Dynamic, kws:Dynamic):Dynamic;
	/**
		Return data levels corresponding to quantile cuts of mass.
	**/
	public function _quantile_to_level(data:Dynamic, quantile:Dynamic):Dynamic;
	/**
		Modify the density data structure to handle multiple densities.
	**/
	public function _resolve_multiple(curves:Dynamic, multiple:Dynamic):Dynamic;
	static public var _semantic_mappings : Dynamic;
	/**
		Define plot variables, optionally using lookup from `data`.
	**/
	public function assign_variables(?data:Dynamic, ?variables:Dynamic):Dynamic;
	/**
		Dataframe with numeric x and y, after unit conversion and log scaling.
	**/
	public var comp_data : Dynamic;
	/**
		Return the variable with data for univariate plots.
	**/
	public var data_variable : Dynamic;
	static public var flat_structure : Dynamic;
	/**
		Subset a dictionary` arguments with known semantic variables.
	**/
	static public function get_semantics(kwargs:Dynamic, ?semantics:Dynamic):Dynamic;
	/**
		Return True at least one of x or y is defined.
	**/
	public var has_xy_data : Dynamic;
	/**
		Generator for getting subsets of data defined by semantic variables.
		
		Also injects "col" and "row" into grouping semantics.
		
		Parameters
		----------
		grouping_vars : string or list of strings
		    Semantic variables that define the subsets of data.
		reverse : bool, optional
		    If True, reverse the order of iteration.
		from_comp_data : bool, optional
		    If True, use self.comp_data rather than self.plot_data
		
		Yields
		------
		sub_vars : dict
		    Keys are semantic names, values are the level of that semantic.
		sub_data : :class:`pandas.DataFrame`
		    Subset of ``plot_data`` for this combination of semantic values.
	**/
	public function iter_data(?grouping_vars:Dynamic, ?reverse:Dynamic, ?from_comp_data:Dynamic):Dynamic;
	public function plot_bivariate_density(common_norm:Dynamic, fill:Dynamic, levels:Dynamic, thresh:Dynamic, color:Dynamic, legend:Dynamic, cbar:Dynamic, warn_singular:Dynamic, cbar_ax:Dynamic, cbar_kws:Dynamic, estimate_kws:Dynamic, ?contour_kws:python.KwArgs<Dynamic>):Dynamic;
	public function plot_bivariate_histogram(common_bins:Dynamic, common_norm:Dynamic, thresh:Dynamic, pthresh:Dynamic, pmax:Dynamic, color:Dynamic, legend:Dynamic, cbar:Dynamic, cbar_ax:Dynamic, cbar_kws:Dynamic, estimate_kws:Dynamic, ?plot_kws:python.KwArgs<Dynamic>):Dynamic;
	public function plot_rug(height:Dynamic, expand_margins:Dynamic, legend:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	public function plot_univariate_density(multiple:Dynamic, common_norm:Dynamic, common_grid:Dynamic, warn_singular:Dynamic, fill:Dynamic, legend:Dynamic, estimate_kws:Dynamic, ?plot_kws:python.KwArgs<Dynamic>):Dynamic;
	public function plot_univariate_ecdf(estimate_kws:Dynamic, legend:Dynamic, ?plot_kws:python.KwArgs<Dynamic>):Dynamic;
	public function plot_univariate_histogram(multiple:Dynamic, element:Dynamic, fill:Dynamic, common_norm:Dynamic, common_bins:Dynamic, shrink:Dynamic, kde:Dynamic, kde_kws:Dynamic, color:Dynamic, legend:Dynamic, line_kws:Dynamic, estimate_kws:Dynamic, ?plot_kws:python.KwArgs<Dynamic>):Dynamic;
	static public var semantics : Dynamic;
	/**
		Return True if only x or y are used.
	**/
	public var univariate : Dynamic;
	/**
		Property interface to ordered list of variables levels.
		
		Each time it's accessed, it updates the var_levels dictionary with the
		list of levels in the current semantic mappers. But it also allows the
		dictionary to persist, so it can be used to set levels by a key. This is
		used to track the list of col/row levels using an attached FacetGrid
		object, but it's kind of messy and ideally fixed by improving the
		faceting logic so it interfaces better with the modern approach to
		tracking plot variables.
	**/
	public var var_levels : Dynamic;
	static public var wide_structure : Dynamic;
}