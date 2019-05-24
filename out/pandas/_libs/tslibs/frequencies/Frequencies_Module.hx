/* This file is generated, do not edit! */
package pandas._libs.tslibs.frequencies;
@:pythonImport("pandas._libs.tslibs.frequencies") extern class Frequencies_Module {
	static public var INVALID_FREQ_ERR_MSG : Dynamic;
	static public var MONTH_NUMBERS : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Return base freq and stride info from string representation
		
		Returns
		-------
		base : str
		stride : int
		
		Examples
		--------
		_freq_and_stride('5Min') -> 'Min', 5
	**/
	static public function _base_and_stride(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _dont_uppercase : Dynamic;
	static public var _lite_rule_alias : Dynamic;
	static public var _period_code_map : Dynamic;
	static public function _period_str_to_code(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _reverse_period_code_map : Dynamic;
	/**
		Returns the base frequency alias, e.g., '5D' -> 'D'
		
		Parameters
		----------
		freqstr : str
		
		Returns
		-------
		base_alias : str
	**/
	static public function get_base_alias(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return frequency code of given frequency str.
		If input is not string, return input as it is.
		
		Examples
		--------
		>>> get_freq('A')
		1000
		
		>>> get_freq('3A')
		1000
	**/
	static public function get_freq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return freq str or tuple to freq code and stride (mult)
		
		Parameters
		----------
		freqstr : str or tuple
		
		Returns
		-------
		return : tuple of base frequency code and stride (mult)
		
		Examples
		--------
		>>> get_freq_code('3D')
		(6000, 3)
		
		>>> get_freq_code('D')
		(6000, 1)
		
		>>> get_freq_code(('D', 3))
		(6000, 3)
	**/
	static public function get_freq_code(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the summary string associated with this offset code, possibly
		adjusted by a multiplier.
		
		Parameters
		----------
		base : int (member of FreqGroup)
		
		Returns
		-------
		freq_str : str
		
		Examples
		--------
		>>> get_freq_str(1000)
		'A-DEC'
		
		>>> get_freq_str(2000, 2)
		'2Q-DEC'
		
		>>> get_freq_str("foo")
	**/
	static public function get_freq_str(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return starting month of given freq, default is December.
		
		Parameters
		----------
		source : object
		default : object (default "DEC")
		
		Returns
		-------
		rule_month: object (usually string)
		
		Examples
		--------
		>>> get_rule_month('D')
		'DEC'
		
		>>> get_rule_month('A-JAN')
		'JAN'
	**/
	static public function get_rule_month(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return frequency code group used for base of to_timestamp against
		frequency code.
		
		Parameters
		----------
		base : int (member of FreqGroup)
		
		Returns
		-------
		base : int
		
		Examples
		--------
		# Return day freq code against longer freq than day
		>>> get_to_timestamp_base(get_freq_code('D')[0])
		6000
		>>> get_to_timestamp_base(get_freq_code('W')[0])
		6000
		>>> get_to_timestamp_base(get_freq_code('M')[0])
		6000
		
		# Return second freq code against hour between second
		>>> get_to_timestamp_base(get_freq_code('H')[0])
		9000
		>>> get_to_timestamp_base(get_freq_code('S')[0])
		9000
	**/
	static public function get_to_timestamp_base(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True if downsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : string or DateOffset
		    Frequency converting from
		target : string or DateOffset
		    Frequency converting to
		
		Returns
		-------
		is_subperiod : boolean
	**/
	static public function is_subperiod(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function is_superperiod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var opattern : Dynamic;
}