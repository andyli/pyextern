/* This file is generated, do not edit! */
package pandas.io.data;
@:pythonImport("pandas.io.data", "Options") extern class Options {
	static public var _FINANCE_BASE_URL : Dynamic;
	static public var _OPTIONS_BASE_URL : Dynamic;
	static public var _TABLE_LOC : Dynamic;
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
		Instantiates options_data with a ticker saved as symbol 
	**/
	@:native("__init__")
	public function ___init__(symbol:Dynamic, ?data_source:Dynamic):Dynamic;
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
	static public function _expiry_to_string(expiry:Dynamic):Dynamic;
	public function _get_data_in_date_range(dates:Dynamic, ?call:Dynamic, ?put:Dynamic):Dynamic;
	/**
		Gets available expiry dates.
		
		Returns
		-------
		Tuple of:
		List of datetime.date objects
		Dict of datetime.date objects as keys and corresponding links
	**/
	public function _get_expiry_dates_and_links():Dynamic;
	public function _get_option_data(expiry:Dynamic, name:Dynamic):Dynamic;
	public function _get_option_frames_from_yahoo(expiry:Dynamic):Dynamic;
	public function _option_frames_from_url(url:Dynamic):Dynamic;
	/**
		Downloads and parses a URL, returns xml root.
	**/
	public function _parse_url(url:Dynamic):Dynamic;
	/**
		Adds columns for Expiry, IsNonstandard (ie: deliverable is not 100 shares)
		and Tag (the tag indicating what is actually deliverable, None if standard).
	**/
	public function _process_data(frame:Dynamic, type:Dynamic):Dynamic;
	static public function _quote_time_from_root(root:Dynamic):Dynamic;
	/**
		Validates dates provided by user.  Ensures the user either provided both a month and a year or an expiry.
		
		Parameters
		----------
		year : int
		    Calendar year
		
		month : int
		    Calendar month
		
		expiry : date-like or convertible, (preferred)
		    Expiry date
		
		Returns
		-------
		list of expiry dates (datetime.date)
	**/
	public function _try_parse_dates(year:Dynamic, month:Dynamic, expiry:Dynamic):Dynamic;
	public function _underlying_price_and_time_from_url(url:Dynamic):Dynamic;
	static public function _underlying_price_from_root(root:Dynamic):Dynamic;
	/**
		Ensures that an expiry date has data available on Yahoo
		If the expiry date does not have options that expire on that day, return next expiry
	**/
	public function _validate_expiry(expiry:Dynamic):Dynamic;
	public function _yahoo_url_from_expiry(expiry:Dynamic):Dynamic;
	/**
		Returns a data frame only options that are near the current stock price.
	**/
	public function chop_data(df:Dynamic, ?above_below:Dynamic, ?underlying_price:Dynamic):Dynamic;
	/**
		Returns a list of available expiry dates
	**/
	public var expiry_dates : Dynamic;
	/**
		***Experimental***
		Gets either call, put, or both data for all available months starting
		in the current month.
		
		Parameters
		----------
		call : bool, optional (default=True)
		    Whether or not to collect data for call options
		
		put : bool, optional (default=True)
		    Whether or not to collect data for put options.
		
		Returns
		-------
		pandas.DataFrame
		    A DataFrame with requested options data.
		
		    Index:
		        Strike: Option strike, int
		        Expiry: Option expiry, Timestamp
		        Type: Call or Put, string
		        Symbol: Option symbol as reported on Yahoo, string
		    Columns:
		        Last: Last option price, float
		        Chg: Change from prior day, float
		        Bid: Bid price, float
		        Ask: Ask price, float
		        Vol: Volume traded, int64
		        Open_Int: Open interest, int64
		        IsNonstandard: True if the the deliverable is not 100 shares, otherwise false
		        Underlying: Ticker of the underlying security, string
		        Underlying_Price: Price of the underlying security, float64
		        Quote_Time: Time of the quote, Timestamp
		
		Note: Format of returned data frame is dependent on Yahoo and may change.
	**/
	public function get_all_data(?call:Dynamic, ?put:Dynamic):Dynamic;
	/**
		***Experimental***
		Gets call/put data for the stock with the expiration data in the
		given month and year
		
		Parameters
		----------
		month : number, int, optional(default=None)
		    The month the options expire. This should be either 1 or 2
		    digits.
		
		year : number, int, optional(default=None)
		    The year the options expire. This should be a 4 digit int.
		
		expiry : date-like or convertible or list-like object, optional (default=None)
		    The date (or dates) when options expire (defaults to current month)
		
		Returns
		-------
		call_data: pandas.DataFrame
		    A DataFrame with requested options data.
		
		    Index:
		        Strike: Option strike, int
		        Expiry: Option expiry, Timestamp
		        Type: Call or Put, string
		        Symbol: Option symbol as reported on Yahoo, string
		    Columns:
		        Last: Last option price, float
		        Chg: Change from prior day, float
		        Bid: Bid price, float
		        Ask: Ask price, float
		        Vol: Volume traded, int64
		        Open_Int: Open interest, int64
		        IsNonstandard: True if the the deliverable is not 100 shares, otherwise false
		        Underlying: Ticker of the underlying security, string
		        Underlying_Price: Price of the underlying security, float64
		        Quote_Time: Time of the quote, Timestamp
		
		Notes
		-----
		Note: Format of returned data frame is dependent on Yahoo and may change.
		
		When called, this function will add instance variables named
		calls and puts. See the following example:
		
		    >>> aapl = Options('aapl', 'yahoo')  # Create object
		    >>> aapl.calls  # will give an AttributeError
		    >>> aapl.get_call_data()  # Get data and set ivars
		    >>> aapl.calls  # Doesn't throw AttributeError
		
		Also note that aapl.calls will always be the calls for the next
		expiry. If the user calls this method with a different month
		or year, the ivar will be named callsYYMMDD where YY, MM and DD are,
		respectively, two digit representations of the year, month and day
		for the expiry of the options.
	**/
	public function get_call_data(?month:Dynamic, ?year:Dynamic, ?expiry:Dynamic):Dynamic;
	/**
		***Experimental***
		Gets either call, put, or both data for months starting in the current
		month and going out in the future a specified amount of time.
		
		Parameters
		----------
		months : number, int
		    How many months to go out in the collection of the data. This is
		    inclusive.
		
		call : bool, optional (default=True)
		    Whether or not to collect data for call options
		
		put : bool, optional (default=False)
		    Whether or not to collect data for put options.
		
		near : bool, optional (default=False)
		    Whether this function should get only the data near the
		    current stock price. Uses Options.get_near_stock_price
		
		above_below : number, int, optional (default=2)
		    The number of strike prices above and below the stock price that
		    should be taken if the near option is set to True
		
		Returns
		-------
		pandas.DataFrame
		    A DataFrame with requested options data.
		
		    Index:
		        Strike: Option strike, int
		        Expiry: Option expiry, Timestamp
		        Type: Call or Put, string
		        Symbol: Option symbol as reported on Yahoo, string
		    Columns:
		        Last: Last option price, float
		        Chg: Change from prior day, float
		        Bid: Bid price, float
		        Ask: Ask price, float
		        Vol: Volume traded, int64
		        Open_Int: Open interest, int64
		        IsNonstandard: True if the the deliverable is not 100 shares, otherwise false
		        Underlying: Ticker of the underlying security, string
		        Underlying_Price: Price of the underlying security, float64
		        Quote_Time: Time of the quote, Timestamp
		
		        Note: Format of returned data frame is dependent on Yahoo and may change.
	**/
	public function get_forward_data(months:Dynamic, ?call:Dynamic, ?put:Dynamic, ?near:Dynamic, ?above_below:Dynamic):Dynamic;
	/**
		***Experimental***
		Returns a data frame of options that are near the current stock price.
		
		Parameters
		----------
		above_below : number, int, optional (default=2)
		    The number of strike prices above and below the stock price that
		    should be taken
		
		call : bool, default: True
		    Tells the function whether or not it should be using calls
		
		put : bool, default: False
		    Tells the function weather or not it should be using puts
		
		month : number, int, optional(default=None)
		    The month the options expire. This should be either 1 or 2
		    digits.
		
		year : number, int, optional(default=None)
		    The year the options expire. This should be a 4 digit int.
		
		expiry : date-like or convertible or list-like object, optional (default=None)
		    The date (or dates) when options expire (defaults to current month)
		
		Returns
		-------
		chopped: DataFrame
		    The resultant DataFrame chopped down to be 2 * above_below + 1 rows
		    desired. If there isn't data as far out as the user has asked for
		    then
		
		 Note: Format of returned data frame is dependent on Yahoo and may change.
	**/
	public function get_near_stock_price(?above_below:Dynamic, ?call:Dynamic, ?put:Dynamic, ?month:Dynamic, ?year:Dynamic, ?expiry:Dynamic):Dynamic;
	/**
		***Experimental***
		Gets call/put data for the stock with the expiration data in the
		given month and year
		
		Parameters
		----------
		month : number, int, optional(default=None)
		    The month the options expire. This should be either 1 or 2
		    digits.
		
		year : number, int, optional(default=None)
		    The year the options expire. This should be a 4 digit int.
		
		expiry : date-like or convertible or list-like object, optional (default=None)
		    The date (or dates) when options expire (defaults to current month)
		
		Returns
		-------
		pandas.DataFrame
		    A DataFrame with requested options data.
		
		    Index:
		        Strike: Option strike, int
		        Expiry: Option expiry, Timestamp
		        Type: Call or Put, string
		        Symbol: Option symbol as reported on Yahoo, string
		    Columns:
		        Last: Last option price, float
		        Chg: Change from prior day, float
		        Bid: Bid price, float
		        Ask: Ask price, float
		        Vol: Volume traded, int64
		        Open_Int: Open interest, int64
		        IsNonstandard: True if the the deliverable is not 100 shares, otherwise false
		        Underlying: Ticker of the underlying security, string
		        Underlying_Price: Price of the underlying security, float64
		        Quote_Time: Time of the quote, Timestamp
		
		Notes
		-----
		Note: Format of returned data frame is dependent on Yahoo and may change.
		
		When called, this function will add instance variables named
		calls and puts. See the following example:
		
		    >>> aapl = Options('aapl', 'yahoo')  # Create object
		    >>> aapl.calls  # will give an AttributeError
		    >>> aapl.get_options()  # Get data and set ivars
		    >>> aapl.calls  # Doesn't throw AttributeError
		
		Also note that aapl.calls and appl.puts will always be the calls
		and puts for the next expiry. If the user calls this method with
		a different expiry, the ivar will be named callsYYMMDD or putsYYMMDD,
		where YY, MM and DD are, respectively, two digit representations of
		the year, month and day for the expiry of the options.
	**/
	public function get_options_data(?month:Dynamic, ?year:Dynamic, ?expiry:Dynamic):Dynamic;
	/**
		***Experimental***
		Gets put data for the stock with the expiration data in the
		given month and year
		
		Parameters
		----------
		month : number, int, optional(default=None)
		    The month the options expire. This should be either 1 or 2
		    digits.
		
		year : number, int, optional(default=None)
		    The year the options expire. This should be a 4 digit int.
		
		expiry : date-like or convertible or list-like object, optional (default=None)
		    The date (or dates) when options expire (defaults to current month)
		
		Returns
		-------
		put_data: pandas.DataFrame
		    A DataFrame with requested options data.
		
		    Index:
		        Strike: Option strike, int
		        Expiry: Option expiry, Timestamp
		        Type: Call or Put, string
		        Symbol: Option symbol as reported on Yahoo, string
		    Columns:
		        Last: Last option price, float
		        Chg: Change from prior day, float
		        Bid: Bid price, float
		        Ask: Ask price, float
		        Vol: Volume traded, int64
		        Open_Int: Open interest, int64
		        IsNonstandard: True if the the deliverable is not 100 shares, otherwise false
		        Underlying: Ticker of the underlying security, string
		        Underlying_Price: Price of the underlying security, float64
		        Quote_Time: Time of the quote, Timestamp
		
		Notes
		-----
		Note: Format of returned data frame is dependent on Yahoo and may change.
		
		When called, this function will add instance variables named
		puts. See the following example:
		
		    >>> aapl = Options('aapl')  # Create object
		    >>> aapl.puts  # will give an AttributeError
		    >>> aapl.get_put_data()  # Get data and set ivars
		    >>> aapl.puts  # Doesn't throw AttributeError
		
		            return self.__setattr__(self, str(str(x) + str(y)))
		
		Also note that aapl.puts will always be the puts for the next
		expiry. If the user calls this method with a different month
		or year, the ivar will be named putsYYMMDD where YY, MM and DD are,
		respectively, two digit representations of the year, month and day
		for the expiry of the options.
	**/
	public function get_put_data(?month:Dynamic, ?year:Dynamic, ?expiry:Dynamic):Dynamic;
}