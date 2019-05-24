/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "DivergingNorm") extern class DivergingNorm {
	/**
		Map value to the interval [0, 1]. The clip argument is unused.
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
		Normalize data with a set center.
		
		Useful when mapping data with an unequal rates of change around a
		conceptual center, e.g., data that range from -2 to 4, with 0 as
		the midpoint.
		
		Parameters
		----------
		vcenter : float
		    The data value that defines ``0.5`` in the normalization.
		vmin : float, optional
		    The data value that defines ``0.0`` in the normalization.
		    Defaults to the min value of the dataset.
		vmax : float, optional
		    The data value that defines ``1.0`` in the normalization.
		    Defaults to the the max value of the dataset.
		
		Examples
		--------
		This maps data value -4000 to 0., 0 to 0.5, and +10000 to 1.0; data
		between is linearly interpolated::
		
		    >>> import matplotlib.colors as mcolors
		    >>> offset = mcolors.DivergingNorm(vmin=-4000.,
		                                       vcenter=0., vmax=10000)
		    >>> data = [-4000., -2000., 0., 2500., 5000., 7500., 10000.]
		    >>> offset(data)
		    array([0., 0.25, 0.5, 0.625, 0.75, 0.875, 1.0])
	**/
	@:native("__init__")
	public function ___init__(vcenter:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic):Dynamic;
	/**
		Normalize data with a set center.
		
		Useful when mapping data with an unequal rates of change around a
		conceptual center, e.g., data that range from -2 to 4, with 0 as
		the midpoint.
		
		Parameters
		----------
		vcenter : float
		    The data value that defines ``0.5`` in the normalization.
		vmin : float, optional
		    The data value that defines ``0.0`` in the normalization.
		    Defaults to the min value of the dataset.
		vmax : float, optional
		    The data value that defines ``1.0`` in the normalization.
		    Defaults to the the max value of the dataset.
		
		Examples
		--------
		This maps data value -4000 to 0., 0 to 0.5, and +10000 to 1.0; data
		between is linearly interpolated::
		
		    >>> import matplotlib.colors as mcolors
		    >>> offset = mcolors.DivergingNorm(vmin=-4000.,
		                                       vcenter=0., vmax=10000)
		    >>> data = [-4000., -2000., 0., 2500., 5000., 7500., 10000.]
		    >>> offset(data)
		    array([0., 0.25, 0.5, 0.625, 0.75, 0.875, 1.0])
	**/
	public function new(vcenter:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic):Void;
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
		Get vmin and vmax, and then clip at vcenter
	**/
	public function autoscale_None(A:Dynamic):Dynamic;
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
		Return whether vmin and vmax are set.
	**/
	public function scaled():Dynamic;
}