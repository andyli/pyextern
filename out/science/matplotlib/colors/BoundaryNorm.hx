/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "BoundaryNorm") extern class BoundaryNorm {
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
		boundaries : array-like
		    Monotonically increasing sequence of at least 2 boundaries.
		ncolors : int
		    Number of colors in the colormap to be used.
		clip : bool, optional
		    If clip is ``True``, out of range values are mapped to 0 if they
		    are below ``boundaries[0]`` or mapped to ``ncolors - 1`` if they
		    are above ``boundaries[-1]``.
		
		    If clip is ``False``, out of range values are mapped to -1 if
		    they are below ``boundaries[0]`` or mapped to *ncolors* if they are
		    above ``boundaries[-1]``. These are then converted to valid indices
		    by `Colormap.__call__`.
		extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
		    Extend the number of bins to include one or both of the
		    regions beyond the boundaries.  For example, if ``extend``
		    is 'min', then the color to which the region between the first
		    pair of boundaries is mapped will be distinct from the first
		    color in the colormap, and by default a
		    `~matplotlib.colorbar.Colorbar` will be drawn with
		    the triangle extension on the left or lower end.
		
		Returns
		-------
		int16 scalar or array
		
		Notes
		-----
		*boundaries* defines the edges of bins, and data falling within a bin
		is mapped to the color with the same index.
		
		If the number of bins, including any extensions, is less than
		*ncolors*, the color index is chosen by linear interpolation, mapping
		the ``[0, nbins - 1]`` range onto the ``[0, ncolors - 1]`` range.
	**/
	@:native("__init__")
	public function ___init__(boundaries:Dynamic, ncolors:Dynamic, ?clip:Dynamic, ?extend:Dynamic):Dynamic;
	/**
		Parameters
		----------
		boundaries : array-like
		    Monotonically increasing sequence of at least 2 boundaries.
		ncolors : int
		    Number of colors in the colormap to be used.
		clip : bool, optional
		    If clip is ``True``, out of range values are mapped to 0 if they
		    are below ``boundaries[0]`` or mapped to ``ncolors - 1`` if they
		    are above ``boundaries[-1]``.
		
		    If clip is ``False``, out of range values are mapped to -1 if
		    they are below ``boundaries[0]`` or mapped to *ncolors* if they are
		    above ``boundaries[-1]``. These are then converted to valid indices
		    by `Colormap.__call__`.
		extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
		    Extend the number of bins to include one or both of the
		    regions beyond the boundaries.  For example, if ``extend``
		    is 'min', then the color to which the region between the first
		    pair of boundaries is mapped will be distinct from the first
		    color in the colormap, and by default a
		    `~matplotlib.colorbar.Colorbar` will be drawn with
		    the triangle extension on the left or lower end.
		
		Returns
		-------
		int16 scalar or array
		
		Notes
		-----
		*boundaries* defines the edges of bins, and data falling within a bin
		is mapped to the color with the same index.
		
		If the number of bins, including any extensions, is less than
		*ncolors*, the color index is chosen by linear interpolation, mapping
		the ``[0, nbins - 1]`` range onto the ``[0, ncolors - 1]`` range.
	**/
	public function new(boundaries:Dynamic, ncolors:Dynamic, ?clip:Dynamic, ?extend:Dynamic):Void;
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