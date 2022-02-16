/* This file is generated, do not edit! */
package matplotlib.text;
@:pythonImport("matplotlib.text", "OffsetFrom") extern class OffsetFrom {
	/**
		Return the offset transform.
		
		Parameters
		----------
		renderer : `RendererBase`
		    The renderer to use to compute the offset
		
		Returns
		-------
		`Transform`
		    Maps (x, y) in pixel or point units to screen units
		    relative to the given artist.
	**/
	public function __call__(renderer:Dynamic):Dynamic;
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
		artist : `.Artist` or `.BboxBase` or `.Transform`
		    The object to compute the offset from.
		
		ref_coord : (float, float)
		    If *artist* is an `.Artist` or `.BboxBase`, this values is
		    the location to of the offset origin in fractions of the
		    *artist* bounding box.
		
		    If *artist* is a transform, the offset origin is the
		    transform applied to this value.
		
		unit : {'points, 'pixels'}, default: 'points'
		    The screen units to use (pixels or points) for the offset input.
	**/
	@:native("__init__")
	public function ___init__(artist:Dynamic, ref_coord:Dynamic, ?unit:Dynamic):Dynamic;
	/**
		Parameters
		----------
		artist : `.Artist` or `.BboxBase` or `.Transform`
		    The object to compute the offset from.
		
		ref_coord : (float, float)
		    If *artist* is an `.Artist` or `.BboxBase`, this values is
		    the location to of the offset origin in fractions of the
		    *artist* bounding box.
		
		    If *artist* is a transform, the offset origin is the
		    transform applied to this value.
		
		unit : {'points, 'pixels'}, default: 'points'
		    The screen units to use (pixels or points) for the offset input.
	**/
	public function new(artist:Dynamic, ref_coord:Dynamic, ?unit:Dynamic):Void;
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
	public function _get_scale(renderer:Dynamic):Dynamic;
	/**
		Return the unit for input to the transform used by ``__call__``.
	**/
	public function get_unit():Dynamic;
	/**
		Set the unit for input to the transform used by ``__call__``.
		
		Parameters
		----------
		unit : {'points', 'pixels'}
	**/
	public function set_unit(unit:Dynamic):Dynamic;
}