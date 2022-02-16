/* This file is generated, do not edit! */
package pandas.core.config_init;
@:pythonImport("pandas.core.config_init") extern class Config_init_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _deprecate_negative_int_max_colwidth(key:Dynamic):Dynamic;
	static public var _ods_options : Dynamic;
	static public var _xls_options : Dynamic;
	static public var _xlsb_options : Dynamic;
	static public var _xlsm_options : Dynamic;
	static public var _xlsx_options : Dynamic;
	static public var chained_assignment : Dynamic;
	static public var colheader_justify_doc : Dynamic;
	static public var data_manager_doc : Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	static public var float_format_doc : Dynamic;
	static public function is_bool(x:Dynamic):Dynamic;
	/**
		Parameters
		----------
		`obj` - the object to be checked
		
		Returns
		-------
		validator - returns True if object is callable
		    raises ValueError otherwise.
	**/
	static public function is_callable(obj:Dynamic):Dynamic;
	/**
		Parameters
		----------
		`_type` - the type to be checked against
		
		Returns
		-------
		validator - a function of a single argument x , which raises
		            ValueError if x is not an instance of `_type`
	**/
	static public function is_instance_factory(_type:Dynamic):Dynamic;
	static public function is_int(x:Dynamic):Dynamic;
	/**
		Verify that value is None or a positive int.
		
		Parameters
		----------
		value : None or int
		        The `value` to be checked.
		
		Raises
		------
		ValueError
		    When the value is not None or is a negative integer
	**/
	static public function is_nonnegative_int(value:Dynamic):Dynamic;
	static public function is_one_of_factory(legal_values:Dynamic):Dynamic;
	static public function is_str(x:Dynamic):Dynamic;
	/**
		Detect if Python is running in a terminal.
		
		Returns True if Python is running in a terminal or False if not.
	**/
	static public function is_terminal():Dynamic;
	static public function is_text(x:Dynamic):Dynamic;
	static public var max_cols : Dynamic;
	static public var max_colwidth_doc : Dynamic;
	static public var parquet_engine_doc : Dynamic;
	static public var pc_ambiguous_as_wide_doc : Dynamic;
	static public var pc_chop_threshold_doc : Dynamic;
	static public var pc_colspace_doc : Dynamic;
	static public var pc_east_asian_width_doc : Dynamic;
	static public var pc_expand_repr_doc : Dynamic;
	static public var pc_html_border_doc : Dynamic;
	static public var pc_html_use_mathjax_doc : Dynamic;
	static public var pc_large_repr_doc : Dynamic;
	static public var pc_latex_escape : Dynamic;
	static public var pc_latex_longtable : Dynamic;
	static public var pc_latex_multicolumn : Dynamic;
	static public var pc_latex_multicolumn_format : Dynamic;
	static public var pc_latex_multirow : Dynamic;
	static public var pc_latex_repr_doc : Dynamic;
	static public var pc_max_categories_doc : Dynamic;
	static public var pc_max_cols_doc : Dynamic;
	static public var pc_max_dir_items : Dynamic;
	static public var pc_max_info_cols_doc : Dynamic;
	static public var pc_max_info_rows_doc : Dynamic;
	static public var pc_max_rows_doc : Dynamic;
	static public var pc_max_seq_items : Dynamic;
	static public var pc_memory_usage_doc : Dynamic;
	static public var pc_min_rows_doc : Dynamic;
	static public var pc_multi_sparse_doc : Dynamic;
	static public var pc_nb_repr_h_doc : Dynamic;
	static public var pc_pprint_nest_depth : Dynamic;
	static public var pc_precision_doc : Dynamic;
	static public var pc_show_dimensions_doc : Dynamic;
	static public var pc_table_schema_doc : Dynamic;
	static public var pc_width_doc : Dynamic;
	static public var plotting_backend_doc : Dynamic;
	static public var reader_engine_doc : Dynamic;
	static public function register_converter_cb(key:Dynamic):Dynamic;
	static public var register_converter_doc : Dynamic;
	static public function register_plotting_backend_cb(key:Dynamic):Dynamic;
	static public var sql_engine_doc : Dynamic;
	static public var string_storage_doc : Dynamic;
	static public var styler_decimal : Dynamic;
	static public var styler_encoding : Dynamic;
	static public var styler_environment : Dynamic;
	static public var styler_escape : Dynamic;
	static public var styler_formatter : Dynamic;
	static public var styler_hrules : Dynamic;
	static public var styler_mathjax : Dynamic;
	static public var styler_max_columns : Dynamic;
	static public var styler_max_elements : Dynamic;
	static public var styler_max_rows : Dynamic;
	static public var styler_multicol_align : Dynamic;
	static public var styler_multirow_align : Dynamic;
	static public var styler_na_rep : Dynamic;
	static public var styler_precision : Dynamic;
	static public var styler_render_repr : Dynamic;
	static public var styler_sparse_columns_doc : Dynamic;
	static public var styler_sparse_index_doc : Dynamic;
	static public var styler_thousands : Dynamic;
	static public function table_schema_cb(key:Dynamic):Dynamic;
	static public var tc_sim_interactive_doc : Dynamic;
	static public function use_bottleneck_cb(key:Dynamic):Dynamic;
	static public var use_bottleneck_doc : Dynamic;
	static public function use_inf_as_na_cb(key:Dynamic):Dynamic;
	static public var use_inf_as_na_doc : Dynamic;
	static public var use_inf_as_null_doc : Dynamic;
	static public function use_numba_cb(key:Dynamic):Dynamic;
	static public var use_numba_doc : Dynamic;
	static public function use_numexpr_cb(key:Dynamic):Dynamic;
	static public var use_numexpr_doc : Dynamic;
	static public var val_mca : Dynamic;
	static public var writer_engine_doc : Dynamic;
}