/* This file is generated, do not edit! */
package pandas.tools.plotting;
@:pythonImport("pandas.tools.plotting", "BoxPlot") extern class BoxPlot {
	/**
		Boxplot(ax, lines)
	**/
	static public function BP(ax:Dynamic, lines:Dynamic):Dynamic;
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
	public function __init__(data:Dynamic, ?return_type:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function _add_legend_handle(handle:Dynamic, label:Dynamic, ?index:Dynamic):Dynamic;
	public function _add_table():Dynamic;
	/**
		Common post process unrelated to data
	**/
	public function _adorn_subplots():Dynamic;
	public function _apply_axis_properties(axis:Dynamic, ?rot:Dynamic, ?fontsize:Dynamic):Dynamic;
	/**
		Manage style and color based on column number and its label.
		Returns tuple of appropriate style and kwds which "color" may be added.
	**/
	public function _apply_style_colors(colors:Dynamic, kwds:Dynamic, col_num:Dynamic, label:Dynamic):Dynamic;
	public function _args_adjust():Dynamic;
	static public var _attr_defaults : Dynamic;
	public function _compute_plot_data():Dynamic;
	static public var _default_rot : Dynamic;
	public function _get_ax(i:Dynamic):Dynamic;
	/**
		get left (primary) or right (secondary) axes
	**/
	static public function _get_ax_layer(ax:Dynamic, ?primary:Dynamic):Dynamic;
	public function _get_ax_legend(ax:Dynamic):Dynamic;
	public function _get_axes():Dynamic;
	public function _get_axes_layout():Dynamic;
	public function _get_colors(?num_colors:Dynamic, ?color_kwds:Dynamic):Dynamic;
	public function _get_errorbars(?label:Dynamic, ?index:Dynamic, ?xerr:Dynamic, ?yerr:Dynamic):Dynamic;
	public function _get_index_name():Dynamic;
	static public function _get_stacked_values(ax:Dynamic, stacking_id:Dynamic, values:Dynamic, label:Dynamic):Dynamic;
	public function _get_stacking_id():Dynamic;
	public function _get_xticks(?convert_period:Dynamic):Dynamic;
	/**
		check whether ax has data
	**/
	public function _has_plotted_object(ax:Dynamic):Dynamic;
	static public function _initialize_stacker(ax:Dynamic, stacking_id:Dynamic, n:Dynamic):Dynamic;
	public function _is_ts_plot():Dynamic;
	public function _iter_data(?data:Dynamic, ?keep_index:Dynamic, ?fillna:Dynamic):Dynamic;
	static public var _kind : Dynamic;
	static public var _layout_type : Dynamic;
	public function _make_legend():Dynamic;
	public function _make_plot():Dynamic;
	public function _maybe_right_yaxis(ax:Dynamic, axes_num:Dynamic):Dynamic;
	static public var _need_to_set_index : Dynamic;
	/**
		Look for error keyword arguments and return the actual errorbar data
		or return the error DataFrame/dict
		
		Error bars can be specified in several ways:
		    Series: the user provides a pandas.Series object of the same
		            length as the data
		    ndarray: provides a np.ndarray of the same length as the data
		    DataFrame/dict: error values are paired with keys matching the
		            key in the plotted DataFrame
		    str: the name of the column within the plotted DataFrame
	**/
	public function _parse_errorbars(label:Dynamic, err:Dynamic):Dynamic;
	static public function _plot(ax:Dynamic, y:Dynamic, ?column_num:Dynamic, ?return_type:Dynamic, kwds:Dynamic):Dynamic;
	static public var _pop_attributes : Dynamic;
	/**
		Post process for each axes. Overridden in child classes
	**/
	public function _post_plot_logic(ax:Dynamic, data:Dynamic):Dynamic;
	/**
		Common post process for each axes
	**/
	public function _post_plot_logic_common(ax:Dynamic, data:Dynamic):Dynamic;
	public function _set_ticklabels(ax:Dynamic, labels:Dynamic):Dynamic;
	public function _setup_subplots():Dynamic;
	static public function _ts_plot(ax:Dynamic, x:Dynamic, data:Dynamic, ?style:Dynamic, kwds:Dynamic):Dynamic;
	static public function _update_stacker(ax:Dynamic, stacking_id:Dynamic, values:Dynamic):Dynamic;
	public function _use_dynamic_x():Dynamic;
	static public var _valid_return_types : Dynamic;
	public function _validate_color_args():Dynamic;
	public function draw():Dynamic;
	public function generate():Dynamic;
	static public var legend_title : Dynamic;
	public function maybe_color_bp(bp:Dynamic):Dynamic;
	static public function mpl_ge_1_3_1():Dynamic;
	static public function mpl_ge_1_5_0():Dynamic;
	static public var nseries : Dynamic;
	public function on_right(i:Dynamic):Dynamic;
	static public var orientation : Dynamic;
	static public var plt : Dynamic;
	static public var result : Dynamic;
}