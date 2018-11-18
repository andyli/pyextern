/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "BoundaryNorm") extern class BoundaryNorm {
	/**
		Normalize *value* data in the ``[vmin, vmax]`` interval into
		the ``[0.0, 1.0]`` interval and return it.  *clip* defaults
		to *self.clip* (which defaults to *False*).  If not already
		initialized, *vmin* and *vmax* are initialized using
		*autoscale_None(value)*.
	**/
	public function __call__(value:Dynamic, ?clip:Dynamic):Dynamic;
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
		boundaries : array-like
		    Monotonically increasing sequence of boundaries
		ncolors : int
		    Number of colors in the colormap to be used
		clip : bool, optional
		    If clip is ``True``, out of range values are mapped to 0 if they
		    are below ``boundaries[0]`` or mapped to ncolors - 1 if they are
		    above ``boundaries[-1]``.
		
		    If clip is ``False``, out of range values are mapped to -1 if
		    they are below ``boundaries[0]`` or mapped to ncolors if they are
		    above ``boundaries[-1]``. These are then converted to valid indices
		    by :meth:`Colormap.__call__`.
		
		Notes
		-----
		*boundaries* defines the edges of bins, and data falling within a bin
		is mapped to the color with the same index.
		
		If the number of bins doesn't equal *ncolors*, the color is chosen
		by linear interpolation of the bin number onto color numbers.
	**/
	@:native("__init__")
	public function ___init__(boundaries:Dynamic, ncolors:Dynamic, ?clip:Dynamic):Dynamic;
	/**
		Parameters
		----------
		boundaries : array-like
		    Monotonically increasing sequence of boundaries
		ncolors : int
		    Number of colors in the colormap to be used
		clip : bool, optional
		    If clip is ``True``, out of range values are mapped to 0 if they
		    are below ``boundaries[0]`` or mapped to ncolors - 1 if they are
		    above ``boundaries[-1]``.
		
		    If clip is ``False``, out of range values are mapped to -1 if
		    they are below ``boundaries[0]`` or mapped to ncolors if they are
		    above ``boundaries[-1]``. These are then converted to valid indices
		    by :meth:`Colormap.__call__`.
		
		Notes
		-----
		*boundaries* defines the edges of bins, and data falling within a bin
		is mapped to the color with the same index.
		
		If the number of bins doesn't equal *ncolors*, the color is chosen
		by linear interpolation of the bin number onto color numbers.
	**/
	public function new(boundaries:Dynamic, ncolors:Dynamic, ?clip:Dynamic):Void;
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
		Set *vmin*, *vmax* to min, max of *A*.
	**/
	public function autoscale(A:Dynamic):Dynamic;
	/**
		autoscale only None-valued vmin or vmax.
	**/
	public function autoscale_None(A:Dynamic):Dynamic;
	/**
		Raises
		------
		ValueError
		    BoundaryNorm is not invertible, so calling this method will always
		    raise an error
	**/
	public function inverse(value:Dynamic):Dynamic;
	/**
		Homogenize the input *value* for easy and efficient normalization.
		
		*value* can be a scalar or sequence.
		
		Returns *result*, *is_scalar*, where *result* is a
		masked array matching *value*.  Float dtypes are preserved;
		integer types with two bytes or smaller are converted to
		np.float32, and larger types are converted to np.float64.
		Preserving float32 when possible, and using in-place operations,
		can greatly improve speed for large arrays.
		
		Experimental; we may want to add an option to force the
		use of float32.
	**/
	static public function process_value(value:Dynamic):Dynamic;
	/**
		return true if vmin and vmax set
	**/
	public function scaled():Dynamic;
}