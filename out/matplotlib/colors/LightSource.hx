/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "LightSource") extern class LightSource {
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
		Specify the azimuth (measured clockwise from south) and altitude
		(measured up from the plane of the surface) of the light source
		in degrees.
		
		Parameters
		----------
		azdeg : number, optional
		    The azimuth (0-360, degrees clockwise from North) of the light
		    source. Defaults to 315 degrees (from the northwest).
		altdeg : number, optional
		    The altitude (0-90, degrees up from horizontal) of the light
		    source.  Defaults to 45 degrees from horizontal.
		
		Notes
		-----
		For backwards compatibility, the parameters *hsv_min_val*,
		*hsv_max_val*, *hsv_min_sat*, and *hsv_max_sat* may be supplied at
		initialization as well.  However, these parameters will only be used if
		"blend_mode='hsv'" is passed into :meth:`shade` or :meth:`shade_rgb`.
		See the documentation for :meth:`blend_hsv` for more details.
	**/
	@:native("__init__")
	public function ___init__(?azdeg:Dynamic, ?altdeg:Dynamic, ?hsv_min_val:Dynamic, ?hsv_max_val:Dynamic, ?hsv_min_sat:Dynamic, ?hsv_max_sat:Dynamic):Dynamic;
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
		Take the input data array, convert to HSV values in the given colormap,
		then adjust those color values to give the impression of a shaded
		relief map with a specified light source.  RGBA values are returned,
		which can then be used to plot the shaded image with imshow.
		
		The color of the resulting image will be darkened by moving the (s,v)
		values (in hsv colorspace) toward (hsv_min_sat, hsv_min_val) in the
		shaded regions, or lightened by sliding (s,v) toward (hsv_max_sat
		hsv_max_val) in regions that are illuminated.  The default extremes are
		chose so that completely shaded points are nearly black (s = 1, v = 0)
		and completely illuminated points are nearly white (s = 0, v = 1).
		
		Parameters
		----------
		rgb : ndarray
		    An MxNx3 RGB array of floats ranging from 0 to 1 (color image).
		intensity : ndarray
		    An MxNx1 array of floats ranging from 0 to 1 (grayscale image).
		hsv_max_sat : number, optional
		    The maximum saturation value that the *intensity* map can shift the
		    output image to. Defaults to 1.
		hsv_min_sat : number, optional
		    The minimum saturation value that the *intensity* map can shift the
		    output image to. Defaults to 0.
		hsv_max_val : number, optional
		    The maximum value ("v" in "hsv") that the *intensity* map can shift
		    the output image to. Defaults to 1.
		hsv_min_val: number, optional
		    The minimum value ("v" in "hsv") that the *intensity* map can shift
		    the output image to. Defaults to 0.
		
		Returns
		-------
		rgb : ndarray
		    An MxNx3 RGB array representing the combined images.
	**/
	public function blend_hsv(rgb:Dynamic, intensity:Dynamic, ?hsv_max_sat:Dynamic, ?hsv_max_val:Dynamic, ?hsv_min_val:Dynamic, ?hsv_min_sat:Dynamic):Dynamic;
	/**
		Combines an rgb image with an intensity map using "overlay" blending.
		
		Parameters
		----------
		rgb : ndarray
		    An MxNx3 RGB array of floats ranging from 0 to 1 (color image).
		intensity : ndarray
		    An MxNx1 array of floats ranging from 0 to 1 (grayscale image).
		
		Returns
		-------
		rgb : ndarray
		    An MxNx3 RGB array representing the combined images.
	**/
	public function blend_overlay(rgb:Dynamic, intensity:Dynamic):Dynamic;
	/**
		Combines an rgb image with an intensity map using "soft light"
		blending.  Uses the "pegtop" formula.
		
		Parameters
		----------
		rgb : ndarray
		    An MxNx3 RGB array of floats ranging from 0 to 1 (color image).
		intensity : ndarray
		    An MxNx1 array of floats ranging from 0 to 1 (grayscale image).
		
		Returns
		-------
		rgb : ndarray
		    An MxNx3 RGB array representing the combined images.
	**/
	public function blend_soft_light(rgb:Dynamic, intensity:Dynamic):Dynamic;
	/**
		Calculates the illumination intensity for a surface using the defined
		azimuth and elevation for the light source.
		
		Imagine an artificial sun placed at infinity in some azimuth and
		elevation position illuminating our surface. The parts of the surface
		that slope toward the sun should brighten while those sides facing away
		should become darker.
		
		Parameters
		----------
		elevation : array-like
		    A 2d array (or equivalent) of the height values used to generate an
		    illumination map
		vert_exag : number, optional
		    The amount to exaggerate the elevation values by when calculating
		    illumination. This can be used either to correct for differences in
		    units between the x-y coordinate system and the elevation
		    coordinate system (e.g. decimal degrees vs meters) or to exaggerate
		    or de-emphasize topographic effects.
		dx : number, optional
		    The x-spacing (columns) of the input *elevation* grid.
		dy : number, optional
		    The y-spacing (rows) of the input *elevation* grid.
		fraction : number, optional
		    Increases or decreases the contrast of the hillshade.  Values
		    greater than one will cause intermediate values to move closer to
		    full illumination or shadow (and clipping any values that move
		    beyond 0 or 1). Note that this is not visually or mathematically
		    the same as vertical exaggeration.
		Returns
		-------
		intensity : ndarray
		    A 2d array of illumination values between 0-1, where 0 is
		    completely in shadow and 1 is completely illuminated.
	**/
	public function hillshade(elevation:Dynamic, ?vert_exag:Dynamic, ?dx:Dynamic, ?dy:Dynamic, ?fraction:Dynamic):Dynamic;
	/**
		Combine colormapped data values with an illumination intensity map
		(a.k.a.  "hillshade") of the values.
		
		Parameters
		----------
		data : array-like
		    A 2d array (or equivalent) of the height values used to generate a
		    shaded map.
		cmap : `~matplotlib.colors.Colormap` instance
		    The colormap used to color the *data* array. Note that this must be
		    a `~matplotlib.colors.Colormap` instance.  For example, rather than
		    passing in `cmap='gist_earth'`, use
		    `cmap=plt.get_cmap('gist_earth')` instead.
		norm : `~matplotlib.colors.Normalize` instance, optional
		    The normalization used to scale values before colormapping. If
		    None, the input will be linearly scaled between its min and max.
		blend_mode : {'hsv', 'overlay', 'soft'} or callable, optional
		    The type of blending used to combine the colormapped data values
		    with the illumination intensity.  For backwards compatibility, this
		    defaults to "hsv". Note that for most topographic surfaces,
		    "overlay" or "soft" appear more visually realistic. If a
		    user-defined function is supplied, it is expected to combine an
		    MxNx3 RGB array of floats (ranging 0 to 1) with an MxNx1 hillshade
		    array (also 0 to 1).  (Call signature `func(rgb, illum, **kwargs)`)
		    Additional kwargs supplied to this function will be passed on to
		    the *blend_mode* function.
		vmin : scalar or None, optional
		    The minimum value used in colormapping *data*. If *None* the
		    minimum value in *data* is used. If *norm* is specified, then this
		    argument will be ignored.
		vmax : scalar or None, optional
		    The maximum value used in colormapping *data*. If *None* the
		    maximum value in *data* is used. If *norm* is specified, then this
		    argument will be ignored.
		vert_exag : number, optional
		    The amount to exaggerate the elevation values by when calculating
		    illumination. This can be used either to correct for differences in
		    units between the x-y coordinate system and the elevation
		    coordinate system (e.g. decimal degrees vs meters) or to exaggerate
		    or de-emphasize topography.
		dx : number, optional
		    The x-spacing (columns) of the input *elevation* grid.
		dy : number, optional
		    The y-spacing (rows) of the input *elevation* grid.
		fraction : number, optional
		    Increases or decreases the contrast of the hillshade.  Values
		    greater than one will cause intermediate values to move closer to
		    full illumination or shadow (and clipping any values that move
		    beyond 0 or 1). Note that this is not visually or mathematically
		    the same as vertical exaggeration.
		Additional kwargs are passed on to the *blend_mode* function.
		
		Returns
		-------
		rgba : ndarray
		    An MxNx4 array of floats ranging between 0-1.
	**/
	public function shade(data:Dynamic, cmap:Dynamic, ?norm:Dynamic, ?blend_mode:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?vert_exag:Dynamic, ?dx:Dynamic, ?dy:Dynamic, ?fraction:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Take the input RGB array (ny*nx*3) adjust their color values
		to given the impression of a shaded relief map with a
		specified light source using the elevation (ny*nx).
		A new RGB array ((ny*nx*3)) is returned.
		
		Parameters
		----------
		rgb : array-like
		    An MxNx3 RGB array, assumed to be in the range of 0 to 1.
		elevation : array-like
		    A 2d array (or equivalent) of the height values used to generate a
		    shaded map.
		fraction : number
		    Increases or decreases the contrast of the hillshade.  Values
		    greater than one will cause intermediate values to move closer to
		    full illumination or shadow (and clipping any values that move
		    beyond 0 or 1). Note that this is not visually or mathematically
		    the same as vertical exaggeration.
		blend_mode : {'hsv', 'overlay', 'soft'} or callable, optional
		    The type of blending used to combine the colormapped data values
		    with the illumination intensity.  For backwards compatibility, this
		    defaults to "hsv". Note that for most topographic surfaces,
		    "overlay" or "soft" appear more visually realistic. If a
		    user-defined function is supplied, it is expected to combine an
		    MxNx3 RGB array of floats (ranging 0 to 1) with an MxNx1 hillshade
		    array (also 0 to 1).  (Call signature `func(rgb, illum, **kwargs)`)
		    Additional kwargs supplied to this function will be passed on to
		    the *blend_mode* function.
		vert_exag : number, optional
		    The amount to exaggerate the elevation values by when calculating
		    illumination. This can be used either to correct for differences in
		    units between the x-y coordinate system and the elevation
		    coordinate system (e.g. decimal degrees vs meters) or to exaggerate
		    or de-emphasize topography.
		dx : number, optional
		    The x-spacing (columns) of the input *elevation* grid.
		dy : number, optional
		    The y-spacing (rows) of the input *elevation* grid.
		Additional kwargs are passed on to the *blend_mode* function.
		
		Returns
		-------
		shaded_rgb : ndarray
		    An MxNx3 array of floats ranging between 0-1.
	**/
	public function shade_rgb(rgb:Dynamic, elevation:Dynamic, ?fraction:Dynamic, ?blend_mode:Dynamic, ?vert_exag:Dynamic, ?dx:Dynamic, ?dy:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}