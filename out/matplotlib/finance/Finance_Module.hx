/* This file is generated, do not edit! */
package matplotlib.finance;
@:pythonImport("matplotlib.finance") extern class Finance_Module {
	static public var TICKLEFT : Dynamic;
	static public var TICKRIGHT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Plot the time, open, high, low, close as a vertical line ranging
		from low to high.  Use a rectangular bar to represent the
		open-close span.  If close >= open, use colorup to color the bar,
		otherwise use colordown
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		quotes : sequence of quote sequences
		    data to plot.  time must be in float date format - see date2num
		    (time, open, high, low, close, ...) vs
		    (time, open, close, high, low, ...)
		    set by `ochl`
		width : float
		    fraction of a day for the rectangle width
		colorup : color
		    the color of the rectangle where close >= open
		colordown : color
		     the color of the rectangle where close <  open
		alpha : float
		    the rectangle alpha level
		ochl: bool
		    argument to select between ochl and ohlc ordering of quotes
		
		Returns
		-------
		ret : tuple
		    returns (lines, patches) where lines is a list of lines
		    added and patches is a list of the rectangle patches added
	**/
	static public function _candlestick(ax:Dynamic, quotes:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic, ?ochl:Dynamic):python.Tuple<Dynamic>;
	/**
		Checks that *opens*, *highs*, *lows* and *closes* have the same length.
		NOTE: this code assumes if any value open, high, low, close is
		missing (*-1*) they all are missing
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		opens : sequence
		    sequence of opening values
		highs : sequence
		    sequence of high values
		lows : sequence
		    sequence of low values
		closes : sequence
		    sequence of closing values
		miss : int
		    identifier of the missing data
		
		Raises
		------
		ValueError
		    if the input sequences don't have the same length
	**/
	static public function _check_input(opens:Dynamic, closes:Dynamic, highs:Dynamic, lows:Dynamic, ?miss:Dynamic):Dynamic;
	/**
		Parse the historical data in file handle fh from yahoo finance.
		
		
		Parameters
		----------
		
		adjusted : bool
		  If True (default) replace open, high, low, close prices with
		  their adjusted values. The adjustment is by a scale factor, S =
		  adjusted_close/close. Adjusted prices are actual prices
		  multiplied by S.
		
		  Volume is not adjusted as it is already backward split adjusted
		  by Yahoo. If you want to compute dollars traded, multiply volume
		  by the adjusted close, regardless of whether you choose adjusted
		  = True|False.
		
		
		asobject : bool or None
		  If False (default for compatibility with earlier versions)
		  return a list of tuples containing
		
		    d, open, high, low, close, volume
		
		   or
		
		    d, open, close, high, low, volume
		
		  depending on `ochl`
		
		  If None (preferred alternative to False), return
		  a 2-D ndarray corresponding to the list of tuples.
		
		  Otherwise return a numpy recarray with
		
		    date, year, month, day, d, open, high, low, close,
		    volume, adjusted_close
		
		  where d is a floating poing representation of date,
		  as returned by date2num, and date is a python standard
		  library datetime.date instance.
		
		  The name of this kwarg is a historical artifact.  Formerly,
		  True returned a cbook Bunch
		  holding 1-D ndarrays.  The behavior of a numpy recarray is
		  very similar to the Bunch.
		
		ochl : bool
		    Selects between ochl and ohlc ordering.
		    Defaults to True to preserve original functionality.
	**/
	static public function _parse_yahoo_historical(fh:Dynamic, ?adjusted:Dynamic, ?asobject:Dynamic, ?ochl:Dynamic):Dynamic;
	/**
		Plots day summary
		
		
		    Represent the time, open, high, low, close as a vertical line
		    ranging from low to high.  The left tick is the open and the right
		    tick is the close.
		
		
		
		Parameters
		----------
		ax : `Axes`
		    an `Axes` instance to plot to
		quotes : sequence of quote sequences
		    data to plot.  time must be in float date format - see date2num
		    (time, open, high, low, close, ...) vs
		    (time, open, close, high, low, ...)
		    set by `ochl`
		ticksize : int
		    open/close tick marker in points
		colorup : color
		    the color of the lines where close >= open
		colordown : color
		    the color of the lines where close <  open
		ochl: bool
		    argument to select between ochl and ohlc ordering of quotes
		
		Returns
		-------
		lines : list
		    list of tuples of the lines added (one tuple per quote)
	**/
	static public function _plot_day_summary(ax:Dynamic, quotes:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?ochl:Dynamic):Array<Dynamic>;
	/**
		Get historical data for ticker between date1 and date2.
		
		See :func:`parse_yahoo_historical` for explanation of output formats
		and the *asobject* and *adjusted* kwargs.
		
		Parameters
		----------
		ticker : str
		    stock ticker
		
		date1 : sequence of form (year, month, day), `datetime`, or `date`
		    start date
		
		date2 : sequence of form (year, month, day), `datetime`, or `date`
		    end date
		
		cachename : str or `None`
		    is the name of the local file cache.  If None, will
		    default to the md5 hash or the url (which incorporates the ticker
		    and date range)
		
		ochl: bool
		    temporary argument to select between ochl and ohlc ordering
		
		
		Examples
		--------
		>>> sp = f.quotes_historical_yahoo('^GSPC', d1, d2,
		                         asobject=True, adjusted=True)
		>>> returns = (sp.open[1:] - sp.open[:-1])/sp.open[1:]
		>>> [n,bins,patches] = hist(returns, 100)
		>>> mu = mean(returns)
		>>> sigma = std(returns)
		>>> x = normpdf(bins, mu, sigma)
		>>> plot(bins, x, color='red', lw=2)
	**/
	static public function _quotes_historical_yahoo(ticker:Dynamic, date1:Dynamic, date2:Dynamic, ?asobject:Dynamic, ?adjusted:Dynamic, ?cachename:Dynamic, ?ochl:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var cachedir : Dynamic;
	/**
		Represent the open, close as a bar line and high low range as a
		vertical line.
		
		Preserves the original argument order.
		
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		opens : sequence
		    sequence of opening values
		closes : sequence
		    sequence of closing values
		highs : sequence
		    sequence of high values
		lows : sequence
		    sequence of low values
		ticksize : int
		    size of open and close ticks in points
		colorup : color
		    the color of the lines where close >= open
		colordown : color
		    the color of the lines where close <  open
		alpha : float
		    bar transparency
		
		Returns
		-------
		ret : tuple
		    (lineCollection, barCollection)
	**/
	static public function candlestick2_ochl(ax:Dynamic, opens:Dynamic, closes:Dynamic, highs:Dynamic, lows:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic):python.Tuple<Dynamic>;
	/**
		Represent the open, close as a bar line and high low range as a
		vertical line.
		
		NOTE: this code assumes if any value open, low, high, close is
		missing they all are missing
		
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		opens : sequence
		    sequence of opening values
		highs : sequence
		    sequence of high values
		lows : sequence
		    sequence of low values
		closes : sequence
		    sequence of closing values
		ticksize : int
		    size of open and close ticks in points
		colorup : color
		    the color of the lines where close >= open
		colordown : color
		    the color of the lines where close <  open
		alpha : float
		    bar transparency
		
		Returns
		-------
		ret : tuple
		    (lineCollection, barCollection)
	**/
	static public function candlestick2_ohlc(ax:Dynamic, opens:Dynamic, highs:Dynamic, lows:Dynamic, closes:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic):python.Tuple<Dynamic>;
	/**
		Plot the time, open, close, high, low as a vertical line ranging
		from low to high.  Use a rectangular bar to represent the
		open-close span.  If close >= open, use colorup to color the bar,
		otherwise use colordown
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		quotes : sequence of (time, open, close, high, low, ...) sequences
		    As long as the first 5 elements are these values,
		    the record can be as long as you want (e.g., it may store volume).
		
		    time must be in float days format - see date2num
		
		width : float
		    fraction of a day for the rectangle width
		colorup : color
		    the color of the rectangle where close >= open
		colordown : color
		     the color of the rectangle where close <  open
		alpha : float
		    the rectangle alpha level
		
		Returns
		-------
		ret : tuple
		    returns (lines, patches) where lines is a list of lines
		    added and patches is a list of the rectangle patches added
	**/
	static public function candlestick_ochl(ax:Dynamic, quotes:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic):python.Tuple<Dynamic>;
	/**
		Plot the time, open, high, low, close as a vertical line ranging
		from low to high.  Use a rectangular bar to represent the
		open-close span.  If close >= open, use colorup to color the bar,
		otherwise use colordown
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		quotes : sequence of (time, open, high, low, close, ...) sequences
		    As long as the first 5 elements are these values,
		    the record can be as long as you want (e.g., it may store volume).
		
		    time must be in float days format - see date2num
		
		width : float
		    fraction of a day for the rectangle width
		colorup : color
		    the color of the rectangle where close >= open
		colordown : color
		     the color of the rectangle where close <  open
		alpha : float
		    the rectangle alpha level
		
		Returns
		-------
		ret : tuple
		    returns (lines, patches) where lines is a list of lines
		    added and patches is a list of the rectangle patches added
	**/
	static public function candlestick_ohlc(ax:Dynamic, quotes:Dynamic, ?width:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?alpha:Dynamic):python.Tuple<Dynamic>;
	static public var colorConverter : Dynamic;
	/**
		*d* is either a :class:`datetime` instance or a sequence of datetimes.
		
		Return value is a floating point number (or sequence of floats)
		which gives the number of days (fraction part represents hours,
		minutes, seconds) since 0001-01-01 00:00:00 UTC, *plus* *one*.
		The addition of one here is a historical artifact.  Also, note
		that the Gregorian calendar is assumed; this is not universal
		practice.  For details, see the module docstring.
	**/
	static public function date2num(d:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Fetch historical data for ticker between date1 and date2.  date1 and
		date2 are date or datetime instances, or (year, month, day) sequences.
		
		Parameters
		----------
		ticker : str
		    ticker
		
		date1 : sequence of form (year, month, day), `datetime`, or `date`
		    start date
		date2 : sequence of form (year, month, day), `datetime`, or `date`
		    end date
		
		cachename : str
		    cachename is the name of the local file cache.  If None, will
		    default to the md5 hash or the url (which incorporates the ticker
		    and date range)
		
		dividends : bool
		    set dividends=True to return dividends instead of price data.  With
		    this option set, parse functions will not work
		
		Returns
		-------
		file_handle : file handle
		    a file handle is returned
		
		
		Examples
		--------
		>>> fh = fetch_historical_yahoo('^GSPC', (2000, 1, 1), (2001, 12, 31))
	**/
	static public function fetch_historical_yahoo(ticker:Dynamic, date1:Dynamic, date2:Dynamic, ?cachename:Dynamic, ?dividends:Dynamic):Dynamic;
	/**
		Return the location of the cache directory.
		
		The procedure used to find the directory is the same as for
		_get_config_dir, except using `$XDG_CACHE_HOME`/`~/.cache` instead.
	**/
	static public function get_cachedir(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a bar collection graph with height vals (-1 is missing).
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		vals : sequence
		    a sequence of values
		facecolor : color
		    the color of the bar face
		edgecolor : color
		    the color of the bar edges
		width : int
		    the bar width in points
		alpha : float
		   bar transparency
		
		Returns
		-------
		ret : `barCollection`
		    The `barrCollection` added to the axes
	**/
	static public function index_bar(ax:Dynamic, vals:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?width:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		return true if *obj* is iterable
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	static public function md5(x:Dynamic):Dynamic;
	/**
		make directory *newdir* recursively, and set *mode*.  Equivalent to ::
		
		    > mkdir -p NEWDIR
		    > chmod MODE NEWDIR
	**/
	static public function mkdirs(newdir:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Parse the historical data in file handle fh from yahoo finance.
		
		Parameters
		----------
		
		adjusted : bool
		  If True (default) replace open, close, high, low prices with
		  their adjusted values. The adjustment is by a scale factor, S =
		  adjusted_close/close. Adjusted prices are actual prices
		  multiplied by S.
		
		  Volume is not adjusted as it is already backward split adjusted
		  by Yahoo. If you want to compute dollars traded, multiply volume
		  by the adjusted close, regardless of whether you choose adjusted
		  = True|False.
		
		
		asobject : bool or None
		  If False (default for compatibility with earlier versions)
		  return a list of tuples containing
		
		    d, open, close, high, low,  volume
		
		  If None (preferred alternative to False), return
		  a 2-D ndarray corresponding to the list of tuples.
		
		  Otherwise return a numpy recarray with
		
		    date, year, month, day, d, open, close, high, low,
		    volume, adjusted_close
		
		  where d is a floating poing representation of date,
		  as returned by date2num, and date is a python standard
		  library datetime.date instance.
		
		  The name of this kwarg is a historical artifact.  Formerly,
		  True returned a cbook Bunch
		  holding 1-D ndarrays.  The behavior of a numpy recarray is
		  very similar to the Bunch.
	**/
	static public function parse_yahoo_historical_ochl(fh:Dynamic, ?adjusted:Dynamic, ?asobject:Dynamic):Dynamic;
	/**
		Parse the historical data in file handle fh from yahoo finance.
		
		Parameters
		----------
		
		adjusted : bool
		  If True (default) replace open, high, low, close prices with
		  their adjusted values. The adjustment is by a scale factor, S =
		  adjusted_close/close. Adjusted prices are actual prices
		  multiplied by S.
		
		  Volume is not adjusted as it is already backward split adjusted
		  by Yahoo. If you want to compute dollars traded, multiply volume
		  by the adjusted close, regardless of whether you choose adjusted
		  = True|False.
		
		
		asobject : bool or None
		  If False (default for compatibility with earlier versions)
		  return a list of tuples containing
		
		    d, open, high, low, close, volume
		
		  If None (preferred alternative to False), return
		  a 2-D ndarray corresponding to the list of tuples.
		
		  Otherwise return a numpy recarray with
		
		    date, year, month, day, d, open, high, low,  close,
		    volume, adjusted_close
		
		  where d is a floating poing representation of date,
		  as returned by date2num, and date is a python standard
		  library datetime.date instance.
		
		  The name of this kwarg is a historical artifact.  Formerly,
		  True returned a cbook Bunch
		  holding 1-D ndarrays.  The behavior of a numpy recarray is
		  very similar to the Bunch.
	**/
	static public function parse_yahoo_historical_ohlc(fh:Dynamic, ?adjusted:Dynamic, ?asobject:Dynamic):Dynamic;
	/**
		Represent the time, open, close, high, low,  as a vertical line
		ranging from low to high.  The left tick is the open and the right
		tick is the close.
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		opens : sequence
		    sequence of opening values
		closes : sequence
		    sequence of closing values
		highs : sequence
		    sequence of high values
		lows : sequence
		    sequence of low values
		ticksize : int
		    size of open and close ticks in points
		colorup : color
		    the color of the lines where close >= open
		colordown : color
		     the color of the lines where close <  open
		
		Returns
		-------
		ret : list
		    a list of lines added to the axes
	**/
	static public function plot_day_summary2_ochl(ax:Dynamic, opens:Dynamic, closes:Dynamic, highs:Dynamic, lows:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic):Array<Dynamic>;
	/**
		Represent the time, open, high, low, close as a vertical line
		ranging from low to high.  The left tick is the open and the right
		tick is the close.
		*opens*, *highs*, *lows* and *closes* must have the same length.
		NOTE: this code assumes if any value open, high, low, close is
		missing (*-1*) they all are missing
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		opens : sequence
		    sequence of opening values
		highs : sequence
		    sequence of high values
		lows : sequence
		    sequence of low values
		closes : sequence
		    sequence of closing values
		ticksize : int
		    size of open and close ticks in points
		colorup : color
		    the color of the lines where close >= open
		colordown : color
		     the color of the lines where close <  open
		
		Returns
		-------
		ret : list
		    a list of lines added to the axes
	**/
	static public function plot_day_summary2_ohlc(ax:Dynamic, opens:Dynamic, highs:Dynamic, lows:Dynamic, closes:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic):Array<Dynamic>;
	/**
		Plots day summary
		
		    Represent the time, open, close, high, low as a vertical line
		    ranging from low to high.  The left tick is the open and the right
		    tick is the close.
		
		
		
		Parameters
		----------
		ax : `Axes`
		    an `Axes` instance to plot to
		quotes : sequence of (time, open, close, high, low, ...) sequences
		    data to plot.  time must be in float date format - see date2num
		ticksize : int
		    open/close tick marker in points
		colorup : color
		    the color of the lines where close >= open
		colordown : color
		    the color of the lines where close <  open
		
		Returns
		-------
		lines : list
		    list of tuples of the lines added (one tuple per quote)
	**/
	static public function plot_day_summary_oclh(ax:Dynamic, quotes:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic):Array<Dynamic>;
	/**
		Plots day summary
		
		    Represent the time, open, high, low, close as a vertical line
		    ranging from low to high.  The left tick is the open and the right
		    tick is the close.
		
		
		
		Parameters
		----------
		ax : `Axes`
		    an `Axes` instance to plot to
		quotes : sequence of (time, open, high, low, close, ...) sequences
		    data to plot.  time must be in float date format - see date2num
		ticksize : int
		    open/close tick marker in points
		colorup : color
		    the color of the lines where close >= open
		colordown : color
		    the color of the lines where close <  open
		
		Returns
		-------
		lines : list
		    list of tuples of the lines added (one tuple per quote)
	**/
	static public function plot_day_summary_ohlc(ax:Dynamic, quotes:Dynamic, ?ticksize:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic):Array<Dynamic>;
	static public var print_function : Dynamic;
	/**
		Get historical data for ticker between date1 and date2.
		
		
		See :func:`parse_yahoo_historical` for explanation of output formats
		and the *asobject* and *adjusted* kwargs.
		
		Parameters
		----------
		ticker : str
		    stock ticker
		
		date1 : sequence of form (year, month, day), `datetime`, or `date`
		    start date
		
		date2 : sequence of form (year, month, day), `datetime`, or `date`
		    end date
		
		cachename : str or `None`
		    is the name of the local file cache.  If None, will
		    default to the md5 hash or the url (which incorporates the ticker
		    and date range)
		
		Examples
		--------
		>>> sp = f.quotes_historical_yahoo_ochl('^GSPC', d1, d2,
		                         asobject=True, adjusted=True)
		>>> returns = (sp.open[1:] - sp.open[:-1])/sp.open[1:]
		>>> [n,bins,patches] = hist(returns, 100)
		>>> mu = mean(returns)
		>>> sigma = std(returns)
		>>> x = normpdf(bins, mu, sigma)
		>>> plot(bins, x, color='red', lw=2)
	**/
	static public function quotes_historical_yahoo_ochl(ticker:Dynamic, date1:Dynamic, date2:Dynamic, ?asobject:Dynamic, ?adjusted:Dynamic, ?cachename:Dynamic):Dynamic;
	/**
		Get historical data for ticker between date1 and date2.
		
		
		See :func:`parse_yahoo_historical` for explanation of output formats
		and the *asobject* and *adjusted* kwargs.
		
		Parameters
		----------
		ticker : str
		    stock ticker
		
		date1 : sequence of form (year, month, day), `datetime`, or `date`
		    start date
		
		date2 : sequence of form (year, month, day), `datetime`, or `date`
		    end date
		
		cachename : str or `None`
		    is the name of the local file cache.  If None, will
		    default to the md5 hash or the url (which incorporates the ticker
		    and date range)
		
		Examples
		--------
		>>> sp = f.quotes_historical_yahoo_ohlc('^GSPC', d1, d2,
		                         asobject=True, adjusted=True)
		>>> returns = (sp.open[1:] - sp.open[:-1])/sp.open[1:]
		>>> [n,bins,patches] = hist(returns, 100)
		>>> mu = mean(returns)
		>>> sigma = std(returns)
		>>> x = normpdf(bins, mu, sigma)
		>>> plot(bins, x, color='red', lw=2)
	**/
	static public function quotes_historical_yahoo_ohlc(ticker:Dynamic, date1:Dynamic, date2:Dynamic, ?asobject:Dynamic, ?adjusted:Dynamic, ?cachename:Dynamic):Dynamic;
	static public var stock_dt_ochl : Dynamic;
	static public var stock_dt_ohlc : Dynamic;
	static public var unicode_literals : Dynamic;
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	static public var verbose : Dynamic;
	/**
		Add a volume overlay to the current axes.  The opens and closes
		are used to determine the color of the bar.  -1 is missing.  If a
		value is missing on one it must be missing on all
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		opens : sequence
		    a sequence of opens
		closes : sequence
		    a sequence of closes
		volumes : sequence
		    a sequence of volumes
		width : int
		    the bar width in points
		colorup : color
		    the color of the lines where close >= open
		colordown : color
		    the color of the lines where close <  open
		alpha : float
		    bar transparency
		
		Returns
		-------
		ret : `barCollection`
		    The `barrCollection` added to the axes
	**/
	static public function volume_overlay(ax:Dynamic, opens:Dynamic, closes:Dynamic, volumes:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?width:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Add a volume overlay to the current axes.  The closes are used to
		determine the color of the bar.  -1 is missing.  If a value is
		missing on one it must be missing on all
		
		nb: first point is not displayed - it is used only for choosing the
		right color
		
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		closes : sequence
		    a sequence of closes
		volumes : sequence
		    a sequence of volumes
		width : int
		    the bar width in points
		colorup : color
		    the color of the lines where close >= open
		colordown : color
		    the color of the lines where close <  open
		alpha : float
		    bar transparency
		
		Returns
		-------
		ret : `barCollection`
		    The `barrCollection` added to the axes
	**/
	static public function volume_overlay2(ax:Dynamic, closes:Dynamic, volumes:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?width:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Add a volume overlay to the current axes.  quotes is a list of (d,
		open, high, low, close, volume) and close-open is used to
		determine the color of the bar
		
		Parameters
		----------
		ax : `Axes`
		    an Axes instance to plot to
		quotes : sequence of (time, open, high, low, close, ...) sequences
		    data to plot.  time must be in float date format - see date2num
		width : int
		    the bar width in points
		colorup : color
		    the color of the lines where close1 >= close0
		colordown : color
		    the color of the lines where close1 <  close0
		alpha : float
		     bar transparency
		
		Returns
		-------
		ret : `barCollection`
		    The `barrCollection` added to the axes
	**/
	static public function volume_overlay3(ax:Dynamic, quotes:Dynamic, ?colorup:Dynamic, ?colordown:Dynamic, ?width:Dynamic, ?alpha:Dynamic):Dynamic;
}