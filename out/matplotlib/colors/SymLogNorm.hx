/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "SymLogNorm") extern class SymLogNorm {
	/**
		Call self as a function.
	**/
	public function __call__(value:Dynamic, ?clip:Dynamic):Dynamic;
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
		*linthresh*:
		The range within which the plot is linear (to
		avoid having the plot go to infinity around zero).
		
		*linscale*:
		This allows the linear range (-*linthresh* to *linthresh*)
		to be stretched relative to the logarithmic range.  Its
		value is the number of decades to use for each half of the
		linear range.  For example, when *linscale* == 1.0 (the
		default), the space used for the positive and negative
		halves of the linear range will be equal to one decade in
		the logarithmic range. Defaults to 1.
	**/
	@:native("__init__")
	public function ___init__(linthresh:Dynamic, ?linscale:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?clip:Dynamic):Dynamic;
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
		Inverse inplace Transformation.
	**/
	public function _inv_transform(a:Dynamic):Dynamic;
	/**
		Inplace transformation.
	**/
	public function _transform(a:Dynamic):Dynamic;
	/**
		Calculates vmin and vmax in the transformed system.
	**/
	public function _transform_vmin_vmax():Dynamic;
	/**
		Set *vmin*, *vmax* to min, max of *A*.
	**/
	public function autoscale(A:Dynamic):Dynamic;
	/**
		autoscale only None-valued vmin or vmax 
	**/
	public function autoscale_None(A:Dynamic):Dynamic;
	public function inverse(value:Dynamic):Dynamic;
	/**
		Homogenize the input *value* for easy and efficient normalization.
		
		*value* can be a scalar or sequence.
		
		Returns *result*, *is_scalar*, where *result* is a
		masked array matching *value*.  Float dtypes are preserved;
		integer types with two bytes or smaller are converted to
		np.float32, and larger types are converted to np.float.
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