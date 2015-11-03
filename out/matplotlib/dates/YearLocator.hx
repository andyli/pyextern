/* This file is generated, do not edit! */
package matplotlib.dates;
@:pythonImport("matplotlib.dates", "YearLocator") extern class YearLocator {
	static public var MAXTICKS : Dynamic;
	/**
		Return the locations of the ticks
	**/
	public function __call__():Dynamic;
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
		Mark years that are multiple of base on a given month and day
		(default jan 1).
	**/
	@:native("__init__")
	public function ___init__(?base:Dynamic, ?month:Dynamic, ?day:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Mark years that are multiple of base on a given month and day
		(default jan 1).
	**/
	public function new(?base:Dynamic, ?month:Dynamic, ?day:Dynamic, ?tz:Dynamic):Void;
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
	/**
		Return the number of units for each tick.
	**/
	public function _get_interval():Dynamic;
	/**
		Return how many days a unit of the locator is; used for
		intelligent autoscaling.
	**/
	public function _get_unit():Dynamic;
	/**
		Set the view limits to include the data range.
	**/
	public function autoscale():Dynamic;
	static public var axis : Dynamic;
	public function create_dummy_axis(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert axis data interval to datetime objects.
	**/
	public function datalim_to_dt():Dynamic;
	static public var hms0d : Dynamic;
	/**
		Given the proposed upper and lower extent, adjust the range
		if it is too close to being singular (i.e. a range of ~0).
	**/
	public function nonsingular(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Pan numticks (can be positive or negative)
	**/
	public function pan(numsteps:Dynamic):Dynamic;
	/**
		raise a RuntimeError if Locator attempts to create more than
		MAXTICKS locs
	**/
	public function raise_if_exceeds(locs:Dynamic):Dynamic;
	/**
		refresh internal information based on current lim
	**/
	public function refresh():Dynamic;
	public function set_axis(axis:Dynamic):Dynamic;
	public function set_bounds(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Do nothing, and rase a warning. Any locator class not supporting the
		set_params() function will call this.
	**/
	public function set_params(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set time zone info.
	**/
	public function set_tzinfo(tz:Dynamic):Dynamic;
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Return the values of the located ticks given **vmin** and **vmax**.
		
		.. note::
		    To get tick locations with the vmin and vmax values defined
		    automatically for the associated :attr:`axis` simply call
		    the Locator instance::
		
		        >>> print((type(loc)))
		        <type 'Locator'>
		        >>> print((loc()))
		        [1, 2, 3, 4]
	**/
	public function tick_values(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		select a scale for the range from vmin to vmax
		
		Normally this method is overridden by subclasses to
		change locator behaviour.
	**/
	public function view_limits(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Converts the view interval to datetime objects.
	**/
	public function viewlim_to_dt():Dynamic;
	/**
		Zoom in/out on axis; if direction is >0 zoom in, else zoom out
	**/
	public function zoom(direction:Dynamic):Dynamic;
}