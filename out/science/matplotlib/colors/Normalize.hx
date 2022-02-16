/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "Normalize") extern class Normalize {
	/**
		Normalize *value* data in the ``[vmin, vmax]`` interval into the
		``[0.0, 1.0]`` interval and return it.
		
		Parameters
		----------
		value
		    Data to normalize.
		clip : bool
		    If ``None``, defaults to ``self.clip`` (which defaults to
		    ``False``).
		
		Notes
		-----
		If not already initialized, ``self.vmin`` and ``self.vmax`` are
		initialized using ``self.autoscale_None(value)``.
	**/
	public function __call__(value:Dynamic, ?clip:Dynamic):Dynamic;
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
		vmin, vmax : float or None
		    If *vmin* and/or *vmax* is not given, they are initialized from the
		    minimum and maximum value, respectively, of the first input
		    processed; i.e., ``__call__(A)`` calls ``autoscale_None(A)``.
		
		clip : bool, default: False
		    If ``True`` values falling outside the range ``[vmin, vmax]``,
		    are mapped to 0 or 1, whichever is closer, and masked values are
		    set to 1.  If ``False`` masked values remain masked.
		
		    Clipping silently defeats the purpose of setting the over, under,
		    and masked colors in a colormap, so it is likely to lead to
		    surprises; therefore the default is ``clip=False``.
		
		Notes
		-----
		Returns 0 if ``vmin == vmax``.
	**/
	@:native("__init__")
	public function ___init__(?vmin:Dynamic, ?vmax:Dynamic, ?clip:Dynamic):Dynamic;
	/**
		Parameters
		----------
		vmin, vmax : float or None
		    If *vmin* and/or *vmax* is not given, they are initialized from the
		    minimum and maximum value, respectively, of the first input
		    processed; i.e., ``__call__(A)`` calls ``autoscale_None(A)``.
		
		clip : bool, default: False
		    If ``True`` values falling outside the range ``[vmin, vmax]``,
		    are mapped to 0 or 1, whichever is closer, and masked values are
		    set to 1.  If ``False`` masked values remain masked.
		
		    Clipping silently defeats the purpose of setting the over, under,
		    and masked colors in a colormap, so it is likely to lead to
		    surprises; therefore the default is ``clip=False``.
		
		Notes
		-----
		Returns 0 if ``vmin == vmax``.
	**/
	public function new(?vmin:Dynamic, ?vmax:Dynamic, ?clip:Dynamic):Void;
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
		Call this whenever the norm is changed to notify all the
		callback listeners to the 'changed' signal.
	**/
	public function _changed():Dynamic;
	/**
		Set *vmin*, *vmax* to min, max of *A*.
	**/
	public function autoscale(A:Dynamic):Dynamic;
	/**
		If vmin or vmax are not set, use the min/max of *A* to set them.
	**/
	public function autoscale_None(A:Dynamic):Dynamic;
	public var clip : Dynamic;
	public function inverse(value:Dynamic):Dynamic;
	/**
		Homogenize the input *value* for easy and efficient normalization.
		
		*value* can be a scalar or sequence.
		
		Returns
		-------
		result : masked array
		    Masked array with the same shape as *value*.
		is_scalar : bool
		    Whether *value* is a scalar.
		
		Notes
		-----
		Float dtypes are preserved; integer types with two bytes or smaller are
		converted to np.float32, and larger types are converted to np.float64.
		Preserving float32 when possible, and using in-place operations,
		greatly improves speed for large arrays.
	**/
	static public function process_value(value:Dynamic):Dynamic;
	/**
		Return whether vmin and vmax are set.
	**/
	public function scaled():Dynamic;
	public var vmax : Dynamic;
	public var vmin : Dynamic;
}