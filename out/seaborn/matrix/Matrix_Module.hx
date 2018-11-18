/* This file is generated, do not edit! */
package seaborn.matrix;
@:pythonImport("seaborn.matrix") extern class Matrix_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert either a list of colors or nested lists of colors to RGB.
	**/
	static public function _convert_colors(colors:Dynamic):Dynamic;
	/**
		Convert a pandas index or multiindex to an axis label.
	**/
	static public function _index_to_label(index:Dynamic):Dynamic;
	/**
		Convert a pandas index or multiindex into ticklabels.
	**/
	static public function _index_to_ticklabels(index:Dynamic):Dynamic;
	/**
		Ensure that data and mask are compatabile and add missing values.
		
		Values will be plotted for cells where ``mask`` is ``False``.
		
		``data`` is expected to be a DataFrame; ``mask`` can be an array or
		a DataFrame.
	**/
	static public function _matrix_mask(data:Dynamic, mask:Dynamic):Dynamic;
	/**
		Return a boolean for whether the list of ticklabels have overlaps.
		
		Parameters
		----------
		labels : list of ticklabels
		
		Returns
		-------
		overlap : boolean
		    True if any of the labels overlap.
	**/
	static public function axis_ticklabels_overlap(labels:Dynamic):Dynamic;
	/**
		Plot a matrix dataset as a hierarchically-clustered heatmap.
		
		Parameters
		----------
		data: 2D array-like
		    Rectangular data for clustering. Cannot contain NAs.
		pivot_kws : dict, optional
		    If `data` is a tidy dataframe, can provide keyword arguments for
		    pivot to create a rectangular dataframe.
		method : str, optional
		    Linkage method to use for calculating clusters.
		    See scipy.cluster.hierarchy.linkage documentation for more information:
		    https://docs.scipy.org/doc/scipy/reference/generated/scipy.cluster.hierarchy.linkage.html
		metric : str, optional
		    Distance metric to use for the data. See
		    scipy.spatial.distance.pdist documentation for more options
		    https://docs.scipy.org/doc/scipy/reference/generated/scipy.spatial.distance.pdist.html
		    To use different metrics (or methods) for rows and columns, you may
		    construct each linkage matrix yourself and provide them as
		    {row,col}_linkage.
		z_score : int or None, optional
		    Either 0 (rows) or 1 (columns). Whether or not to calculate z-scores
		    for the rows or the columns. Z scores are: z = (x - mean)/std, so
		    values in each row (column) will get the mean of the row (column)
		    subtracted, then divided by the standard deviation of the row (column).
		    This ensures that each row (column) has mean of 0 and variance of 1.
		standard_scale : int or None, optional
		    Either 0 (rows) or 1 (columns). Whether or not to standardize that
		    dimension, meaning for each row or column, subtract the minimum and
		    divide each by its maximum.
		figsize: tuple of two ints, optional
		    Size of the figure to create.
		cbar_kws : dict, optional
		    Keyword arguments to pass to ``cbar_kws`` in ``heatmap``, e.g. to
		    add a label to the colorbar.
		{row,col}_cluster : bool, optional
		    If True, cluster the {rows, columns}.
		{row,col}_linkage : numpy.array, optional
		    Precomputed linkage matrix for the rows or columns. See
		    scipy.cluster.hierarchy.linkage for specific formats.
		{row,col}_colors : list-like or pandas DataFrame/Series, optional
		    List of colors to label for either the rows or columns. Useful to
		    evaluate whether samples within a group are clustered together. Can
		    use nested lists or DataFrame for multiple color levels of labeling.
		    If given as a DataFrame or Series, labels for the colors are extracted
		    from the DataFrames column names or from the name of the Series.
		    DataFrame/Series colors are also matched to the data by their
		    index, ensuring colors are drawn in the correct order.
		mask : boolean array or DataFrame, optional
		    If passed, data will not be shown in cells where ``mask`` is True.
		    Cells with missing values are automatically masked. Only used for
		    visualizing, not for calculating.
		kwargs : other keyword arguments
		    All other keyword arguments are passed to ``sns.heatmap``
		
		Returns
		-------
		clustergrid : ClusterGrid
		    A ClusterGrid instance.
		
		Notes
		-----
		The returned object has a ``savefig`` method that should be used if you
		want to save the figure object without clipping the dendrograms.
		
		To access the reordered row indices, use:
		``clustergrid.dendrogram_row.reordered_ind``
		
		Column indices, use:
		``clustergrid.dendrogram_col.reordered_ind``
		
		Examples
		--------
		
		Plot a clustered heatmap:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set(color_codes=True)
		    >>> iris = sns.load_dataset("iris")
		    >>> species = iris.pop("species")
		    >>> g = sns.clustermap(iris)
		
		Use a different similarity metric:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, metric="correlation")
		
		Use a different clustering method:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, method="single")
		
		Use a different colormap and ignore outliers in colormap limits:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, cmap="mako", robust=True)
		
		Change the size of the figure:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, figsize=(6, 7))
		
		Plot one of the axes in its original organization:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, col_cluster=False)
		
		Add colored labels:
		
		.. plot::
		    :context: close-figs
		
		    >>> lut = dict(zip(species.unique(), "rbg"))
		    >>> row_colors = species.map(lut)
		    >>> g = sns.clustermap(iris, row_colors=row_colors)
		
		Standardize the data within the columns:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, standard_scale=1)
		
		Normalize the data within the rows:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, z_score=0)
	**/
	static public function clustermap(data:Dynamic, ?pivot_kws:Dynamic, ?method:Dynamic, ?metric:Dynamic, ?z_score:Dynamic, ?standard_scale:Dynamic, ?figsize:Dynamic, ?cbar_kws:Dynamic, ?row_cluster:Dynamic, ?col_cluster:Dynamic, ?row_linkage:Dynamic, ?col_linkage:Dynamic, ?row_colors:Dynamic, ?col_colors:Dynamic, ?mask:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a tree diagram of relationships within a matrix
		
		Parameters
		----------
		data : pandas.DataFrame
		    Rectangular data
		linkage : numpy.array, optional
		    Linkage matrix
		axis : int, optional
		    Which axis to use to calculate linkage. 0 is rows, 1 is columns.
		label : bool, optional
		    If True, label the dendrogram at leaves with column or row names
		metric : str, optional
		    Distance metric. Anything valid for scipy.spatial.distance.pdist
		method : str, optional
		    Linkage method to use. Anything valid for
		    scipy.cluster.hierarchy.linkage
		rotate : bool, optional
		    When plotting the matrix, whether to rotate it 90 degrees
		    counter-clockwise, so the leaves face right
		ax : matplotlib axis, optional
		    Axis to plot on, otherwise uses current axis
		
		Returns
		-------
		dendrogramplotter : _DendrogramPlotter
		    A Dendrogram plotter object.
		
		Notes
		-----
		Access the reordered dendrogram indices with
		dendrogramplotter.reordered_ind
	**/
	static public function dendrogram(data:Dynamic, ?linkage:Dynamic, ?axis:Dynamic, ?label:Dynamic, ?metric:Dynamic, ?method:Dynamic, ?rotate:Dynamic, ?ax:Dynamic):Dynamic;
	/**
		Remove the top and right spines from plot(s).
		
		fig : matplotlib figure, optional
		    Figure to despine all axes of, default uses current figure.
		ax : matplotlib axes, optional
		    Specific axes object to despine.
		top, right, left, bottom : boolean, optional
		    If True, remove that spine.
		offset : int or dict, optional
		    Absolute distance, in points, spines should be moved away
		    from the axes (negative values move spines inward). A single value
		    applies to all spines; a dict can be used to set offset values per
		    side.
		trim : bool, optional
		    If True, limit spines to the smallest and largest major tick
		    on each non-despined axis.
		
		Returns
		-------
		None
	**/
	static public function despine(?fig:Dynamic, ?ax:Dynamic, ?top:Dynamic, ?right:Dynamic, ?left:Dynamic, ?bottom:Dynamic, ?offset:Dynamic, ?trim:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Plot rectangular data as a color-encoded matrix.
		
		This is an Axes-level function and will draw the heatmap into the
		currently-active Axes if none is provided to the ``ax`` argument.  Part of
		this Axes space will be taken and used to plot a colormap, unless ``cbar``
		is False or a separate Axes is provided to ``cbar_ax``.
		
		Parameters
		----------
		data : rectangular dataset
		    2D dataset that can be coerced into an ndarray. If a Pandas DataFrame
		    is provided, the index/column information will be used to label the
		    columns and rows.
		vmin, vmax : floats, optional
		    Values to anchor the colormap, otherwise they are inferred from the
		    data and other keyword arguments.
		cmap : matplotlib colormap name or object, or list of colors, optional
		    The mapping from data values to color space. If not provided, the
		    default will depend on whether ``center`` is set.
		center : float, optional
		    The value at which to center the colormap when plotting divergant data.
		    Using this parameter will change the default ``cmap`` if none is
		    specified.
		robust : bool, optional
		    If True and ``vmin`` or ``vmax`` are absent, the colormap range is
		    computed with robust quantiles instead of the extreme values.
		annot : bool or rectangular dataset, optional
		    If True, write the data value in each cell. If an array-like with the
		    same shape as ``data``, then use this to annotate the heatmap instead
		    of the raw data.
		fmt : string, optional
		    String formatting code to use when adding annotations.
		annot_kws : dict of key, value mappings, optional
		    Keyword arguments for ``ax.text`` when ``annot`` is True.
		linewidths : float, optional
		    Width of the lines that will divide each cell.
		linecolor : color, optional
		    Color of the lines that will divide each cell.
		cbar : boolean, optional
		    Whether to draw a colorbar.
		cbar_kws : dict of key, value mappings, optional
		    Keyword arguments for `fig.colorbar`.
		cbar_ax : matplotlib Axes, optional
		    Axes in which to draw the colorbar, otherwise take space from the
		    main Axes.
		square : boolean, optional
		    If True, set the Axes aspect to "equal" so each cell will be
		    square-shaped.
		xticklabels, yticklabels : "auto", bool, list-like, or int, optional
		    If True, plot the column names of the dataframe. If False, don't plot
		    the column names. If list-like, plot these alternate labels as the
		    xticklabels. If an integer, use the column names but plot only every
		    n label. If "auto", try to densely plot non-overlapping labels.
		mask : boolean array or DataFrame, optional
		    If passed, data will not be shown in cells where ``mask`` is True.
		    Cells with missing values are automatically masked.
		ax : matplotlib Axes, optional
		    Axes in which to draw the plot, otherwise use the currently-active
		    Axes.
		kwargs : other keyword arguments
		    All other keyword arguments are passed to ``ax.pcolormesh``.
		
		Returns
		-------
		ax : matplotlib Axes
		    Axes object with the heatmap.
		
		See also
		--------
		clustermap : Plot a matrix using hierachical clustering to arrange the
		             rows and columns.
		
		Examples
		--------
		
		Plot a heatmap for a numpy array:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np; np.random.seed(0)
		    >>> import seaborn as sns; sns.set()
		    >>> uniform_data = np.random.rand(10, 12)
		    >>> ax = sns.heatmap(uniform_data)
		
		Change the limits of the colormap:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(uniform_data, vmin=0, vmax=1)
		
		Plot a heatmap for data centered on 0 with a diverging colormap:
		
		.. plot::
		    :context: close-figs
		
		    >>> normal_data = np.random.randn(10, 12)
		    >>> ax = sns.heatmap(normal_data, center=0)
		
		Plot a dataframe with meaningful row and column labels:
		
		.. plot::
		    :context: close-figs
		
		    >>> flights = sns.load_dataset("flights")
		    >>> flights = flights.pivot("month", "year", "passengers")
		    >>> ax = sns.heatmap(flights)
		
		Annotate each cell with the numeric value using integer formatting:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, annot=True, fmt="d")
		
		Add lines between each cell:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, linewidths=.5)
		
		Use a different colormap:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, cmap="YlGnBu")
		
		Center the colormap at a specific value:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, center=flights.loc["January", 1955])
		
		Plot every other column label and don't plot row labels:
		
		.. plot::
		    :context: close-figs
		
		    >>> data = np.random.randn(50, 20)
		    >>> ax = sns.heatmap(data, xticklabels=2, yticklabels=False)
		
		Don't draw a colorbar:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, cbar=False)
		
		Use different axes for the colorbar:
		
		.. plot::
		    :context: close-figs
		
		    >>> grid_kws = {"height_ratios": (.9, .05), "hspace": .3}
		    >>> f, (ax, cbar_ax) = plt.subplots(2, gridspec_kw=grid_kws)
		    >>> ax = sns.heatmap(flights, ax=ax,
		    ...                  cbar_ax=cbar_ax,
		    ...                  cbar_kws={"orientation": "horizontal"})
		
		Use a mask to plot only part of a matrix
		
		.. plot::
		    :context: close-figs
		
		    >>> corr = np.corrcoef(np.random.randn(10, 200))
		    >>> mask = np.zeros_like(corr)
		    >>> mask[np.triu_indices_from(mask)] = True
		    >>> with sns.axes_style("white"):
		    ...     ax = sns.heatmap(corr, mask=mask, vmax=.3, square=True)
	**/
	static public function heatmap(data:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?cmap:Dynamic, ?center:Dynamic, ?robust:Dynamic, ?annot:Dynamic, ?fmt:Dynamic, ?annot_kws:Dynamic, ?linewidths:Dynamic, ?linecolor:Dynamic, ?cbar:Dynamic, ?cbar_kws:Dynamic, ?cbar_ax:Dynamic, ?square:Dynamic, ?xticklabels:Dynamic, ?yticklabels:Dynamic, ?mask:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the relative luminance of a color according to W3C standards
		
		Parameters
		----------
		color : matplotlib color or sequence of matplotlib colors
		    Hex code, rgb-tuple, or html color name.
		
		Returns
		-------
		luminance : float(s) between 0 and 1
	**/
	static public function relative_luminance(color:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Return a Unicode string representing a Python object.
		
		Unicode strings (i.e. type ``unicode`` in Python 2.7 and type ``str`` in
		Python 3.x) are returned unchanged.
		
		Byte strings (i.e. type ``str`` in Python 2.7 and type ``bytes`` in
		Python 3.x) are returned as UTF-8-encoded strings.
		
		For other objects, the method ``__str__()`` is called, and the result is
		returned as a UTF-8-encoded string.
		
		Parameters
		----------
		obj : object
		    Any Python object
		
		Returns
		-------
		s : unicode (Python 2.7) / str (Python 3.x)
		    UTF-8-encoded string representation of ``obj``
	**/
	static public function to_utf8(obj:Dynamic):Dynamic;
}