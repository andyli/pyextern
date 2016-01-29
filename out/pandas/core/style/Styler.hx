/* This file is generated, do not edit! */
package pandas.core.style;
@:pythonImport("pandas.core.style", "Styler") extern class Styler {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Deep copy by default.
	**/
	public function __copy__():Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
	public function ___init__(data:Dynamic, ?precision:Dynamic, ?table_styles:Dynamic, ?uuid:Dynamic, ?caption:Dynamic, ?table_attributes:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic, ?precision:Dynamic, ?table_styles:Dynamic, ?uuid:Dynamic, ?caption:Dynamic, ?table_attributes:Dynamic):Void;
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
	public var __weakref__ : Dynamic;
	public function _apply(func:Dynamic, ?axis:Dynamic, ?subset:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _applymap(func:Dynamic, ?subset:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Color background in a range according to the data.
	**/
	static public function _background_gradient(s:Dynamic, ?cmap:Dynamic, ?low:Dynamic, ?high:Dynamic):Dynamic;
	static public function _bar(s:Dynamic, color:Dynamic, width:Dynamic):Dynamic;
	/**
		Execute the style functions built up in `self._todo`.
		
		Relies on the conventions that all style functions go through
		.apply or .applymap. The append styles to apply as tuples of
		
		(application method, *args, **kwargs)
	**/
	public function _compute():Dynamic;
	public function _copy(?deepcopy:Dynamic):Dynamic;
	/**
		highlight the min or max in a Series or DataFrame
	**/
	static public function _highlight_extrema(data:Dynamic, ?color:Dynamic, ?max_:Dynamic):Dynamic;
	public function _highlight_handler(?subset:Dynamic, ?color:Dynamic, ?axis:Dynamic, ?max_:Dynamic):Dynamic;
	static public function _highlight_null(v:Dynamic, null_color:Dynamic):Dynamic;
	/**
		Hooks into Jupyter notebook rich display system.
	**/
	public function _repr_html_():Dynamic;
	/**
		Convert the DataFrame in `self.data` and the attrs from `_build_styles`
		into a dictionary of {head, body, uuid, cellstyle}
	**/
	public function _translate():Dynamic;
	/**
		update the state of the Styler. Collects a mapping
		of {index_label: ['<property>: <value>']}
		
		attrs: Series or DataFrame
		should contain strings of '<property>: <value>;<prop2>: <val2>'
		Whitespace shouldn't matter and the final trailing ';' shouldn't
		matter.
	**/
	public function _update_ctx(attrs:Dynamic):Dynamic;
	/**
		Apply a function column-wise, row-wise, or table-wase,
		updating the HTML representation with the result.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		func: function
		axis: int, str or None
		    apply to each column (``axis=0`` or ``'index'``)
		    or to each row (``axis=1`` or ``'columns'``) or
		    to the entire DataFrame at once with ``axis=None``.
		subset: IndexSlice
		    a valid indexer to limit ``data`` to *before* applying the
		    function. Consider using a pandas.IndexSlice
		kwargs: dict
		    pass along to ``func``
		
		Returns
		-------
		self
		
		Notes
		-----
		This is similar to ``DataFrame.apply``, except that ``axis=None``
		applies the function to the entire DataFrame at once,
		rather than column-wise or row-wise.
	**/
	public function apply(func:Dynamic, ?axis:Dynamic, ?subset:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply a function elementwise, updating the HTML
		representation with the result.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		func : function
		subset : IndexSlice
		    a valid indexer to limit ``data`` to *before* applying the
		    function. Consider using a pandas.IndexSlice
		kwargs : dict
		    pass along to ``func``
		
		Returns
		-------
		self
	**/
	public function applymap(func:Dynamic, ?subset:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Color the background in a gradient according to
		the data in each column (optionally row).
		Requires matplotlib.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		cmap: str or colormap
		    matplotlib colormap
		low, high: float
		    compress the range by these values.
		axis: int or str
		    1 or 'columns' for colunwise, 0 or 'index' for rowwise
		subset: IndexSlice
		    a valid slice for ``data`` to limit the style application to
		
		Returns
		-------
		self
		
		Notes
		-----
		Tune ``low`` and ``high`` to keep the text legible by
		not using the entire range of the color map. These extend
		the range of the data by ``low * (x.max() - x.min())``
		and ``high * (x.max() - x.min())`` before normalizing.
	**/
	public function background_gradient(?cmap:Dynamic, ?low:Dynamic, ?high:Dynamic, ?axis:Dynamic, ?subset:Dynamic):Dynamic;
	/**
		Color the background ``color`` proptional to the values in each column.
		Excludes non-numeric data by default.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		subset: IndexSlice, default None
		    a valid slice for ``data`` to limit the style application to
		axis: int
		color: str
		width: float
		    A number between 0 or 100. The largest value will cover ``width``
		    percent of the cell's width
		
		Returns
		-------
		self
	**/
	public function bar(?subset:Dynamic, ?axis:Dynamic, ?color:Dynamic, ?width:Dynamic):Dynamic;
	/**
		"Reset" the styler, removing any previously applied styles.
		Returns None.
	**/
	public function clear():Dynamic;
	/**
		Export the styles to applied to the current Styler.
		Can be applied to a second style with ``Styler.use``.
		
		.. versionadded:: 0.17.1
		
		Returns
		-------
		styles: list
		
		See Also
		--------
		Styler.use
	**/
	public function export():Dynamic;
	/**
		Highlight the maximum by shading the background
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		subset: IndexSlice, default None
		    a valid slice for ``data`` to limit the style application to
		color: str, default 'yellow'
		axis: int, str, or None; default None
		    0 or 'index' for columnwise, 1 or 'columns' for rowwise
		    or ``None`` for tablewise (the default)
		
		Returns
		-------
		self
	**/
	public function highlight_max(?subset:Dynamic, ?color:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Highlight the minimum by shading the background
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		subset: IndexSlice, default None
		    a valid slice for ``data`` to limit the style application to
		color: str, default 'yellow'
		axis: int, str, or None; default None
		    0 or 'index' for columnwise, 1 or 'columns' for rowwise
		    or ``None`` for tablewise (the default)
		
		Returns
		-------
		self
	**/
	public function highlight_min(?subset:Dynamic, ?color:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Shade the background ``null_color`` for missing values.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		null_color: str
		
		Returns
		-------
		self
	**/
	public function highlight_null(?null_color:Dynamic):Dynamic;
	/**
		Render the built up styles to HTML
		
		.. versionadded:: 0.17.1
		
		Returns
		-------
		rendered: str
		    the rendered HTML
		
		Notes
		-----
		``Styler`` objects have defined the ``_repr_html_`` method
		which automatically calls ``self.render()`` when it's the
		last item in a Notebook cell. When calling ``Styler.render()``
		directly, wrap the resul in ``IPython.display.HTML`` to view
		the rendered HTML in the notebook.
	**/
	public function render():Dynamic;
	/**
		Se the caption on a Styler
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		caption: str
		
		Returns
		-------
		self
	**/
	public function set_caption(caption:Dynamic):Dynamic;
	/**
		Set the precision used to render.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		precision: int
		
		Returns
		-------
		self
	**/
	public function set_precision(precision:Dynamic):Dynamic;
	/**
		Convience method for setting one or more non-data dependent
		properties or each cell.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		subset: IndexSlice
		    a valid slice for ``data`` to limit the style application to
		kwargs: dict
		    property: value pairs to be set for each cell
		
		Returns
		-------
		self : Styler
		
		Examples
		--------
		>>> df = pd.DataFrame(np.random.randn(10, 4))
		>>> df.style.set_properties(color="white", align="right")
	**/
	public function set_properties(?subset:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the table attributes. These are the items
		that show up in the opening ``<table>`` tag in addition
		to to automatic (by default) id.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		precision: int
		
		Returns
		-------
		self
	**/
	public function set_table_attributes(attributes:Dynamic):Dynamic;
	/**
		Set the table styles on a Styler
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		table_styles: list
		
		Returns
		-------
		self
	**/
	public function set_table_styles(table_styles:Dynamic):Dynamic;
	/**
		Set the uuid for a Styler.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		uuid: str
		
		Returns
		-------
		self
	**/
	public function set_uuid(uuid:Dynamic):Dynamic;
	static public var template : Dynamic;
	/**
		Set the styles on the current Styler, possibly using styles
		from ``Styler.export``.
		
		.. versionadded:: 0.17.1
		
		Parameters
		----------
		styles: list
		    list of style functions
		
		Returns
		-------
		self
		
		See Also
		--------
		Styler.export
	**/
	public function use(styles:Dynamic):Dynamic;
}