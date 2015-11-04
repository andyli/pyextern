/* This file is generated, do not edit! */
package pandas.tseries.period;
@:pythonImport("pandas.tseries.period") extern class Period_Module {
	static public var _DIFFERENT_FREQ_ERROR : Dynamic;
	static public var _INT64_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _field_accessor(name:Dynamic, alias:Dynamic, ?docstring:Dynamic):Dynamic;
	static public function _get_ordinal_range(start:Dynamic, end:Dynamic, periods:Dynamic, freq:Dynamic, ?mult:Dynamic):Dynamic;
	static public function _get_ordinals(data:Dynamic, freq:Dynamic):Dynamic;
	/**
		Return freq str or tuple to freq code and stride (mult)
		
		Parameters
		----------
		freqstr : str or tuple
		
		Returns
		-------
		return : tuple of base frequency code and stride (mult)
		
		Example
		-------
		>>> get_freq_code('3D')
		(6000, 3)
		
		>>> get_freq_code('D')
		(6000, 1)
		
		>>> get_freq_code(('D', 3))
		(6000, 3)
	**/
	static public function _gfc(freqstr:Dynamic):Dynamic;
	static public function _make_field_arrays(?fields:python.VarArgs<Dynamic>):Dynamic;
	static public function _maybe_box(indexer:Dynamic, values:Dynamic, obj:Dynamic, key:Dynamic):Dynamic;
	/**
		Wrap comparison operations to convert datetime-like to datetime64
	**/
	static public function _period_index_cmp(opname:Dynamic, ?nat_result:Dynamic):Dynamic;
	static public function _quarter_to_myear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _range_from_fields(?year:Dynamic, ?month:Dynamic, ?quarter:Dynamic, ?day:Dynamic, ?hour:Dynamic, ?minute:Dynamic, ?second:Dynamic, ?freq:Dynamic):Dynamic;
	static public function _validate_end_alias(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dt64arr_to_periodarr(data:Dynamic, freq:Dynamic, tz:Dynamic):Dynamic;
	static public function get_period_field_arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Try hard to parse datetime string, leveraging dateutil plus some extra
		goodies like quarter recognition.
		
		Parameters
		----------
		arg : compat.string_types
		freq : str or DateOffset, default None
		    Helps with interpreting time string if supplied
		dayfirst : bool, default None
		    If None uses default from print_config
		yearfirst : bool, default None
		    If None uses default from print_config
		
		Returns
		-------
		datetime, datetime/dateutil.parser._result, str
	**/
	static public function parse_time_string(arg:Dynamic, ?freq:Dynamic, ?dayfirst:Dynamic, ?yearfirst:Dynamic):Dynamic;
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
	static public function pnow(?freq:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
}