/* This file is generated, do not edit! */
package matplotlib.patheffects;
@:pythonImport("matplotlib.patheffects", "SimplePatchShadow") extern class SimplePatchShadow {
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
		offset : (float, float), default: (2, -2)
		    The (x, y) offset of the shadow in points.
		shadow_rgbFace : color
		    The shadow color.
		alpha : float, default: 0.3
		    The alpha transparency of the created shadow patch.
		    http://matplotlib.1069221.n5.nabble.com/path-effects-question-td27630.html
		rho : float, default: 0.3
		    A scale factor to apply to the rgbFace color if *shadow_rgbFace*
		    is not specified.
		**kwargs
		    Extra keywords are stored and passed through to
		    :meth:`AbstractPathEffect._update_gc`.
	**/
	@:native("__init__")
	public function ___init__(?offset:Dynamic, ?shadow_rgbFace:Dynamic, ?alpha:Dynamic, ?rho:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		offset : (float, float), default: (2, -2)
		    The (x, y) offset of the shadow in points.
		shadow_rgbFace : color
		    The shadow color.
		alpha : float, default: 0.3
		    The alpha transparency of the created shadow patch.
		    http://matplotlib.1069221.n5.nabble.com/path-effects-question-td27630.html
		rho : float, default: 0.3
		    A scale factor to apply to the rgbFace color if *shadow_rgbFace*
		    is not specified.
		**kwargs
		    Extra keywords are stored and passed through to
		    :meth:`AbstractPathEffect._update_gc`.
	**/
	public function new(?offset:Dynamic, ?shadow_rgbFace:Dynamic, ?alpha:Dynamic, ?rho:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Apply the offset to the given transform.
	**/
	public function _offset_transform(renderer:Dynamic):Dynamic;
	/**
		Update the given GraphicsContext with the given dict of properties.
		
		The keys in the dictionary are used to identify the appropriate
		``set_`` method on the *gc*.
	**/
	public function _update_gc(gc:Dynamic, new_gc_dict:Dynamic):Dynamic;
	/**
		Overrides the standard draw_path to add the shadow offset and
		necessary color changes for the shadow.
	**/
	public function draw_path(renderer:Dynamic, gc:Dynamic, tpath:Dynamic, affine:Dynamic, rgbFace:Dynamic):Dynamic;
}