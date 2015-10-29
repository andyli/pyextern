/* This file is generated, do not edit! */
package pandas.io.tests.test_parsers;
@:pythonImport("pandas.io.tests.test_parsers", "ParserTests") extern class ParserTests {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	static public var data1 : Dynamic;
	public function read_csv(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function read_table(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function setUp():Dynamic;
	public function test_1000_sep():Dynamic;
	public function test_1000_sep_with_decimal():Dynamic;
	public function test_bool_na_values():Dynamic;
	public function test_catch_too_many_names():Dynamic;
	public function test_chunk_begins_with_newline_whitespace():Dynamic;
	public function test_chunks_have_consistent_numerical_type():Dynamic;
	public function test_comment():Dynamic;
	public function test_comment_header():Dynamic;
	public function test_comment_skiprows():Dynamic;
	public function test_comment_skiprows_header():Dynamic;
	public function test_converter_index_col_bug():Dynamic;
	public function test_converter_return_string_bug():Dynamic;
	public function test_converters():Dynamic;
	public function test_converters_corner_with_nas():Dynamic;
	public function test_converters_euro_decimal_format():Dynamic;
	public function test_converters_no_implicit_conv():Dynamic;
	public function test_converters_type_must_be_dict():Dynamic;
	public function test_csv_custom_parser():Dynamic;
	public function test_csv_mixed_type():Dynamic;
	public function test_custom_na_values():Dynamic;
	public function test_date_parser_int_bug():Dynamic;
	public function test_deep_skiprows():Dynamic;
	public function test_default_na_values():Dynamic;
	public function test_detect_string_na():Dynamic;
	public function test_dialect():Dynamic;
	public function test_dialect_str():Dynamic;
	public function test_duplicate_columns():Dynamic;
	public function test_empty_decimal_marker():Dynamic;
	public function test_empty_index_col_scenarios():Dynamic;
	public function test_empty_string():Dynamic;
	public function test_empty_thousands_marker():Dynamic;
	public function test_empty_with_index():Dynamic;
	public function test_empty_with_index_col_false():Dynamic;
	public function test_empty_with_nrows_chunksize():Dynamic;
	public function test_empty_with_reversed_multiindex():Dynamic;
	public function test_emtpy_with_multiindex():Dynamic;
	public function test_eof_states():Dynamic;
	public function test_escapechar():Dynamic;
	public function test_file():Dynamic;
	public function test_float_parser():Dynamic;
	public function test_get_chunk_passed_chunksize():Dynamic;
	public function test_header_multi_index():Dynamic;
	public function test_header_multiindex_common_format():Dynamic;
	public function test_header_names_backward_compat():Dynamic;
	public function test_header_not_first_line():Dynamic;
	public function test_header_with_index_col():Dynamic;
	public function test_ignore_leading_whitespace():Dynamic;
	public function test_index_col_is_True():Dynamic;
	public function test_index_col_named():Dynamic;
	public function test_inf_parsing():Dynamic;
	public function test_infer_index_col():Dynamic;
	public function test_int64_min_issues():Dynamic;
	public function test_int64_overflow():Dynamic;
	public function test_int_conversion():Dynamic;
	public function test_integer_overflow_bug():Dynamic;
	public function test_iterator():Dynamic;
	public function test_line_comment():Dynamic;
	public function test_malformed():Dynamic;
	public function test_missing_trailing_delimiters():Dynamic;
	public function test_multi_character_decimal_marker():Dynamic;
	public function test_multi_index_no_level_names():Dynamic;
	public function test_multi_index_parse_dates():Dynamic;
	public function test_multiple_date_col():Dynamic;
	public function test_multiple_date_col_multiple_index():Dynamic;
	public function test_multiple_date_col_name_collision():Dynamic;
	public function test_multiple_date_col_named_components():Dynamic;
	public function test_multiple_date_col_timestamp_parse():Dynamic;
	public function test_multiple_date_cols_chunked():Dynamic;
	public function test_multiple_date_cols_index():Dynamic;
	public function test_multiple_date_cols_int_cast():Dynamic;
	public function test_multiple_date_cols_with_header():Dynamic;
	public function test_multiple_skts_example():Dynamic;
	public function test_na_value_dict():Dynamic;
	public function test_nat_parse():Dynamic;
	public function test_no_header():Dynamic;
	public function test_no_header_prefix():Dynamic;
	public function test_no_unnamed_index():Dynamic;
	public function test_non_string_na_values():Dynamic;
	public function test_nonexistent_path():Dynamic;
	public function test_nrows_and_chunksize_raises_notimplemented():Dynamic;
	public function test_parse_bools():Dynamic;
	public function test_parse_dates_column_list():Dynamic;
	public function test_parse_dates_custom_euroformat():Dynamic;
	public function test_parse_dates_implicit_first_col():Dynamic;
	public function test_parse_dates_string():Dynamic;
	public function test_parse_integers_above_fp_precision():Dynamic;
	public function test_parse_tz_aware():Dynamic;
	public function test_pass_names_with_index():Dynamic;
	public function test_passing_dtype():Dynamic;
	public function test_read_chunksize():Dynamic;
	public function test_read_chunksize_named():Dynamic;
	public function test_read_csv():Dynamic;
	public function test_read_csv_dataframe():Dynamic;
	public function test_read_csv_infer_compression():Dynamic;
	public function test_read_csv_no_index_name():Dynamic;
	public function test_read_csv_parse_simple_list():Dynamic;
	public function test_read_nrows():Dynamic;
	public function test_read_table_buglet_4x_multiindex():Dynamic;
	public function test_read_table_duplicate_index():Dynamic;
	public function test_read_table_duplicate_index_implicit():Dynamic;
	public function test_read_table_unicode():Dynamic;
	public function test_read_table_wrong_num_columns():Dynamic;
	public function test_read_text_list():Dynamic;
	public function test_separator_date_conflict():Dynamic;
	public function test_single_char_leading_whitespace():Dynamic;
	public function test_single_line():Dynamic;
	public function test_skip_footer():Dynamic;
	public function test_skipinitialspace():Dynamic;
	public function test_skiprows_blank():Dynamic;
	public function test_skiprows_bug():Dynamic;
	public function test_squeeze():Dynamic;
	public function test_squeeze_no_view():Dynamic;
	public function test_string_nas():Dynamic;
	public function test_trailing_delimiters():Dynamic;
	public function test_unicode_encoding():Dynamic;
	public function test_unnamed_columns():Dynamic;
	public function test_url():Dynamic;
	public function test_usecols():Dynamic;
	public function test_usecols_index_col_False():Dynamic;
	public function test_usecols_index_col_conflict():Dynamic;
	public function test_utf16_bom_skiprows():Dynamic;
	public function test_utf16_example():Dynamic;
	public function test_warn_if_chunks_have_mismatched_type():Dynamic;
	public function test_yy_format():Dynamic;
	static public var ts_data : Dynamic;
}