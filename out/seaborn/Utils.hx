/* This file is generated, do not edit! */
package seaborn;
@:pythonImport("seaborn.utils") extern class Utils {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Establish support for a kernel density estimate.
	**/
	static public function _kde_support(data:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic):Dynamic;
	/**
		Set the spine's position without resetting an associated axis.
		
		As of matplotlib v. 1.0.0, if a spine has an associated axis, then
		spine.set_position() calls axis.cla(), which resets locators, formatters,
		etc.  We temporarily replace that call with axis.reset_ticks(), which is
		sufficient for our purposes.
	**/
	static public function _set_spine_position(spine:Dynamic, position:Dynamic):Dynamic;
	/**
		Return booleans for whether the x and y ticklabels on an Axes overlap.
		
		Parameters
		----------
		ax : matplotlib Axes
		
		Returns
		-------
		x_overlap, y_overlap : booleans
		    True when the labels on that axis overlap.
	**/
	static public function axes_ticklabels_overlap(ax:Dynamic):Dynamic;
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
		Grab current axis and label it.
	**/
	static public function axlabel(xlabel:Dynamic, ylabel:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return a list of unique data values.
		
		Determine an ordered list of levels in ``values``.
		
		Parameters
		----------
		values : list, array, Categorical, or Series
		    Vector of "categorical" values
		order : list-like, optional
		    Desired order of category levels to override the order determined
		    from the ``values`` object.
		
		Returns
		-------
		order : list
		    Ordered list of category levels not including null values.
	**/
	static public function categorical_order(values:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Return a percentile range from an array of values.
	**/
	static public function ci(a:Dynamic, ?which:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convert intervals to error arguments relative to plot heights.
		
		Parameters
		----------
		cis: 2 x n sequence
		    sequence of confidence interval limits
		heights : n sequence
		    sequence of plot heights
		
		Returns
		-------
		errsize : 2 x n array
		    sequence of error size relative to height values in correct
		    format as argument for plt.bar
	**/
	static public function ci_to_errsize(cis:Dynamic, heights:Dynamic):Dynamic;
	/**
		Decrease the saturation channel of a color by some percent.
		
		Parameters
		----------
		color : matplotlib color
		    hex, rgb-tuple, or html color name
		prop : float
		    saturation channel of color will be multiplied by this value
		
		Returns
		-------
		new_color : rgb tuple
		    desaturated color code in RGB tuple representation
	**/
	static public function desaturate(color:Dynamic, prop:Dynamic):Dynamic;
	/**
		Remove the top and right spines from plot(s).
		
		fig : matplotlib figure, optional
		    Figure to despine all axes of, default uses current figure.
		ax : matplotlib axes, optional
		    Specific axes object to despine.
		top, right, left, bottom : boolean, optional
		    If True, remove that spine.
		offset : int or None  (default), optional
		    Absolute distance, in points, spines should be moved away
		    from the axes (negative values move spines inward).
		trim : bool, optional
		    If true, limit spines to the smallest and largest major tick
		    on each non-despined axis.
		
		Returns
		-------
		None
	**/
	static public function despine(?fig:Dynamic, ?ax:Dynamic, ?top:Dynamic, ?right:Dynamic, ?left:Dynamic, ?bottom:Dynamic, ?offset:Dynamic, ?trim:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return the path of the seaborn data directory.
		
		This is used by the ``load_dataset`` function.
		
		If the ``data_home`` argument is not specified, the default location
		is ``~/seaborn-data``.
		
		Alternatively, a different default location can be specified using the
		environment variable ``SEABORN_DATA``.
	**/
	static public function get_data_home(?data_home:Dynamic):Dynamic;
	/**
		Report available example datasets, useful for reporting issues.
	**/
	static public function get_dataset_names():Dynamic;
	/**
		Calculate the IQR for an array of numbers.
	**/
	static public function iqr(a:Dynamic):Dynamic;
	/**
		Load a dataset from the online repository (requires internet).
		
		Parameters
		----------
		name : str
		    Name of the dataset (`name`.csv on
		    https://github.com/mwaskom/seaborn-data).  You can obtain list of
		    available datasets using :func:`get_dataset_names`
		cache : boolean, optional
		    If True, then cache data locally and use the cache on subsequent calls
		data_home : string, optional
		    The directory in which to cache data. By default, uses ~/seaborn_data/
		kws : dict, optional
		    Passed to pandas.read_csv
	**/
	static public function load_dataset(name:Dynamic, ?cache:Dynamic, ?data_home:Dynamic, kws:Dynamic):Dynamic;
	/**
		Simple function to offset spines away from axes.
		
		Use this immediately after creating figure and axes objects.
		Offsetting spines after plotting or manipulating the axes
		objects may result in loss of labels, ticks, and formatting.
		
		Parameters
		----------
		offset : int, optional
		    Absolute distance, in points, spines should be moved away
		    from the axes (negative values move spines inward).
		fig : matplotlib figure, optional
		    Figure to despine all axes of, default uses current figure.
		ax : matplotlib axes, optional
		    Specific axes object to despine
		
		Returns
		-------
		None
	**/
	static public function offset_spines(?offset:Dynamic, ?fig:Dynamic, ?ax:Dynamic):Dynamic;
	static public var pandas_has_categoricals : Dynamic;
	/**
		Like scoreatpercentile but can take and return array of percentiles.
		
		Parameters
		----------
		a : array
		    data
		pcts : sequence of percentile values
		    percentile or percentiles to find score at
		axis : int or None
		    if not None, computes scores over this axis
		
		Returns
		-------
		scores: array
		    array of scores at requested percentiles
		    first dimension is length of object passed to ``pcts``
	**/
	static public function percentiles(a:Dynamic, pcts:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return arguments to plt.bar for pmf-like histogram of an array.
		
		Parameters
		----------
		a: array-like
		    array to make histogram of
		bins: int
		    number of bins
		
		Returns
		-------
		x: array
		    left x position of bars
		h: array
		    height of bars
		w: float
		    width of bars
	**/
	static public function pmf_hist(a:Dynamic, ?bins:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return a fully saturated color with the same hue.
		
		Parameters
		----------
		color :  matplotlib color
		    hex, rgb-tuple, or html color name
		
		Returns
		-------
		new_color : rgb tuple
		    saturated color code in RGB tuple representation
	**/
	static public function saturate(color:Dynamic):Dynamic;
	/**
		Independently manipulate the h, l, or s channels of a color.
		
		Parameters
		----------
		color : matplotlib color
		    hex, rgb-tuple, or html color name
		h, l, s : floats between 0 and 1, or None
		    new values for each channel in hls space
		
		Returns
		-------
		new_color : rgb tuple
		    new color code in RGB tuple representation
	**/
	static public function set_hls_values(color:Dynamic, ?h:Dynamic, ?l:Dynamic, ?s:Dynamic):Dynamic;
	/**
		Return a R-style significance string corresponding to p values.
	**/
	static public function sig_stars(p:Dynamic):Dynamic;
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Retrieve a URL into a temporary location on disk.
		
		Requires a URL argument. If a filename is passed, it is used as
		the temporary file location. The reporthook argument should be
		a callable that accepts a block number, a read size, and the
		total file size of the URL target. The data argument should be
		valid URL encoded data.
		
		If a filename is passed and the URL points to a local resource,
		the result is a copy from local file to new file.
		
		Returns a tuple containing the path to the newly created
		data file as well as the resulting HTTPMessage object.
	**/
	static public function urlretrieve(url:Dynamic, ?filename:Dynamic, ?reporthook:Dynamic, ?data:Dynamic):Dynamic;
}