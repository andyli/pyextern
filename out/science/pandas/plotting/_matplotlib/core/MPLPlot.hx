/* This file is generated, do not edit! */
package pandas.plotting._matplotlib.core;
@:pythonImport("pandas.plotting._matplotlib.core", "MPLPlot") extern class MPLPlot {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(data:Dynamic, ?kind:Dynamic, ?by:Dynamic, ?subplots:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?use_index:Dynamic, ?figsize:Dynamic, ?grid:Dynamic, ?legend:Dynamic, ?rot:Dynamic, ?ax:Dynamic, ?fig:Dynamic, ?title:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?xticks:Dynamic, ?yticks:Dynamic, ?xlabel:Dynamic, ?ylabel:Dynamic, ?sort_columns:Dynamic, ?fontsize:Dynamic, ?secondary_y:Dynamic, ?colormap:Dynamic, ?table:Dynamic, ?layout:Dynamic, ?include_bool:Dynamic, ?column:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, ?kind:Dynamic, ?by:Dynamic, ?subplots:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?use_index:Dynamic, ?figsize:Dynamic, ?grid:Dynamic, ?legend:Dynamic, ?rot:Dynamic, ?ax:Dynamic, ?fig:Dynamic, ?title:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?xticks:Dynamic, ?yticks:Dynamic, ?xlabel:Dynamic, ?ylabel:Dynamic, ?sort_columns:Dynamic, ?fontsize:Dynamic, ?secondary_y:Dynamic, ?colormap:Dynamic, ?table:Dynamic, ?layout:Dynamic, ?include_bool:Dynamic, ?column:Dynamic, ?kwds:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add_table():Dynamic;
	/**
		Common post process unrelated to data
	**/
	public function _adorn_subplots():Dynamic;
	/**
		Append current handle and label to ``legend_handles`` and ``legend_labels``.
		
		These will be used to make the legend.
	**/
	public function _append_legend_handles_labels(handle:Dynamic, label:Dynamic):Dynamic;
	/**
		Tick creation within matplotlib is reasonably expensive and is
		internally deferred until accessed as Ticks are created/destroyed
		multiple times per draw. It's therefore beneficial for us to avoid
		accessing unless we will act on the Tick.
	**/
	public function _apply_axis_properties(axis:Dynamic, ?rot:Dynamic, ?fontsize:Dynamic):Dynamic;
	/**
		Manage style and color based on column number and its label.
		Returns tuple of appropriate style and kwds which "color" may be added.
	**/
	public function _apply_style_colors(colors:Dynamic, kwds:Dynamic, col_num:Dynamic, label:Dynamic):Dynamic;
	public function _args_adjust():Dynamic;
	public function _compute_plot_data():Dynamic;
	public function _convert_to_ndarray(data:Dynamic):Dynamic;
	static public var _default_rot : Dynamic;
	public function _get_ax(i:Dynamic):Dynamic;
	/**
		get left (primary) or right (secondary) axes
	**/
	static public function _get_ax_layer(ax:Dynamic, ?primary:Dynamic):Dynamic;
	/**
		Take in axes and return ax and legend under different scenarios
	**/
	public function _get_ax_legend(ax:Dynamic):Dynamic;
	public function _get_axes_layout():Dynamic;
	public function _get_colors(?num_colors:Dynamic, ?color_kwds:Dynamic):Dynamic;
	public function _get_errorbars(?label:Dynamic, ?index:Dynamic, ?xerr:Dynamic, ?yerr:Dynamic):Dynamic;
	public function _get_index_name():Dynamic;
	public function _get_subplots():Dynamic;
	public function _get_xticks(?convert_period:Dynamic):Dynamic;
	/**
		check whether ax has data
	**/
	public function _has_plotted_object(ax:Dynamic):Dynamic;
	public function _iter_data(?data:Dynamic, ?keep_index:Dynamic, ?fillna:Dynamic):Dynamic;
	/**
		Specify kind str. Must be overridden in child class
	**/
	public var _kind : Dynamic;
	static public var _layout_type : Dynamic;
	public function _make_legend():Dynamic;
	public function _make_plot():Dynamic;
	/**
		Append ``(right)`` to the label of a line if it's plotted on the right axis.
		
		Note that ``(right)`` is only appended when ``subplots=False``.
	**/
	public function _mark_right_label(label:Dynamic, index:Dynamic):Dynamic;
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
		
		Asymmetrical error bars are also supported, however raw error values
		must be provided in this case. For a ``N`` length :class:`Series`, a
		``2xN`` array should be provided indicating lower and upper (or left
		and right) errors. For a ``MxN`` :class:`DataFrame`, asymmetrical errors
		should be in a ``Mx2xN`` array.
	**/
	public function _parse_errorbars(label:Dynamic, err:Dynamic):Dynamic;
	static public function _plot(ax:Dynamic, x:Dynamic, y:Dynamic, ?style:Dynamic, ?is_errorbar:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Post process for each axes. Overridden in child classes
	**/
	public function _post_plot_logic(ax:Dynamic, data:Dynamic):Dynamic;
	/**
		Common post process for each axes
	**/
	public function _post_plot_logic_common(ax:Dynamic, data:Dynamic):Dynamic;
	public function _setup_subplots():Dynamic;
	public function _validate_color_args():Dynamic;
	public function draw():Dynamic;
	public function generate():Dynamic;
	static public function get_default_ax(ax:Dynamic):Dynamic;
	public var legend_title : Dynamic;
	public var nseries : Dynamic;
	public function on_right(i:Dynamic):Dynamic;
	static public var orientation : Dynamic;
	public var plt : Dynamic;
	/**
		Return result axes
	**/
	public var result : Dynamic;
}