/* This file is generated, do not edit! */
package pandas.tseries.tdi;
@:pythonImport("pandas.tseries.tdi") extern class Tdi_Module {
	static public var _INT64_DTYPE : Dynamic;
	static public var _TD_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		convert strings to timedelta; coerce to Timedelta (if box), else np.timedelta64
	**/
	static public function _coerce_scalar_to_timedelta_type(r:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic):Dynamic;
	static public function _generate_regular_range(start:Dynamic, end:Dynamic, periods:Dynamic, offset:Dynamic):Dynamic;
	/**
		return a boolean whether I can attempt conversion to a TimedeltaIndex 
	**/
	static public function _is_convertible_to_index(other:Dynamic):Dynamic;
	static public function _is_convertible_to_td(key:Dynamic):Dynamic;
	static public function _maybe_box(indexer:Dynamic, values:Dynamic, obj:Dynamic, key:Dynamic):Dynamic;
	static public var _resolution_map : Dynamic;
	/**
		Wrap comparison operations to convert timedelta-like to timedelta64
	**/
	static public function _td_index_cmp(opname:Dynamic, ?nat_result:Dynamic):Dynamic;
	/**
		Timedelta-like => dt64
	**/
	static public function _to_m8(key:Dynamic):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	/**
		Return a fixed frequency timedelta index, with day as the default
		frequency
		
		Parameters
		----------
		start : string or timedelta-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
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
		rng : TimedeltaIndex
	**/
	static public function timedelta_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Return DateOffset object from string representation or
		Timedelta object
		
		Examples
		--------
		>>> to_offset('5Min')
		Minute(5)
	**/
	static public function to_offset(freqstr:Dynamic):Dynamic;
	/**
		Convert argument to timedelta
		
		Parameters
		----------
		arg : string, timedelta, array of strings (with possible NAs)
		unit : unit of the arg (D,h,m,s,ms,us,ns) denote the unit, which is an integer/float number
		box : boolean, default True
		    - If True returns a Timedelta/TimedeltaIndex of the results
		    - if False returns a np.timedelta64 or ndarray of values of dtype timedelta64[ns]
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaT
		    - If 'ignore', then invalid parsing will return the input
		
		Returns
		-------
		ret : timedelta64/arrays of timedelta64 if parsing succeeded
	**/
	static public function to_timedelta(arg:Dynamic, ?unit:Dynamic, ?box:Dynamic, ?errors:Dynamic, ?coerce:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
}