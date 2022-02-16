/* This file is generated, do not edit! */
package matplotlib.ticker;
@:pythonImport("matplotlib.ticker", "AutoLocator") extern class AutoLocator {
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
		To know the values of the non-public parameters, please have a
		look to the defaults of `~matplotlib.ticker.MaxNLocator`.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		To know the values of the non-public parameters, please have a
		look to the defaults of `~matplotlib.ticker.MaxNLocator`.
	**/
	public function new():Void;
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
		Generate a list of tick locations including the range *vmin* to
		*vmax*.  In some applications, one or both of the end locations
		will not be needed, in which case they are trimmed off
		elsewhere.
	**/
	public function _raw_ticks(vmin:Dynamic, vmax:Dynamic):Dynamic;
	static public function _staircase(steps:Dynamic):Dynamic;
	static public function _validate_steps(steps:Dynamic):Dynamic;
	static public var axis : Dynamic;
	public function create_dummy_axis(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var default_params : Dynamic;
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
		Set parameters for this locator.
		
		Parameters
		----------
		nbins : int or 'auto', optional
		    see `.MaxNLocator`
		steps : array-like, optional
		    see `.MaxNLocator`
		integer : bool, optional
		    see `.MaxNLocator`
		symmetric : bool, optional
		    see `.MaxNLocator`
		prune : {'lower', 'upper', 'both', None}, optional
		    see `.MaxNLocator`
		min_n_ticks : int, optional
		    see `.MaxNLocator`
	**/
	public function set_params(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function view_limits(dmin:Dynamic, dmax:Dynamic):Dynamic;
}