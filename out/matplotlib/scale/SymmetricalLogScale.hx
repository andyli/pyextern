/* This file is generated, do not edit! */
package matplotlib.scale;
@:pythonImport("matplotlib.scale", "SymmetricalLogScale") extern class SymmetricalLogScale {
	/**
		The base class of all :class:`TransformNode` instances that
		actually perform a transformation.
		
		All non-affine transformations should be subclasses of this class.
		New affine transformations should be subclasses of
		:class:`Affine2D`.
		
		Subclasses of this class should override the following members (at
		minimum):
		
		  - :attr:`input_dims`
		  - :attr:`output_dims`
		  - :meth:`transform`
		  - :attr:`is_separable`
		  - :attr:`has_inverse`
		  - :meth:`inverted` (if :attr:`has_inverse` is True)
		
		If the transform needs to do something non-standard with
		:class:`matplotlib.path.Path` objects, such as adding curves
		where there were once line segments, it should override:
		
		  - :meth:`transform_path`
	**/
	static public function InvertedSymmetricalLogTransform(base:Dynamic, linthresh:Dynamic, linscale:Dynamic):Dynamic;
	/**
		The base class of all :class:`TransformNode` instances that
		actually perform a transformation.
		
		All non-affine transformations should be subclasses of this class.
		New affine transformations should be subclasses of
		:class:`Affine2D`.
		
		Subclasses of this class should override the following members (at
		minimum):
		
		  - :attr:`input_dims`
		  - :attr:`output_dims`
		  - :meth:`transform`
		  - :attr:`is_separable`
		  - :attr:`has_inverse`
		  - :meth:`inverted` (if :attr:`has_inverse` is True)
		
		If the transform needs to do something non-standard with
		:class:`matplotlib.path.Path` objects, such as adding curves
		where there were once line segments, it should override:
		
		  - :meth:`transform_path`
	**/
	static public function SymmetricalLogTransform(base:Dynamic, linthresh:Dynamic, linscale:Dynamic):Dynamic;
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
		*basex* /*basey*:
		   The base of the logarithm
		
		*linthreshx* /*linthreshy*:
		  The range (-*x*, *x*) within which the plot is linear (to
		  avoid having the plot go to infinity around zero).
		
		*subsx* /*subsy*:
		   Where to place the subticks between each major tick.
		   Should be a sequence of integers.  For example, in a log10
		   scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		
		   will place 8 logarithmically spaced minor ticks between
		   each major tick.
		
		*linscalex* /*linscaley*:
		   This allows the linear range (-*linthresh* to *linthresh*)
		   to be stretched relative to the logarithmic range.  Its
		   value is the number of decades to use for each half of the
		   linear range.  For example, when *linscale* == 1.0 (the
		   default), the space used for the positive and negative
		   halves of the linear range will be equal to one decade in
		   the logarithmic range.
	**/
	@:native("__init__")
	public function ___init__(axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return a :class:`SymmetricalLogTransform` instance.
	**/
	public function get_transform():Dynamic;
	/**
		Returns the range *vmin*, *vmax*, possibly limited to the
		domain supported by this scale.
		
		*minpos* should be the minimum positive value in the data.
		 This is used by log scales to determine a minimum value.
	**/
	public function limit_range_for_scale(vmin:Dynamic, vmax:Dynamic, minpos:Dynamic):Dynamic;
	static public var name : Dynamic;
	/**
		Set the locators and formatters to specialized versions for
		symmetrical log scaling.
	**/
	public function set_default_locators_and_formatters(axis:Dynamic):Dynamic;
}