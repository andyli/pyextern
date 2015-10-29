/* This file is generated, do not edit! */
package matplotlib.dates;
@:pythonImport("matplotlib.dates", "AutoDateLocator") extern class AutoDateLocator {
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
		*minticks* is the minimum number of ticks desired, which is used to
		select the type of ticking (yearly, monthly, etc.).
		
		*maxticks* is the maximum number of ticks desired, which controls
		any interval between ticks (ticking every other, every 3, etc.).
		For really fine-grained control, this can be a dictionary mapping
		individual rrule frequency constants (YEARLY, MONTHLY, etc.)
		to their own maximum number of ticks.  This can be used to keep
		the number of ticks appropriate to the format chosen in
		:class:`AutoDateFormatter`. Any frequency not specified in this
		dictionary is given a default value.
		
		*tz* is a :class:`tzinfo` instance.
		
		*interval_multiples* is a boolean that indicates whether ticks
		should be chosen to be multiple of the interval. This will lock
		ticks to 'nicer' locations. For example, this will force the
		ticks to be at hours 0,6,12,18 when hourly ticking is done at
		6 hour intervals.
		
		The AutoDateLocator has an interval dictionary that maps the
		frequency of the tick (a constant from dateutil.rrule) and a
		multiple allowed for that ticking.  The default looks like this::
		
		  self.intervald = {
		    YEARLY  : [1, 2, 4, 5, 10, 20, 40, 50, 100, 200, 400, 500,
		              1000, 2000, 4000, 5000, 10000],
		    MONTHLY : [1, 2, 3, 4, 6],
		    DAILY   : [1, 2, 3, 7, 14],
		    HOURLY  : [1, 2, 3, 4, 6, 12],
		    MINUTELY: [1, 5, 10, 15, 30],
		    SECONDLY: [1, 5, 10, 15, 30],
		    MICROSECONDLY: [1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, 2000,
		                   5000, 10000, 20000, 50000, 100000, 200000, 500000,
		                   1000000],
		    }
		
		The interval is used to specify multiples that are appropriate for
		the frequency of ticking. For instance, every 7 days is sensible
		for daily ticks, but for minutes/seconds, 15 or 30 make sense.
		You can customize this dictionary by doing::
		
		  locator = AutoDateLocator()
		  locator.intervald[HOURLY] = [3] # only show every 3 hours
	**/
	@:native("__init__")
	public function ___init__(?tz:Dynamic, ?minticks:Dynamic, ?maxticks:Dynamic, ?interval_multiples:Dynamic):Dynamic;
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
		Try to choose the view limits intelligently.
	**/
	public function autoscale():Dynamic;
	static public var axis : Dynamic;
	public function create_dummy_axis(kwargs:Dynamic):Dynamic;
	public function datalim_to_dt():Dynamic;
	/**
		Pick the best locator based on a distance.
	**/
	public function get_locator(dmin:Dynamic, dmax:Dynamic):Dynamic;
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
		Refresh internal information based on current limits.
	**/
	public function refresh():Dynamic;
	public function set_axis(axis:Dynamic):Dynamic;
	public function set_bounds(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
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
	public function viewlim_to_dt():Dynamic;
	/**
		Zoom in/out on axis; if direction is >0 zoom in, else zoom out
	**/
	public function zoom(direction:Dynamic):Dynamic;
}