/* This file is generated, do not edit! */
package matplotlib.scale;
@:pythonImport("matplotlib.scale", "LogScale") extern class LogScale {
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
	static public function InvertedLog10Transform(?shorthand_name:Dynamic):Dynamic;
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
	static public function InvertedLog2Transform(?shorthand_name:Dynamic):Dynamic;
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
	static public function InvertedLogTransform(base:Dynamic):Dynamic;
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
	static public function InvertedNaturalLogTransform(?shorthand_name:Dynamic):Dynamic;
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
	static public function Log10Transform(nonpos:Dynamic):Dynamic;
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
	static public function Log2Transform(nonpos:Dynamic):Dynamic;
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
	static public function LogTransform(base:Dynamic, nonpos:Dynamic):Dynamic;
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
	static public function LogTransformBase(nonpos:Dynamic):Dynamic;
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
	static public function NaturalLogTransform(nonpos:Dynamic):Dynamic;
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
		
		*nonposx* /*nonposy*: ['mask' | 'clip' ]
		  non-positive values in *x* or *y* can be masked as
		  invalid, or clipped to a very small positive number
		
		*subsx* /*subsy*:
		   Where to place the subticks between each major tick.
		   Should be a sequence of integers.  For example, in a log10
		   scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		
		   will place 8 logarithmically spaced minor ticks between
		   each major tick.
	**/
	@:native("__init__")
	public function ___init__(axis:Dynamic, kwargs:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	/**
		Return a :class:`~matplotlib.transforms.Transform` instance
		appropriate for the given logarithm base.
	**/
	public function get_transform():Dynamic;
	/**
		Limit the domain to positive values.
	**/
	public function limit_range_for_scale(vmin:Dynamic, vmax:Dynamic, minpos:Dynamic):Dynamic;
	static public var name : Dynamic;
	/**
		Set the locators and formatters to specialized versions for
		log scaling.
	**/
	public function set_default_locators_and_formatters(axis:Dynamic):Dynamic;
}