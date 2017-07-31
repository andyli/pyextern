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
		transform : `Transform`
		    Maps (x, y) in pixel or point units to screen units
		    relative to the given artist.
	**/
	public function __call__(renderer:Dynamic):Dynamic;
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
		Parameters
		----------
		artist : `Artist`, `BboxBase`, or `Transform`
		    The object to compute the offset from.
		
		ref_coord : length 2 sequence
		    If `artist` is an `Artist` or `BboxBase`, this values is
		    the location to of the offset origin in fractions of the
		    `artist` bounding box.
		
		    If `artist` is a transform, the offset origin is the
		    transform applied to this value.
		
		unit : {'points, 'pixels'}
		    The screen units to use (pixels or points) for the offset
		    input.
	**/
	@:native("__init__")
	public function ___init__(artist:Dynamic, ref_coord:Dynamic, ?unit:Dynamic):Dynamic;
	/**
		Parameters
		----------
		artist : `Artist`, `BboxBase`, or `Transform`
		    The object to compute the offset from.
		
		ref_coord : length 2 sequence
		    If `artist` is an `Artist` or `BboxBase`, this values is
		    the location to of the offset origin in fractions of the
		    `artist` bounding box.
		
		    If `artist` is a transform, the offset origin is the
		    transform applied to this value.
		
		unit : {'points, 'pixels'}
		    The screen units to use (pixels or points) for the offset
		    input.
	**/
	public function new(artist:Dynamic, ref_coord:Dynamic, ?unit:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _get_scale(renderer:Dynamic):Dynamic;
	/**
		The unit for input to the transform used by ``__call__``
	**/
	public function get_unit():Dynamic;
	/**
		The unit for input to the transform used by ``__call__``
		
		Parameters
		----------
		unit : {'points', 'pixels'}
	**/
	public function set_unit(unit:Dynamic):Dynamic;
}