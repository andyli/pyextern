/* This file is generated, do not edit! */
package matplotlib.gridspec;
@:pythonImport("matplotlib.gridspec", "GridSpec") extern class GridSpec {
	static public var _AllowedKeys : Dynamic;
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
		Create and return a `.SubplotSpec` instance.
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Parameters
		----------
		nrows, ncols : int
		    The number of rows and columns of the grid.
		
		figure : `~.figure.Figure`, optional
		    Only used for constrained layout to create a proper layoutgrid.
		
		left, right, top, bottom : float, optional
		    Extent of the subplots as a fraction of figure width or height.
		    Left cannot be larger than right, and bottom cannot be larger than
		    top. If not given, the values will be inferred from a figure or
		    rcParams at draw time. See also `GridSpec.get_subplot_params`.
		
		wspace : float, optional
		    The amount of width reserved for space between subplots,
		    expressed as a fraction of the average axis width.
		    If not given, the values will be inferred from a figure or
		    rcParams when necessary. See also `GridSpec.get_subplot_params`.
		
		hspace : float, optional
		    The amount of height reserved for space between subplots,
		    expressed as a fraction of the average axis height.
		    If not given, the values will be inferred from a figure or
		    rcParams when necessary. See also `GridSpec.get_subplot_params`.
		
		width_ratios : array-like of length *ncols*, optional
		    Defines the relative widths of the columns. Each column gets a
		    relative width of ``width_ratios[i] / sum(width_ratios)``.
		    If not given, all columns will have the same width.
		
		height_ratios : array-like of length *nrows*, optional
		    Defines the relative heights of the rows. Each row gets a
		    relative height of ``height_ratios[i] / sum(height_ratios)``.
		    If not given, all rows will have the same height.
	**/
	@:native("__init__")
	public function ___init__(nrows:Dynamic, ncols:Dynamic, ?figure:Dynamic, ?left:Dynamic, ?bottom:Dynamic, ?right:Dynamic, ?top:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic, ?width_ratios:Dynamic, ?height_ratios:Dynamic):Dynamic;
	/**
		Parameters
		----------
		nrows, ncols : int
		    The number of rows and columns of the grid.
		
		figure : `~.figure.Figure`, optional
		    Only used for constrained layout to create a proper layoutgrid.
		
		left, right, top, bottom : float, optional
		    Extent of the subplots as a fraction of figure width or height.
		    Left cannot be larger than right, and bottom cannot be larger than
		    top. If not given, the values will be inferred from a figure or
		    rcParams at draw time. See also `GridSpec.get_subplot_params`.
		
		wspace : float, optional
		    The amount of width reserved for space between subplots,
		    expressed as a fraction of the average axis width.
		    If not given, the values will be inferred from a figure or
		    rcParams when necessary. See also `GridSpec.get_subplot_params`.
		
		hspace : float, optional
		    The amount of height reserved for space between subplots,
		    expressed as a fraction of the average axis height.
		    If not given, the values will be inferred from a figure or
		    rcParams when necessary. See also `GridSpec.get_subplot_params`.
		
		width_ratios : array-like of length *ncols*, optional
		    Defines the relative widths of the columns. Each column gets a
		    relative width of ``width_ratios[i] / sum(width_ratios)``.
		    If not given, all columns will have the same width.
		
		height_ratios : array-like of length *nrows*, optional
		    Defines the relative heights of the rows. Each row gets a
		    relative height of ``height_ratios[i] / sum(height_ratios)``.
		    If not given, all rows will have the same height.
	**/
	public function new(nrows:Dynamic, ncols:Dynamic, ?figure:Dynamic, ?left:Dynamic, ?bottom:Dynamic, ?right:Dynamic, ?top:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic, ?width_ratios:Dynamic, ?height_ratios:Dynamic):Void;
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
	/**
		Check if the figure already has a gridspec with these dimensions,
		or create a new one
	**/
	static public function _check_gridspec_exists(figure:Dynamic, nrows:Dynamic, ncols:Dynamic):Dynamic;
	/**
		Return a tuple containing the number of rows and columns in the grid.
	**/
	public function get_geometry():Dynamic;
	/**
		Return the positions of the grid cells in figure coordinates.
		
		Parameters
		----------
		fig : `~matplotlib.figure.Figure`
		    The figure the grid should be applied to. The subplot parameters
		    (margins and spacing between subplots) are taken from *fig*.
		raw : bool, default: False
		    If *True*, the subplot parameters of the figure are not taken
		    into account. The grid spans the range [0, 1] in both directions
		    without margins and there is no space between grid cells. This is
		    used for constrained_layout.
		
		Returns
		-------
		bottoms, tops, lefts, rights : array
		    The bottom, top, left, right positions of the grid cells in
		    figure coordinates.
	**/
	public function get_grid_positions(fig:Dynamic, ?raw:Dynamic):Array<Dynamic>;
	/**
		Return the height ratios.
		
		This is *None* if no height ratios have been set explicitly.
	**/
	public function get_height_ratios():Dynamic;
	/**
		Return the `.SubplotParams` for the GridSpec.
		
		In order of precedence the values are taken from
		
		- non-*None* attributes of the GridSpec
		- the provided *figure*
		- :rc:`figure.subplot.*`
	**/
	public function get_subplot_params(?figure:Dynamic):Dynamic;
	/**
		Return the width ratios.
		
		This is *None* if no width ratios have been set explicitly.
	**/
	public function get_width_ratios():Dynamic;
	/**
		Return a list of the names of the subplot parameters explicitly set
		in the GridSpec.
		
		This is a subset of the attributes of `.SubplotParams`.
	**/
	public function locally_modified_subplot_params():Dynamic;
	/**
		The number of columns in the grid.
	**/
	public var ncols : Dynamic;
	/**
		Create and return a `.SubplotSpec` instance.
		
		Parameters
		----------
		loc : (int, int)
		    The position of the subplot in the grid as
		    ``(row_index, column_index)``.
		rowspan, colspan : int, default: 1
		    The number of rows and columns the subplot should span in the grid.
	**/
	public function new_subplotspec(loc:Dynamic, ?rowspan:Dynamic, ?colspan:Dynamic):Dynamic;
	/**
		The number of rows in the grid.
	**/
	public var nrows : Dynamic;
	/**
		Set the relative heights of the rows.
		
		*height_ratios* must be of length *nrows*. Each row gets a relative
		height of ``height_ratios[i] / sum(height_ratios)``.
	**/
	public function set_height_ratios(height_ratios:Dynamic):Dynamic;
	/**
		Set the relative widths of the columns.
		
		*width_ratios* must be of length *ncols*. Each column gets a relative
		width of ``width_ratios[i] / sum(width_ratios)``.
	**/
	public function set_width_ratios(width_ratios:Dynamic):Dynamic;
	/**
		Add all subplots specified by this `GridSpec` to its parent figure.
		
		See `.Figure.subplots` for detailed documentation.
	**/
	public function subplots(?sharex:Dynamic, ?sharey:Dynamic, ?squeeze:Dynamic, ?subplot_kw:Dynamic):Dynamic;
	/**
		Adjust subplot parameters to give specified padding.
		
		Parameters
		----------
		pad : float
		    Padding between the figure edge and the edges of subplots, as a
		    fraction of the font-size.
		h_pad, w_pad : float, optional
		    Padding (height/width) between edges of adjacent subplots.
		    Defaults to *pad*.
		rect : tuple of 4 floats, default: (0, 0, 1, 1), i.e. the whole figure
		    (left, bottom, right, top) rectangle in normalized figure
		    coordinates that the whole subplots area (including labels) will
		    fit into.
	**/
	public function tight_layout(figure:Dynamic, ?renderer:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	/**
		Update the subplot parameters of the grid.
		
		Parameters that are not explicitly given are not changed. Setting a
		parameter to *None* resets it to :rc:`figure.subplot.*`.
		
		Parameters
		----------
		left, right, top, bottom : float or None, optional
		    Extent of the subplots as a fraction of figure width or height.
		wspace, hspace : float, optional
		    Spacing between the subplots as a fraction of the average subplot
		    width / height.
	**/
	public function update(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}