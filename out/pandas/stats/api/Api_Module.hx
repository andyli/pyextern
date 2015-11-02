/* This file is generated, do not edit! */
package pandas.stats.api;
@:pythonImport("pandas.stats.api") extern class Api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Exponentially-weighted moving average
		
		Parameters
		----------
		arg : Series, DataFrame
		com : float. optional
		    Center of mass: :math:`\alpha = 1 / (1 + com)`,
		span : float, optional
		    Specify decay in terms of span, :math:`\alpha = 2 / (span + 1)`
		halflife : float, optional
		    Specify decay in terms of halflife, :math:`\alpha = 1 - exp(log(0.5) / halflife)`
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Either center of mass, span or halflife must be specified
		
		EWMA is sometimes specified using a "span" parameter `s`, we have that the
		decay parameter :math:`\alpha` is related to the span as
		:math:`\alpha = 2 / (s + 1) = 1 / (1 + c)`
		
		where `c` is the center of mass. Given a span, the associated center of mass is
		:math:`c = (s - 1) / 2`
		
		So a "20-day EWMA" would have center 9.5.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
	**/
	static public function ewma(arg:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?adjust:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving correlation
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		com : float. optional
		    Center of mass: :math:`\alpha = 1 / (1 + com)`,
		span : float, optional
		    Specify decay in terms of span, :math:`\alpha = 2 / (span + 1)`
		halflife : float, optional
		    Specify decay in terms of halflife, :math:`\alpha = 1 - exp(log(0.5) / halflife)`
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Either center of mass, span or halflife must be specified
		
		EWMA is sometimes specified using a "span" parameter `s`, we have that the
		decay parameter :math:`\alpha` is related to the span as
		:math:`\alpha = 2 / (s + 1) = 1 / (1 + c)`
		
		where `c` is the center of mass. Given a span, the associated center of mass is
		:math:`c = (s - 1) / 2`
		
		So a "20-day EWMA" would have center 9.5.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
	**/
	static public function ewmcorr(arg1:Dynamic, ?arg2:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?pairwise:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving covariance
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		com : float. optional
		    Center of mass: :math:`\alpha = 1 / (1 + com)`,
		span : float, optional
		    Specify decay in terms of span, :math:`\alpha = 2 / (span + 1)`
		halflife : float, optional
		    Specify decay in terms of halflife, :math:`\alpha = 1 - exp(log(0.5) / halflife)`
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Either center of mass, span or halflife must be specified
		
		EWMA is sometimes specified using a "span" parameter `s`, we have that the
		decay parameter :math:`\alpha` is related to the span as
		:math:`\alpha = 2 / (s + 1) = 1 / (1 + c)`
		
		where `c` is the center of mass. Given a span, the associated center of mass is
		:math:`c = (s - 1) / 2`
		
		So a "20-day EWMA" would have center 9.5.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
	**/
	static public function ewmcov(arg1:Dynamic, ?arg2:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?min_periods:Dynamic, ?bias:Dynamic, ?freq:Dynamic, ?pairwise:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving std
		
		Parameters
		----------
		arg : Series, DataFrame
		com : float. optional
		    Center of mass: :math:`\alpha = 1 / (1 + com)`,
		span : float, optional
		    Specify decay in terms of span, :math:`\alpha = 2 / (span + 1)`
		halflife : float, optional
		    Specify decay in terms of halflife, :math:`\alpha = 1 - exp(log(0.5) / halflife)`
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		bias : boolean, default False
		    Use a standard estimation bias correction
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Either center of mass, span or halflife must be specified
		
		EWMA is sometimes specified using a "span" parameter `s`, we have that the
		decay parameter :math:`\alpha` is related to the span as
		:math:`\alpha = 2 / (s + 1) = 1 / (1 + c)`
		
		where `c` is the center of mass. Given a span, the associated center of mass is
		:math:`c = (s - 1) / 2`
		
		So a "20-day EWMA" would have center 9.5.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
	**/
	static public function ewmstd(arg:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?min_periods:Dynamic, ?bias:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving variance
		
		Parameters
		----------
		arg : Series, DataFrame
		com : float. optional
		    Center of mass: :math:`\alpha = 1 / (1 + com)`,
		span : float, optional
		    Specify decay in terms of span, :math:`\alpha = 2 / (span + 1)`
		halflife : float, optional
		    Specify decay in terms of halflife, :math:`\alpha = 1 - exp(log(0.5) / halflife)`
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		bias : boolean, default False
		    Use a standard estimation bias correction
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Either center of mass, span or halflife must be specified
		
		EWMA is sometimes specified using a "span" parameter `s`, we have that the
		decay parameter :math:`\alpha` is related to the span as
		:math:`\alpha = 2 / (s + 1) = 1 / (1 + c)`
		
		where `c` is the center of mass. Given a span, the associated center of mass is
		:math:`c = (s - 1) / 2`
		
		So a "20-day EWMA" would have center 9.5.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
	**/
	static public function ewmvar(arg:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?min_periods:Dynamic, ?bias:Dynamic, ?freq:Dynamic, ?how:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Exponentially-weighted moving std
		
		Parameters
		----------
		arg : Series, DataFrame
		com : float. optional
		    Center of mass: :math:`\alpha = 1 / (1 + com)`,
		span : float, optional
		    Specify decay in terms of span, :math:`\alpha = 2 / (span + 1)`
		halflife : float, optional
		    Specify decay in terms of halflife, :math:`\alpha = 1 - exp(log(0.5) / halflife)`
		min_periods : int, default 0
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : None or string alias / date offset object, default=None
		    Frequency to conform to before computing statistic
		adjust : boolean, default True
		    Divide by decaying adjustment factor in beginning periods to account for
		    imbalance in relative weightings (viewing EWMA as a moving average)
		how : string, default 'mean'
		    Method for down- or re-sampling
		ignore_na : boolean, default False
		    Ignore missing values when calculating weights;
		    specify True to reproduce pre-0.15.0 behavior
		bias : boolean, default False
		    Use a standard estimation bias correction
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		Either center of mass, span or halflife must be specified
		
		EWMA is sometimes specified using a "span" parameter `s`, we have that the
		decay parameter :math:`\alpha` is related to the span as
		:math:`\alpha = 2 / (s + 1) = 1 / (1 + c)`
		
		where `c` is the center of mass. Given a span, the associated center of mass is
		:math:`c = (s - 1) / 2`
		
		So a "20-day EWMA" would have center 9.5.
		
		When adjust is True (default), weighted averages are calculated using weights
		    (1-alpha)**(n-1), (1-alpha)**(n-2), ..., 1-alpha, 1.
		
		When adjust is False, weighted averages are calculated recursively as:
		    weighted_average[0] = arg[0];
		    weighted_average[i] = (1-alpha)*weighted_average[i-1] + alpha*arg[i].
		
		When ignore_na is False (default), weights are based on absolute positions.
		For example, the weights of x and y used in calculating the final weighted
		average of [x, None, y] are (1-alpha)**2 and 1 (if adjust is True), and
		(1-alpha)**2 and alpha (if adjust is False).
		
		When ignore_na is True (reproducing pre-0.15.0 behavior), weights are based on
		relative positions. For example, the weights of x and y used in calculating
		the final weighted average of [x, None, y] are 1-alpha and 1 (if adjust is
		True), and 1-alpha and alpha (if adjust is False).
	**/
	static public function ewmvol(arg:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?min_periods:Dynamic, ?bias:Dynamic, ?ignore_na:Dynamic, ?adjust:Dynamic):Dynamic;
	/**
		Generic expanding function application.
		
		Parameters
		----------
		arg : Series, DataFrame
		func : function
		    Must produce a single value from an ndarray input
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		args : tuple
		    Passed on to func
		kwargs : dict
		    Passed on to func
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function expanding_apply(arg:Dynamic, func:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Expanding sample correlation.
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		
		Returns
		-------
		y : type depends on inputs
		    DataFrame / DataFrame -> DataFrame (matches on columns) or Panel (pairwise)
		    DataFrame / Series -> Computes result for each column
		    Series / Series -> Series
	**/
	static public function expanding_corr(arg1:Dynamic, ?arg2:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?pairwise:Dynamic):Dynamic;
	/**
		Deprecated. Use expanding_corr(..., pairwise=True) instead.
		
		Pairwise expanding sample correlation
		
		Parameters
		----------
		df1 : DataFrame
		df2 : DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : Panel whose items are df1.index values
	**/
	static public function expanding_corr_pairwise(df1:Dynamic, ?df2:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Expanding count of number of non-NaN observations.
		
		Parameters
		----------
		arg :  DataFrame or numpy ndarray-like
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		expanding_count : type of caller
		
		Notes
		-----
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function expanding_count(arg:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Unbiased expanding covariance.
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type depends on inputs
		    DataFrame / DataFrame -> DataFrame (matches on columns) or Panel (pairwise)
		    DataFrame / Series -> Computes result for each column
		    Series / Series -> Series
	**/
	static public function expanding_cov(arg1:Dynamic, ?arg2:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?pairwise:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		Unbiased expanding kurtosis.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_kurt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving max of 1d array of dtype=float64 along axis=0 ignoring NaNs.
		Expanding maximum.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Expanding mean.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		    O(N log(window)) implementation using skip list
		    
		Expanding median.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_median(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving min of 1d array of dtype=float64 along axis=0 ignoring NaNs.
		Expanding minimum.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Expanding quantile.
		
		Parameters
		----------
		arg : Series, DataFrame
		quantile : float
		    0 <= quantile <= 1
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function expanding_quantile(arg:Dynamic, quantile:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Unbiased expanding skewness.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_skew(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Expanding standard deviation.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_std(?a:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Expanding sum.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		    Numerically stable implementation using Welford's method.
		    
		Expanding variance.
		
		Parameters
		----------
		arg : Series, DataFrame
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type of input argument
	**/
	static public function expanding_var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Runs Fama-MacBeth regression.
		
		Parameters
		----------
		Takes the same arguments as a panel OLS, in addition to:
		
		nw_lags_beta: int
		   Newey-West adjusts the betas by the given lags
	**/
	static public function fama_macbeth(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the appropriate OLS object depending on whether you need
		simple or panel OLS, and a full-sample or rolling/expanding OLS.
		
		Will be a normal linear regression or a (pooled) panel regression depending
		on the type of the inputs:
		
		y : Series, x : DataFrame -> OLS
		y : Series, x : dict of DataFrame -> OLS
		y : DataFrame, x : DataFrame -> PanelOLS
		y : DataFrame, x : dict of DataFrame/Panel -> PanelOLS
		y : Series with MultiIndex, x : Panel/DataFrame + MultiIndex -> PanelOLS
		
		Parameters
		----------
		y: Series or DataFrame
		    See above for types
		x: Series, DataFrame, dict of Series, dict of DataFrame, Panel
		weights : Series or ndarray
		    The weights are presumed to be (proportional to) the inverse of the
		    variance of the observations.  That is, if the variables are to be
		    transformed by 1/sqrt(W) you must supply weights = 1/W
		intercept: bool
		    True if you want an intercept.  Defaults to True.
		nw_lags: None or int
		    Number of Newey-West lags.  Defaults to None.
		nw_overlap: bool
		    Whether there are overlaps in the NW lags.  Defaults to False.
		window_type: {'full sample', 'rolling', 'expanding'}
		    'full sample' by default
		window: int
		    size of window (for rolling/expanding OLS). If window passed and no
		    explicit window_type, 'rolling" will be used as the window_type
		
		Panel OLS options:
		    pool: bool
		        Whether to run pooled panel regression.  Defaults to true.
		    entity_effects: bool
		        Whether to account for entity fixed effects.  Defaults to false.
		    time_effects: bool
		        Whether to account for time fixed effects.  Defaults to false.
		    x_effects: list
		        List of x's to account for fixed effects.  Defaults to none.
		    dropped_dummies: dict
		        Key is the name of the variable for the fixed effect.
		        Value is the value of that variable for which we drop the dummy.
		
		        For entity fixed effects, key equals 'entity'.
		
		        By default, the first dummy is dropped if no dummy is specified.
		    cluster: {'time', 'entity'}
		        cluster variances
		
		Examples
		--------
		# Run simple OLS.
		result = ols(y=y, x=x)
		
		# Run rolling simple OLS with window of size 10.
		result = ols(y=y, x=x, window_type='rolling', window=10)
		print(result.beta)
		
		result = ols(y=y, x=x, nw_lags=1)
		
		# Set up LHS and RHS for data across all items
		y = A
		x = {'B' : B, 'C' : C}
		
		# Run panel OLS.
		result = ols(y=y, x=x)
		
		# Run expanding panel OLS with window 10 and entity clustering.
		result = ols(y=y, x=x, cluster='entity', window_type='expanding', window=10)
		
		Returns
		-------
		The appropriate OLS object, which allows you to obtain betas and various
		statistics, such as std err, t-stat, etc.
	**/
	static public function ols(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generic moving function application.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		func : function
		    Must produce a single value from an ndarray input
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Whether the label should correspond with center of window
		args : tuple
		    Passed on to func
		kwargs : dict
		    Passed on to func
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_apply(arg:Dynamic, window:Dynamic, func:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Moving sample correlation.
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		
		Returns
		-------
		y : type depends on inputs
		    DataFrame / DataFrame -> DataFrame (matches on columns) or Panel (pairwise)
		    DataFrame / Series -> Computes result for each column
		    Series / Series -> Series
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_corr(arg1:Dynamic, ?arg2:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?pairwise:Dynamic, ?how:Dynamic):Dynamic;
	/**
		Deprecated. Use rolling_corr(..., pairwise=True) instead.
		
		Pairwise moving sample correlation
		
		Parameters
		----------
		df1 : DataFrame
		df2 : DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : Panel whose items are df1.index values
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_corr_pairwise(df1:Dynamic, ?df2:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic):Dynamic;
	/**
		Rolling count of number of non-NaN observations inside provided window.
		
		Parameters
		----------
		arg :  DataFrame or numpy ndarray-like
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Whether the label should correspond with center of window
		how : string, default 'mean'
		    Method for down- or re-sampling
		
		Returns
		-------
		rolling_count : type of caller
		
		Notes
		-----
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_count(arg:Dynamic, window:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?how:Dynamic):Dynamic;
	/**
		Unbiased moving covariance.
		
		Parameters
		----------
		arg1 : Series, DataFrame, or ndarray
		arg2 : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to arg1 and produce pairwise output
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		pairwise : bool, default False
		    If False then only matching columns between arg1 and arg2 will be used and
		    the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the output
		    will be a Panel in the case of DataFrame inputs. In the case of missing
		    elements, only complete pairwise observations will be used.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type depends on inputs
		    DataFrame / DataFrame -> DataFrame (matches on columns) or Panel (pairwise)
		    DataFrame / Series -> Computes result for each column
		    Series / Series -> Series
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_cov(arg1:Dynamic, ?arg2:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?pairwise:Dynamic, ?how:Dynamic, ?ddof:Dynamic):Dynamic;
	/**
		Unbiased moving kurtosis.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_kurt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving max of 1d array of dtype=float64 along axis=0 ignoring NaNs.
		Moving maximum.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default ''max'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving mean.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		    O(N log(window)) implementation using skip list
		    
		Moving median.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default ''median'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_median(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving min of 1d array of dtype=float64 along axis=0 ignoring NaNs.
		Moving minimum.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default ''min'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving quantile.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		quantile : float
		    0 <= quantile <= 1
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Whether the label should correspond with center of window
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_quantile(arg:Dynamic, window:Dynamic, quantile:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic):Dynamic;
	/**
		Unbiased moving skewness.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_skew(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Moving standard deviation.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_std(?a:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moving sum.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		    Numerically stable implementation using Welford's method.
		    
		Moving variance.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int
		    Size of the moving window. This is the number of observations used for
		    calculating the statistic.
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Set the labels at the center of the window.
		how : string, default 'None'
		    Method for down- or re-sampling
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a moving window of type ``window_type`` and size ``window``
		on the data.
		
		Parameters
		----------
		arg : Series, DataFrame
		window : int or ndarray
		    Weighting window specification. If the window is an integer, then it is
		    treated as the window length and win_type is required
		win_type : str, default None
		    Window type (see Notes)
		min_periods : int, default None
		    Minimum number of observations in window required to have a value
		    (otherwise result is NA).
		freq : string or DateOffset object, optional (default None)
		    Frequency to conform the data to before computing the statistic. Specified
		    as a frequency string or DateOffset object.
		center : boolean, default False
		    Whether the label should correspond with center of window
		mean : boolean, default True
		    If True computes weighted mean, else weighted sum
		axis : {0, 1}, default 0
		how : string, default 'mean'
		    Method for down- or re-sampling
		
		Returns
		-------
		y : type of input argument
		
		Notes
		-----
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
		
		By default, the result is set to the right edge of the window. This can be
		changed to the center of the window by setting ``center=True``.
		
		The `freq` keyword is used to conform time series data to a specified
		frequency by resampling the data. This is done with the default parameters
		of :meth:`~pandas.Series.resample` (i.e. using the `mean`).
	**/
	static public function rolling_window(arg:Dynamic, ?window:Dynamic, ?win_type:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?mean:Dynamic, ?axis:Dynamic, ?how:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}