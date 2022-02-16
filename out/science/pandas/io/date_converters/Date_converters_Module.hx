/* This file is generated, do not edit! */
package pandas.io.date_converters;
@:pythonImport("pandas.io.date_converters") extern class Date_converters_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_columns(cols:Dynamic):Dynamic;
	static public function _maybe_cast(arr:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Use dateparser to parse columns with data information into a single datetime column.
		
		.. deprecated:: 1.2
	**/
	static public function generic_parser(parse_func:Dynamic, ?cols:python.VarArgs<Dynamic>):Dynamic;
	/**
		Parse columns with datetime information into a single datetime column.
		
		.. deprecated:: 1.2
	**/
	static public function parse_all_fields(year_col:Dynamic, month_col:Dynamic, day_col:Dynamic, hour_col:Dynamic, minute_col:Dynamic, second_col:Dynamic):Dynamic;
	/**
		Parse columns with years, months and days into a single date column.
		
		.. deprecated:: 1.2
	**/
	static public function parse_date_fields(year_col:Dynamic, month_col:Dynamic, day_col:Dynamic):Dynamic;
	/**
		Parse columns with dates and times into a single datetime column.
		
		.. deprecated:: 1.2
	**/
	static public function parse_date_time(date_col:Dynamic, time_col:Dynamic):Dynamic;
}