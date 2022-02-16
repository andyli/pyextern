/* This file is generated, do not edit! */
package matplotlib.ticker;
@:pythonImport("matplotlib.ticker", "SymmetricalLogLocator") extern class SymmetricalLogLocator {
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
		Parameters
		----------
		transform : `~.scale.SymmetricalLogTransform`, optional
		    If set, defines the *base* and *linthresh* of the symlog transform.
		base, linthresh : float, optional
		    The *base* and *linthresh* of the symlog transform, as documented
		    for `.SymmetricalLogScale`.  These parameters are only used if
		    *transform* is not set.
		subs : sequence of float, default: [1]
		    The multiples of integer powers of the base where ticks are placed,
		    i.e., ticks are placed at
		    ``[sub * base**i for i in ... for sub in subs]``.
		
		Notes
		-----
		Either *transform*, or both *base* and *linthresh*, must be given.
	**/
	@:native("__init__")
	public function ___init__(?transform:Dynamic, ?subs:Dynamic, ?linthresh:Dynamic, ?base:Dynamic):Dynamic;
	/**
		Parameters
		----------
		transform : `~.scale.SymmetricalLogTransform`, optional
		    If set, defines the *base* and *linthresh* of the symlog transform.
		base, linthresh : float, optional
		    The *base* and *linthresh* of the symlog transform, as documented
		    for `.SymmetricalLogScale`.  These parameters are only used if
		    *transform* is not set.
		subs : sequence of float, default: [1]
		    The multiples of integer powers of the base where ticks are placed,
		    i.e., ticks are placed at
		    ``[sub * base**i for i in ... for sub in subs]``.
		
		Notes
		-----
		Either *transform*, or both *base* and *linthresh*, must be given.
	**/
	public function new(?transform:Dynamic, ?subs:Dynamic, ?linthresh:Dynamic, ?base:Dynamic):Void;
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
	static public var axis : Dynamic;
	public function create_dummy_axis(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adjust a range as needed to avoid singularities.
		
		This method gets called during autoscaling, with ``(v0, v1)`` set to
		the data limits on the axes if the axes contains any data, or
		``(-inf, +inf)`` if not.
		
		- If ``v0 == v1`` (possibly up to some floating point slop), this
		  method returns an expanded interval around this value.
		- If ``(v0, v1) == (-inf, +inf)``, this method returns appropriate
		  default view limits.
		- Otherwise, ``(v0, v1)`` is returned without modification.
	**/
	public function nonsingular(v0:Dynamic, v1:Dynamic):Dynamic;
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
		Set parameters within this locator.
	**/
	public function set_params(?subs:Dynamic, ?numticks:Dynamic):Dynamic;
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
		Try to choose the view limits intelligently.
	**/
	public function view_limits(vmin:Dynamic, vmax:Dynamic):Dynamic;
}