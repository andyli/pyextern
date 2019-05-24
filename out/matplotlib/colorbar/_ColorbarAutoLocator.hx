/* This file is generated, do not edit! */
package matplotlib.colorbar;
@:pythonImport("matplotlib.colorbar", "_ColorbarAutoLocator") extern class _ColorbarAutoLocator {
	static public var MAXTICKS : Dynamic;
	/**
		Return the locations of the ticks
	**/
	public function __call__():Dynamic;
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
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		This ticker needs to know the *colorbar* so that it can access
		its *vmin* and *vmax*.  Otherwise it is the same as
		`~.ticker.AutoLocator`.
	**/
	@:native("__init__")
	public function ___init__(colorbar:Dynamic):Dynamic;
	/**
		This ticker needs to know the *colorbar* so that it can access
		its *vmin* and *vmax*.  Otherwise it is the same as
		`~.ticker.AutoLocator`.
	**/
	public function new(colorbar:Dynamic):Void;
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
		Generate a list of tick locations including the range *vmin* to
		*vmax*.  In some applications, one or both of the end locations
		will not be needed, in which case they are trimmed off
		elsewhere.
	**/
	public function _raw_ticks(vmin:Dynamic, vmax:Dynamic):Dynamic;
	static public function _staircase(steps:Dynamic):Dynamic;
	static public function _validate_steps(steps:Dynamic):Dynamic;
	/**
		autoscale the view limits
	**/
	public function autoscale():Dynamic;
	static public var axis : Dynamic;
	public function create_dummy_axis(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var default_params : Dynamic;
	/**
		Modify the endpoints of a range as needed to avoid singularities.
	**/
	public function nonsingular(v0:Dynamic, v1:Dynamic):Dynamic;
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
	/**
		Zoom in/out on axis; if direction is >0 zoom in, else zoom out
	**/
	public function zoom(direction:Dynamic):Dynamic;
}