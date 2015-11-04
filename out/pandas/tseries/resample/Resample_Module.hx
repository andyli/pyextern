/* This file is generated, do not edit! */
package pandas.tseries.resample;
@:pythonImport("pandas.tseries.resample") extern class Resample_Module {
	static public var _DEFAULT_METHOD : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _adjust_dates_anchored(first:Dynamic, last:Dynamic, offset:Dynamic, ?closed:Dynamic, ?base:Dynamic):Dynamic;
	static public function _delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_range_edges(first:Dynamic, last:Dynamic, offset:Dynamic, ?closed:Dynamic, ?base:Dynamic):Dynamic;
	static public function _take_new_index(obj:Dynamic, indexer:Dynamic, new_index:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Utility frequency conversion method for Series/DataFrame
	**/
	static public function asfreq(obj:Dynamic, freq:Dynamic, ?method:Dynamic, ?how:Dynamic, ?normalize:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		Asia/Hong_Kong
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name of the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Notes
		-----
		2 of start, end, or periods must be specified
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic):pandas.DatetimeIndex;
	/**
		Returns True if downsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : string
		    Frequency converting from
		target : string
		    Frequency converting to
		
		Returns
		-------
		is_subperiod : boolean
	**/
	static public function is_subperiod(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Returns True if upsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : string
		    Frequency converting from
		target : string
		    Frequency converting to
		
		Returns
		-------
		is_superperiod : boolean
	**/
	static public function is_superperiod(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		
		Parameters
		----------
		start : starting value, period-like, optional
		end : ending value, period-like, optional
		periods : int, default None
		    Number of periods in the index
		freq : str/DateOffset, default 'D'
		    Frequency alias
		name : str, default None
		    Name for the resulting PeriodIndex
		
		Returns
		-------
		prng : PeriodIndex
	**/
	static public function period_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic):pandas.PeriodIndex;
	/**
		Return DateOffset object from string representation or
		Timedelta object
		
		Examples
		--------
		>>> to_offset('5Min')
		Minute(5)
	**/
	static public function to_offset(freqstr:Dynamic):Dynamic;
}