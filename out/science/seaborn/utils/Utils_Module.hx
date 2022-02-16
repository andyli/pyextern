/* This file is generated, do not edit! */
package seaborn.utils;
@:pythonImport("seaborn.utils") extern class Utils_Module {
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
		Assign default kwargs for call_func using values from source_func.
	**/
	static public function _assign_default_kwargs(kws:Dynamic, call_func:Dynamic, source_func:Dynamic):Dynamic;
	/**
		Raise if value for param is not in options.
	**/
	static public function _check_argument(param:Dynamic, options:Dynamic, value:Dynamic):Dynamic;
	/**
		Force draw of a matplotlib figure, accounting for back-compat.
	**/
	static public function _draw_figure(fig:Dynamic):Dynamic;
	/**
		Establish support for a kernel density estimate.
	**/
	static public function _kde_support(data:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic):Dynamic;
	/**
		Wrapper for mpl.cbook.normalize_kwargs that supports <= 3.2.1.
	**/
	static public function _normalize_kwargs(kws:Dynamic, artist:Dynamic):Dynamic;
	/**
		Make invisible-handle "subtitles" entries look more like titles.
	**/
	static public function adjust_legend_subtitles(legend:Dynamic):Dynamic;
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
		labels : list of matplotlib ticklabels
		
		Returns
		-------
		overlap : boolean
		    True if any of the labels overlap.
	**/
	static public function axis_ticklabels_overlap(labels:Dynamic):Dynamic;
	/**
		Grab current axis and label it.
		
		DEPRECATED: will be removed in a future version.
	**/
	static public function axlabel(xlabel:Dynamic, ylabel:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a percentile range from an array of values.
	**/
	static public function ci(a:Dynamic, ?which:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convert intervals to error arguments relative to plot heights.
		
		Parameters
		----------
		cis : 2 x n sequence
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
		    Figure to despine all axes of, defaults to the current figure.
		ax : matplotlib axes, optional
		    Specific axes object to despine. Ignored if fig is provided.
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
	/**
		Return the list of colors in the current matplotlib color cycle
		
		Parameters
		----------
		None
		
		Returns
		-------
		colors : list
		    List of matplotlib colors in the current cycle, or dark gray if
		    the current color cycle is empty.
	**/
	static public function get_color_cycle():Array<Dynamic>;
	/**
		Return a path to the cache directory for example datasets.
		
		This directory is then used by :func:`load_dataset`.
		
		If the ``data_home`` argument is not specified, it tries to read from the
		``SEABORN_DATA`` environment variable and defaults to ``~/seaborn-data``.
	**/
	static public function get_data_home(?data_home:Dynamic):Dynamic;
	/**
		Report available example datasets, useful for reporting issues.
		
		Requires an internet connection.
	**/
	static public function get_dataset_names():Dynamic;
	/**
		Calculate the IQR for an array of numbers.
		
		DEPRECATED: will be removed in a future version.
	**/
	static public function iqr(a:Dynamic):Dynamic;
	/**
		Load an example dataset from the online repository (requires internet).
		
		This function provides quick access to a small number of example datasets
		that are useful for documenting seaborn or generating reproducible examples
		for bug reports. It is not necessary for normal usage.
		
		Note that some of the datasets have a small amount of preprocessing applied
		to define a proper ordering for categorical variables.
		
		Use :func:`get_dataset_names` to see a list of available datasets.
		
		Parameters
		----------
		name : str
		    Name of the dataset (``{name}.csv`` on
		    https://github.com/mwaskom/seaborn-data).
		cache : boolean, optional
		    If True, try to load from the local cache first, and save to the cache
		    if a download is required.
		data_home : string, optional
		    The directory in which to cache data; see :func:`get_data_home`.
		kws : keys and values, optional
		    Additional keyword arguments are passed to passed through to
		    :func:`pandas.read_csv`.
		
		Returns
		-------
		df : :class:`pandas.DataFrame`
		    Tabular data, possibly with some preprocessing applied.
	**/
	static public function load_dataset(name:Dynamic, ?cache:Dynamic, ?data_home:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return levels and formatted levels for brief numeric legends.
	**/
	static public function locator_to_legend_entries(locator:Dynamic, limits:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Recreate a plot's legend at a new location.
		
		The name is a slight misnomer. Matplotlib legends do not expose public
		control over their position parameters. So this function creates a new legend,
		copying over the data from the original object, which is then removed.
		
		Parameters
		----------
		obj : the object with the plot
		    This argument can be either a seaborn or matplotlib object:
		
		    - :class:`seaborn.FacetGrid` or :class:`seaborn.PairGrid`
		    - :class:`matplotlib.axes.Axes` or :class:`matplotlib.figure.Figure`
		
		loc : str or int
		    Location argument, as in :meth:`matplotlib.axes.Axes.legend`.
		
		kwargs
		    Other keyword arguments are passed to :meth:`matplotlib.axes.Axes.legend`.
		
		Examples
		--------
		
		.. include:: ../docstrings/move_legend.rst
	**/
	static public function move_legend(obj:Dynamic, loc:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper function to normalize kwarg inputs.
		
		Parameters
		----------
		kw : dict or None
		    A dict of keyword arguments.  None is explicitly supported and treated
		    as an empty dict, to support functions with an optional parameter of
		    the form ``props=None``.
		
		alias_mapping : dict or Artist subclass or Artist instance, optional
		    A mapping between a canonical name to a list of aliases, in order of
		    precedence from lowest to highest.
		
		    If the canonical value is not in the list it is assumed to have the
		    highest priority.
		
		    If an Artist subclass or instance is passed, use its properties alias
		    mapping.
		
		Raises
		------
		TypeError
		    To match what Python raises if invalid arguments/keyword arguments are
		    passed to a callable.
	**/
	static public function normalize_kwargs(kw:Dynamic, ?alias_mapping:Dynamic):Dynamic;
	/**
		Like scoreatpercentile but can take and return array of percentiles.
		
		DEPRECATED: will be removed in a future version.
		
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
		
		DEPRECATED: will be removed in a future version.
		
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
	/**
		Helper method for removing null values from data vectors.
		
		Parameters
		----------
		vector : vector object
		    Must implement boolean masking with [] subscript syntax.
		
		Returns
		-------
		clean_clean : same type as ``vector``
		    Vector of data with null values removed. May be a copy or a view.
	**/
	static public function remove_na(vector:Dynamic):Dynamic;
	/**
		Return a fully saturated color with the same hue.
		
		Parameters
		----------
		color : matplotlib color
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
		
		DEPRECATED: will be removed in a future version.
	**/
	static public function sig_stars(p:Dynamic):Dynamic;
	/**
		Wrapper to handle different pandas sorting API pre/post 0.17.
	**/
	static public function sort_df(df:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a string representing a Python object.
		
		Strings (i.e. type ``str``) are returned unchanged.
		
		Byte strings (i.e. type ``bytes``) are returned as UTF-8-decoded strings.
		
		For other objects, the method ``__str__()`` is called, and the result is
		returned as a string.
		
		Parameters
		----------
		obj : object
		    Any Python object
		
		Returns
		-------
		s : str
		    UTF-8-decoded string representation of ``obj``
	**/
	static public function to_utf8(obj:Dynamic):String;
	/**
		Open the URL url, which can be either a string or a Request object.
		
		*data* must be an object specifying additional data to be sent to
		the server, or None if no such data is needed.  See Request for
		details.
		
		urllib.request module uses HTTP/1.1 and includes a "Connection:close"
		header in its HTTP requests.
		
		The optional *timeout* parameter specifies a timeout in seconds for
		blocking operations like the connection attempt (if not specified, the
		global default timeout setting will be used). This only works for HTTP,
		HTTPS and FTP connections.
		
		If *context* is specified, it must be a ssl.SSLContext instance describing
		the various SSL options. See HTTPSConnection for more details.
		
		The optional *cafile* and *capath* parameters specify a set of trusted CA
		certificates for HTTPS requests. cafile should point to a single file
		containing a bundle of CA certificates, whereas capath should point to a
		directory of hashed certificate files. More information can be found in
		ssl.SSLContext.load_verify_locations().
		
		The *cadefault* parameter is ignored.
		
		This function always returns an object which can work as a context
		manager and has methods such as
		
		* geturl() - return the URL of the resource retrieved, commonly used to
		  determine if a redirect was followed
		
		* info() - return the meta-information of the page, such as headers, in the
		  form of an email.message_from_string() instance (see Quick Reference to
		  HTTP Headers)
		
		* getcode() - return the HTTP status code of the response.  Raises URLError
		  on errors.
		
		For HTTP and HTTPS URLs, this function returns a http.client.HTTPResponse
		object slightly modified. In addition to the three new methods above, the
		msg attribute contains the same information as the reason attribute ---
		the reason phrase returned by the server --- instead of the response
		headers as it is specified in the documentation for HTTPResponse.
		
		For FTP, file, and data URLs and requests explicitly handled by legacy
		URLopener and FancyURLopener classes, this function returns a
		urllib.response.addinfourl object.
		
		Note that None may be returned if no handler handles the request (though
		the default installed global OpenerDirector uses UnknownHandler to ensure
		this never happens).
		
		In addition, if proxy settings are detected (for example, when a *_proxy
		environment variable like http_proxy is set), ProxyHandler is default
		installed and makes sure the requests are handled through the proxy.
	**/
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