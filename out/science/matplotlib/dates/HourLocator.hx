/* This file is generated, do not edit! */
package matplotlib.dates;
@:pythonImport("matplotlib.dates", "HourLocator") extern class HourLocator {
	static public var MAXTICKS : Dynamic;
	/**
		Return the locations of the ticks.
	**/
	public function __call__():Dynamic;
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
		Mark every hour in *byhour*; *byhour* can be an int or sequence.
		Default is to tick every hour: ``byhour=range(24)``
		
		*interval* is the interval between each iteration.  For
		example, if ``interval=2``, mark every second occurrence.
	**/
	@:native("__init__")
	public function ___init__(?byhour:Dynamic, ?interval:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Mark every hour in *byhour*; *byhour* can be an int or sequence.
		Default is to tick every hour: ``byhour=range(24)``
		
		*interval* is the interval between each iteration.  For
		example, if ``interval=2``, mark every second occurrence.
	**/
	public function new(?byhour:Dynamic, ?interval:Dynamic, ?tz:Dynamic):Void;
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
	public function _create_rrule(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Return the number of units for each tick.
	**/
	public function _get_interval():Dynamic;
	/**
		Return how many days a unit of the locator is; used for
		intelligent autoscaling.
	**/
	public function _get_unit():Dynamic;
	static public var axis : Dynamic;
	public function create_dummy_axis(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert axis data interval to datetime objects.
	**/
	public function datalim_to_dt():Dynamic;
	static public function get_unit_generic(freq:Dynamic):Dynamic;
	static public var hms0d : Dynamic;
	/**
		Given the proposed upper and lower extent, adjust the range
		if it is too close to being singular (i.e. a range of ~0).
	**/
	public function nonsingular(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Log at WARNING level if *locs* is longer than `Locator.MAXTICKS`.
		
		This is intended to be called immediately before returning *locs* from
		``__call__`` to inform users in case their Locator returns a huge
		number of ticks, causing Matplotlib to run out of memory.
		
		The "strange" name of this method dates back to when it would raise an
		exception instead of emitting a log.
	**/
	public function raise_if_exceeds(locs:Dynamic):Dynamic;
	public function set_axis(axis:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.5
		   \ 
	**/
	public function set_bounds(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.5
		   \ 
	**/
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Do nothing, and raise a warning. Any locator class not supporting the
		set_params() function will call this.
	**/
	public function set_params(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set time zone info.
	**/
	public function set_tzinfo(tz:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.5
		   \ 
	**/
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Return the values of the located ticks given **vmin** and **vmax**.
		
		.. note::
		    To get tick locations with the vmin and vmax values defined
		    automatically for the associated :attr:`axis` simply call
		    the Locator instance::
		
		        >>> print(type(loc))
		        <type 'Locator'>
		        >>> print(loc())
		        [1, 2, 3, 4]
	**/
	public function tick_values(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Select a scale for the range from vmin to vmax.
		
		Subclasses should override this method to change locator behaviour.
	**/
	public function view_limits(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Convert the view interval to datetime objects.
	**/
	public function viewlim_to_dt():Dynamic;
}