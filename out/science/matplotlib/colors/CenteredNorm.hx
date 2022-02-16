/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "CenteredNorm") extern class CenteredNorm {
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
		Normalize symmetrical data around a center (0 by default).
		
		Unlike `TwoSlopeNorm`, `CenteredNorm` applies an equal rate of change
		around the center.
		
		Useful when mapping symmetrical data around a conceptual center
		e.g., data that range from -2 to 4, with 0 as the midpoint, and
		with equal rates of change around that midpoint.
		
		Parameters
		----------
		vcenter : float, default: 0
		    The data value that defines ``0.5`` in the normalization.
		halfrange : float, optional
		    The range of data values that defines a range of ``0.5`` in the
		    normalization, so that *vcenter* - *halfrange* is ``0.0`` and
		    *vcenter* + *halfrange* is ``1.0`` in the normalization.
		    Defaults to the largest absolute difference to *vcenter* for
		    the values in the dataset.
		
		Examples
		--------
		This maps data values -2 to 0.25, 0 to 0.5, and 4 to 1.0
		(assuming equal rates of change above and below 0.0):
		
		    >>> import matplotlib.colors as mcolors
		    >>> norm = mcolors.CenteredNorm(halfrange=4.0)
		    >>> data = [-2., 0., 4.]
		    >>> norm(data)
		    array([0.25, 0.5 , 1.  ])
	**/
	@:native("__init__")
	public function ___init__(?vcenter:Dynamic, ?halfrange:Dynamic, ?clip:Dynamic):Dynamic;
	/**
		Normalize symmetrical data around a center (0 by default).
		
		Unlike `TwoSlopeNorm`, `CenteredNorm` applies an equal rate of change
		around the center.
		
		Useful when mapping symmetrical data around a conceptual center
		e.g., data that range from -2 to 4, with 0 as the midpoint, and
		with equal rates of change around that midpoint.
		
		Parameters
		----------
		vcenter : float, default: 0
		    The data value that defines ``0.5`` in the normalization.
		halfrange : float, optional
		    The range of data values that defines a range of ``0.5`` in the
		    normalization, so that *vcenter* - *halfrange* is ``0.0`` and
		    *vcenter* + *halfrange* is ``1.0`` in the normalization.
		    Defaults to the largest absolute difference to *vcenter* for
		    the values in the dataset.
		
		Examples
		--------
		This maps data values -2 to 0.25, 0 to 0.5, and 4 to 1.0
		(assuming equal rates of change above and below 0.0):
		
		    >>> import matplotlib.colors as mcolors
		    >>> norm = mcolors.CenteredNorm(halfrange=4.0)
		    >>> data = [-2., 0., 4.]
		    >>> norm(data)
		    array([0.25, 0.5 , 1.  ])
	**/
	public function new(?vcenter:Dynamic, ?halfrange:Dynamic, ?clip:Dynamic):Void;
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
		Set *vmin* and *vmax* based on *vcenter* and *halfrange*.
	**/
	public function _set_vmin_vmax():Dynamic;
	/**
		Set *halfrange* to ``max(abs(A-vcenter))``, then set *vmin* and *vmax*.
	**/
	public function autoscale(A:Dynamic):Dynamic;
	/**
		Set *vmin* and *vmax*.
	**/
	public function autoscale_None(A:Dynamic):Dynamic;
	public var clip : Dynamic;
	public var halfrange : Dynamic;
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
	public var vcenter : Dynamic;
	public var vmax : Dynamic;
	public var vmin : Dynamic;
}