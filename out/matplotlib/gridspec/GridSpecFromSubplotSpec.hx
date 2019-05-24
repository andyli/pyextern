/* This file is generated, do not edit! */
package matplotlib.gridspec;
@:pythonImport("matplotlib.gridspec", "GridSpecFromSubplotSpec") extern class GridSpecFromSubplotSpec {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create and return a SubplotSpec instance.
		        
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
		The number of rows and number of columns of the grid need to
		be set. An instance of SubplotSpec is also needed to be set
		from which the layout parameters will be inherited. The wspace
		and hspace of the layout can be optionally specified or the
		default values (from the figure or rcParams) will be used.
	**/
	@:native("__init__")
	public function ___init__(nrows:Dynamic, ncols:Dynamic, subplot_spec:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic, ?height_ratios:Dynamic, ?width_ratios:Dynamic):Dynamic;
	/**
		The number of rows and number of columns of the grid need to
		be set. An instance of SubplotSpec is also needed to be set
		from which the layout parameters will be inherited. The wspace
		and hspace of the layout can be optionally specified or the
		default values (from the figure or rcParams) will be used.
	**/
	public function new(nrows:Dynamic, ncols:Dynamic, subplot_spec:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic, ?height_ratios:Dynamic, ?width_ratios:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		If raw=True, then these are all in units relative to the container
		with no margins.  (used for constrained_layout).
	**/
	public function get_grid_positions(fig:Dynamic, ?raw:Dynamic):Dynamic;
	public function get_height_ratios():Dynamic;
	/**
		Return a dictionary of subplot layout parameters.
		        
	**/
	public function get_subplot_params(?figure:Dynamic):Dynamic;
	/**
		Get the topmost SubplotSpec instance associated with the subplot.
	**/
	public function get_topmost_subplotspec():Dynamic;
	public function get_width_ratios():Dynamic;
	/**
		create and return a SubplotSpec instance.
	**/
	public function new_subplotspec(loc:Dynamic, ?rowspan:Dynamic, ?colspan:Dynamic):Dynamic;
	public function set_height_ratios(height_ratios:Dynamic):Dynamic;
	public function set_width_ratios(width_ratios:Dynamic):Dynamic;
}