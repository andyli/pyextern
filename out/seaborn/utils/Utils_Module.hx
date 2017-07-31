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
		Establish support for a kernel density estimate.
	**/
	static public function _kde_support(data:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic):Dynamic;
	/**
		Decorator that will skip a test if `url` is unreachable.
		
		Parameters
		----------
		t : function, optional
		url : str, optional
	**/
	static public function _network(?t:Dynamic, ?url:Dynamic):Dynamic;
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
	static public function axlabel(xlabel:Dynamic, ylabel:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function categorical_order(values:Dynamic, ?order:Dynamic):Array<Dynamic>;
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
	static public function get_color_cycle():Dynamic;
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
		    The directory in which to cache data. By default, uses ~/seaborn-data/
		kws : dict, optional
		    Passed to pandas.read_csv
	**/
	static public function load_dataset(name:Dynamic, ?cache:Dynamic, ?data_home:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	static public var mpl_ge_150 : Dynamic;
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