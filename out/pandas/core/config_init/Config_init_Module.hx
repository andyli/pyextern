/* This file is generated, do not edit! */
package pandas.core.config_init;
@:pythonImport("pandas.core.config_init") extern class Config_init_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _register_xlsx(engine:Dynamic, other:Dynamic):Dynamic;
	static public var chained_assignment : Dynamic;
	static public var colheader_justify_doc : Dynamic;
	@:native("default")
	static public var _default : Dynamic;
	/**
		Try to find the most capable encoding supported by the console.
		slighly modified from the way IPython handles the same issue.
	**/
	static public function detect_console_encoding():Dynamic;
	static public var doc : Dynamic;
	static public var ext : Dynamic;
	static public var float_format_doc : Dynamic;
	static public function get_default_val(pat:Dynamic):Dynamic;
	static public function is_bool(x:Dynamic):Dynamic;
	/**
		Parameters
		----------
		`_type` - the type to be checked against
		
		Returns
		-------
		validator - a function of a single argument x , which returns the
		            True if x is an instance of `_type`
	**/
	static public function is_instance_factory(_type:Dynamic):Dynamic;
	static public function is_int(x:Dynamic):Dynamic;
	static public function is_one_of_factory(legal_values:Dynamic):Dynamic;
	static public function is_text(x:Dynamic):Dynamic;
	static public var max_colwidth_doc : Dynamic;
	static public function mpl_style_cb(key:Dynamic):Dynamic;
	static public var options : Dynamic;
	static public var pc_ambiguous_as_wide_doc : Dynamic;
	static public var pc_chop_threshold_doc : Dynamic;
	static public var pc_colspace_doc : Dynamic;
	static public var pc_date_dayfirst_doc : Dynamic;
	static public var pc_date_yearfirst_doc : Dynamic;
	static public var pc_east_asian_width_doc : Dynamic;
	static public var pc_encoding_doc : Dynamic;
	static public var pc_expand_repr_doc : Dynamic;
	static public var pc_height_deprecation_warning : Dynamic;
	static public var pc_height_doc : Dynamic;
	static public var pc_large_repr_doc : Dynamic;
	static public var pc_latex_escape : Dynamic;
	static public var pc_latex_longtable : Dynamic;
	static public var pc_latex_repr_doc : Dynamic;
	static public var pc_line_width_deprecation_warning : Dynamic;
	static public var pc_line_width_doc : Dynamic;
	static public var pc_max_categories_doc : Dynamic;
	static public var pc_max_cols_doc : Dynamic;
	static public var pc_max_info_cols_doc : Dynamic;
	static public var pc_max_info_rows_doc : Dynamic;
	static public var pc_max_rows_doc : Dynamic;
	static public var pc_max_seq_items : Dynamic;
	static public var pc_memory_usage_doc : Dynamic;
	static public var pc_mpl_style_deprecation_warning : Dynamic;
	static public var pc_mpl_style_doc : Dynamic;
	static public var pc_multi_sparse_doc : Dynamic;
	static public var pc_nb_repr_h_doc : Dynamic;
	static public var pc_pprint_nest_depth : Dynamic;
	static public var pc_precision_doc : Dynamic;
	static public var pc_show_dimensions_doc : Dynamic;
	static public var pc_width_doc : Dynamic;
	static public var style_backup : Dynamic;
	static public var tc_sim_interactive_doc : Dynamic;
	static public function use_inf_as_null_cb(key:Dynamic):Dynamic;
	static public var use_inf_as_null_doc : Dynamic;
	static public var writer_engine_doc : Dynamic;
}