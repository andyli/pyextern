/* This file is generated, do not edit! */
package matplotlib.cm;
@:pythonImport("matplotlib.cm", "ScalarMappable") extern class ScalarMappable {
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
		norm : `matplotlib.colors.Normalize` (or subclass thereof)
		    The normalizing object which scales data, typically into the
		    interval ``[0, 1]``.
		    If *None*, *norm* defaults to a *colors.Normalize* object which
		    initializes its scaling based on the first data processed.
		cmap : str or `~matplotlib.colors.Colormap`
		    The colormap used to map normalized data values to RGBA colors.
	**/
	@:native("__init__")
	public function ___init__(?norm:Dynamic, ?cmap:Dynamic):Dynamic;
	/**
		Parameters
		----------
		norm : `matplotlib.colors.Normalize` (or subclass thereof)
		    The normalizing object which scales data, typically into the
		    interval ``[0, 1]``.
		    If *None*, *norm* defaults to a *colors.Normalize* object which
		    initializes its scaling based on the first data processed.
		cmap : str or `~matplotlib.colors.Colormap`
		    The colormap used to map normalized data values to RGBA colors.
	**/
	public function new(?norm:Dynamic, ?cmap:Dynamic):Void;
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
		Helper for initial scaling.
		
		Used by public functions that create a ScalarMappable and support
		parameters *vmin*, *vmax* and *norm*. This makes sure that a *norm*
		will take precedence over *vmin*, *vmax*.
		
		Note that this method does not set the norm.
	**/
	public function _scale_norm(norm:Dynamic, vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Autoscale the scalar limits on the norm instance using the
		current array
	**/
	public function autoscale():Dynamic;
	/**
		Autoscale the scalar limits on the norm instance using the
		current array, changing only limits that are None
	**/
	public function autoscale_None():Dynamic;
	public var callbacksSM : Dynamic;
	/**
		Call this whenever the mappable is changed to notify all the
		callbackSM listeners to the 'changed' signal.
	**/
	public function changed():Dynamic;
	/**
		Returns
		-------
		float
		    Always returns 1.
	**/
	public function get_alpha():Dynamic;
	/**
		Return the array of values, that are mapped to colors.
		
		The base class `.ScalarMappable` does not make any assumptions on
		the dimensionality and shape of the array.
	**/
	public function get_array():Dynamic;
	/**
		Return the values (min, max) that are mapped to the colormap limits.
	**/
	public function get_clim():Dynamic;
	/**
		Return the `.Colormap` instance.
	**/
	public function get_cmap():Dynamic;
	public var norm : Dynamic;
	/**
		Set the value array from array-like *A*.
		
		Parameters
		----------
		A : array-like or None
		    The values that are mapped to colors.
		
		    The base class `.ScalarMappable` does not make any assumptions on
		    the dimensionality and shape of the value array *A*.
	**/
	public function set_array(A:Dynamic):Dynamic;
	/**
		Set the norm limits for image scaling.
		
		Parameters
		----------
		vmin, vmax : float
		     The limits.
		
		     The limits may also be passed as a tuple (*vmin*, *vmax*) as a
		     single positional argument.
		
		     .. ACCEPTS: (vmin: float, vmax: float)
	**/
	public function set_clim(?vmin:Dynamic, ?vmax:Dynamic):Dynamic;
	/**
		Set the colormap for luminance data.
		
		Parameters
		----------
		cmap : `.Colormap` or str or None
	**/
	public function set_cmap(cmap:Dynamic):Dynamic;
	/**
		Set the normalization instance.
		
		Parameters
		----------
		norm : `.Normalize` or None
		
		Notes
		-----
		If there are any colorbars using the mappable for this norm, setting
		the norm of the mappable will reset the norm, locator, and formatters
		on the colorbar to default.
	**/
	public function set_norm(norm:Dynamic):Dynamic;
	/**
		Return a normalized rgba array corresponding to *x*.
		
		In the normal case, *x* is a 1D or 2D sequence of scalars, and
		the corresponding ndarray of rgba values will be returned,
		based on the norm and colormap set for this ScalarMappable.
		
		There is one special case, for handling images that are already
		rgb or rgba, such as might have been read from an image file.
		If *x* is an ndarray with 3 dimensions,
		and the last dimension is either 3 or 4, then it will be
		treated as an rgb or rgba array, and no mapping will be done.
		The array can be uint8, or it can be floating point with
		values in the 0-1 range; otherwise a ValueError will be raised.
		If it is a masked array, the mask will be ignored.
		If the last dimension is 3, the *alpha* kwarg (defaulting to 1)
		will be used to fill in the transparency.  If the last dimension
		is 4, the *alpha* kwarg is ignored; it does not
		replace the pre-existing alpha.  A ValueError will be raised
		if the third dimension is other than 3 or 4.
		
		In either case, if *bytes* is *False* (default), the rgba
		array will be floats in the 0-1 range; if it is *True*,
		the returned rgba array will be uint8 in the 0 to 255 range.
		
		If norm is False, no normalization of the input data is
		performed, and it is assumed to be in the range (0-1).
	**/
	public function to_rgba(x:Dynamic, ?alpha:Dynamic, ?bytes:Dynamic, ?norm:Dynamic):Dynamic;
}