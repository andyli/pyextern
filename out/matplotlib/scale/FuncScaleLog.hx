/* This file is generated, do not edit! */
package matplotlib.scale;
@:pythonImport("matplotlib.scale", "FuncScaleLog") extern class FuncScaleLog {
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function InvertedLog10Transform(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function InvertedLog2Transform(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function InvertedLogTransform(base:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function InvertedNaturalLogTransform(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function Log10Transform(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function Log2Transform(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function LogTransform(base:Dynamic, ?nonpos:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function LogTransformBase(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function NaturalLogTransform(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Parameters
		----------
		
		axis: the axis for the scale
		
		functions : (callable, callable)
		    two-tuple of the forward and inverse functions for the scale.
		    The forward function must be monotonic.
		
		    Both functions must have the signature::
		
		        def forward(values: array-like) -> array-like
		
		base : float
		    logarithmic base of the scale (default = 10)
	**/
	@:native("__init__")
	public function ___init__(axis:Dynamic, functions:Dynamic, ?base:Dynamic):Dynamic;
	/**
		Parameters
		----------
		
		axis: the axis for the scale
		
		functions : (callable, callable)
		    two-tuple of the forward and inverse functions for the scale.
		    The forward function must be monotonic.
		
		    Both functions must have the signature::
		
		        def forward(values: array-like) -> array-like
		
		base : float
		    logarithmic base of the scale (default = 10)
	**/
	public function new(axis:Dynamic, functions:Dynamic, ?base:Dynamic):Void;
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
	public var base : Dynamic;
	/**
		The transform for arbitrary scaling
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