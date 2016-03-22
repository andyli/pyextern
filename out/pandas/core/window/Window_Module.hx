/* This file is generated, do not edit! */
package pandas.core.window;
@:pythonImport("pandas.core.window") extern class Window_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _bias_template : Dynamic;
	static public var _doc_template : Dynamic;
	static public function _flex_binary_moment(arg1:Dynamic, arg2:Dynamic, f:Dynamic, ?pairwise:Dynamic):Dynamic;
	static public function _get_center_of_mass(com:Dynamic, span:Dynamic, halflife:Dynamic, alpha:Dynamic):Dynamic;
	static public function _offset(window:Dynamic, center:Dynamic):Dynamic;
	static public var _pairwise_template : Dynamic;
	static public function _pop_args(win_type:Dynamic, arg_names:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _prep_binary(arg1:Dynamic, arg2:Dynamic):Dynamic;
	static public function _require_min_periods(p:Dynamic):Dynamic;
	static public var _shared_docs : Dynamic;
	static public function _use_window(minp:Dynamic, window:Dynamic):Dynamic;
	static public function _validate_win_type(win_type:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _zsqrt(x:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Provides exponential weighted functions
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		com : float, optional
		    Specify decay in terms of center of mass,
		    :math:`\alpha = 1 / (1 + com),\text{ for } com \geq 0`
		span : float, optional
		    Specify decay in terms of span,
		    :math:`\alpha = 2 / (span + 1),\text{ for } span \geq 1`
		halflife : float, optional
		    Specify decay in terms of half-life,
		    :math:`\alpha = 1 - exp(log(0.5) / halflife),\text{ for } halflife > 0`
		alpha : float, optional
		    Specify smoothing factor :math:`\alpha` directly,
		    :math:`0 < \alpha \leq 1`
		
		    .. versionadded:: 0.18.0
		
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None (DEPRECATED)
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account
		    for imbalance in relative weightings (viewing EWMA as a moving average)
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		
		Returns
		-------
		a Window sub-classed for the particular operation
		
		Notes
		-----
		Exactly one of center of mass, span, half-life, and alpha must be provided.
		Allowed values and relationship between the parameters are specified in the
		parameter descriptions above; see the link at the end of this section for
		a detailed explanation.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		When adjust is True (default), weighted averages are calculated using
		weights (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		   weighted_average[0] = arg[0];
		   weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based
		on relative positions. For example, the weights of x and y used in
		calculating the final weighted average of [x, None, y] are 1-alpha and 1
		(if adjust is True), and 1-alpha and alpha (if adjust is False).
		
		More details can be found at
		http://pandas.pydata.org/pandas-docs/stable/computation.html#exponentially-weighted-windows
	**/
	static public function ewm(obj:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Provides expanding transformations.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None) (DEPRECATED)
		    Frequency to conform the data to before computing the statistic.
		    Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		axis : int, default 0
		
		Returns
		-------
		a Window sub-classed for the particular operation
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function expanding(obj:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
	**/
	static public function isscalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Provides rolling transformations.
		
		.. versionadded:: 0.18.0
		
		Parameters
		----------
		window : int
		   Size of the moving window. This is the number of observations used for
		   calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None) (DEPRECATED)
		    Frequency to conform the data to before computing the statistic.
		    Specified as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		win_type : string, default None
		    prove a window type, see the notes below
		axis : int, default 0
		
		Returns
		-------
		a Window sub-classed for the particular operation
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
		
		The recognized window types are:
		
		* ``boxcar``
		* ``triang``
		* ``blackman``
		* ``hamming``
		* ``bartlett``
		* ``parzen``
		* ``bohman``
		* ``blackmanharris``
		* ``nuttall``
		* ``barthann``
		* ``kaiser`` (needs beta)
		* ``gaussian`` (needs std)
		* ``general_gaussian`` (needs power, width)
		* ``slepian`` (needs width).
	**/
	static public function rolling(obj:Dynamic, ?win_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
}