/* This file is generated, do not edit! */
package matplotlib.gridspec;
@:pythonImport("matplotlib.gridspec", "GridSpec") extern class GridSpec {
	static public var _AllowedKeys : Dynamic;
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
		create and return a SuplotSpec instance.
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
		The number of rows and number of columns of the
		grid need to be set. Optionally, the subplot layout parameters
		(e.g., left, right, etc.) can be tuned.
	**/
	@:native("__init__")
	public function ___init__(nrows:Dynamic, ncols:Dynamic, ?left:Dynamic, ?bottom:Dynamic, ?right:Dynamic, ?top:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic, ?width_ratios:Dynamic, ?height_ratios:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	/**
		get the geometry of the grid, e.g., 2,3
	**/
	public function get_geometry():Dynamic;
	/**
		return lists of bottom and top position of rows, left and
		right positions of columns.
	**/
	public function get_grid_positions(fig:Dynamic):Dynamic;
	public function get_height_ratios():Dynamic;
	/**
		return a dictionary of subplot layout parameters. The default
		parameters are from rcParams unless a figure attribute is set.
	**/
	public function get_subplot_params(?fig:Dynamic):Dynamic;
	public function get_width_ratios():Dynamic;
	public function locally_modified_subplot_params():Dynamic;
	/**
		create and return a SuplotSpec instance.
	**/
	public function new_subplotspec(loc:Dynamic, ?rowspan:Dynamic, ?colspan:Dynamic):Dynamic;
	public function set_height_ratios(height_ratios:Dynamic):Dynamic;
	public function set_width_ratios(width_ratios:Dynamic):Dynamic;
	/**
		Adjust subplot parameters to give specified padding.
		
		Parameters:
		
		pad : float
		    padding between the figure edge and the edges of subplots, as a fraction of the font-size.
		h_pad, w_pad : float
		    padding (height/width) between edges of adjacent subplots.
		    Defaults to `pad_inches`.
		rect : if rect is given, it is interpreted as a rectangle
		    (left, bottom, right, top) in the normalized figure
		    coordinate that the whole subplots area (including
		    labels) will fit into. Default is (0, 0, 1, 1).
	**/
	public function tight_layout(fig:Dynamic, ?renderer:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	/**
		Update the current values.  If any kwarg is None, default to
		the current value, if set, otherwise to rc.
	**/
	public function update(kwargs:Dynamic):Dynamic;
}