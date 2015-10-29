/* This file is generated, do not edit! */
package matplotlib.colorbar;
@:pythonImport("matplotlib.colorbar", "ColorbarBase") extern class ColorbarBase {
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
		Parameters
		----------
		norm : :class:`matplotlib.colors.Normalize` instance
		    The normalizing object which scales data, typically into the
		    interval ``[0, 1]``.
		cmap : str or :class:`~matplotlib.colors.Colormap` instance
		    The colormap used to map normalized data values to RGBA colors.
	**/
	public function __init__(ax:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?alpha:Dynamic, ?values:Dynamic, ?boundaries:Dynamic, ?orientation:Dynamic, ?ticklocation:Dynamic, ?extend:Dynamic, ?spacing:Dynamic, ?ticks:Dynamic, ?format:Dynamic, ?drawedges:Dynamic, ?filled:Dynamic, ?extendfrac:Dynamic, ?extendrect:Dynamic, ?label:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Draw the colors using :meth:`~matplotlib.axes.Axes.pcolormesh`;
		optionally add separators.
	**/
	public function _add_solids(X:Dynamic, Y:Dynamic, C:Dynamic):Dynamic;
	/**
		number of boundaries **before** extension of ends
	**/
	public function _central_N():Dynamic;
	/**
		Make an axes patch and outline.
	**/
	public function _config_axes(X:Dynamic, Y:Dynamic):Dynamic;
	/**
		Return the separator line segments; helper for _add_solids.
	**/
	public function _edges(X:Dynamic, Y:Dynamic):Dynamic;
	/**
		Returns whether the lower limit is open ended.
	**/
	public function _extend_lower():Dynamic;
	/**
		Returns whether the uper limit is open ended.
	**/
	public function _extend_upper():Dynamic;
	/**
		Based on the colormap and extend variable, return the
		number of boundaries.
	**/
	public function _extended_N():Dynamic;
	/**
		Set :attr:`vmin` and :attr:`vmax` attributes to the first and
		last boundary excluding extended end boundaries.
	**/
	public function _find_range():Dynamic;
	/**
		Get the lengths of colorbar extensions.
		
		A helper method for _uniform_y and _proportional_y.
	**/
	public function _get_extension_lengths(frac:Dynamic, automin:Dynamic, automax:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Given a set of color data values, return their
		corresponding colorbar data coordinates.
	**/
	public function _locate(x:Dynamic):Dynamic;
	/**
		Return X,Y, the coordinate arrays for the colorbar pcolormesh.
		These are suitable for a vertical colorbar; swapping and
		transposition for a horizontal colorbar are done outside
		this function.
	**/
	public function _mesh():Dynamic;
	/**
		Return *x*, *y* arrays of colorbar bounding polygon,
		taking orientation into account.
	**/
	public function _outline(X:Dynamic, Y:Dynamic):Dynamic;
	public function _patch_ax():Dynamic;
	/**
		Set the :attr:`_boundaries` and :attr:`_values` attributes
		based on the input boundaries and values.  Input boundaries
		can be *self.boundaries* or the argument *b*.
	**/
	public function _process_values(?b:Dynamic):Dynamic;
	/**
		Return colorbar data coordinates for the boundaries of
		a proportional colorbar.
	**/
	public function _proportional_y():Dynamic;
	public function _set_label():Dynamic;
	static public var _slice_dict : Dynamic;
	/**
		Return the sequence of ticks (colorbar data locations),
		ticklabels (strings), and the corresponding offset string.
	**/
	public function _ticker():Dynamic;
	/**
		Return colorbar data coordinates for *N* uniformly
		spaced boundaries, plus ends if required.
	**/
	public function _uniform_y(N:Dynamic):Dynamic;
	/**
		Add an entry to a dictionary of boolean flags
		that are set to True when the mappable is changed.
	**/
	public function add_checker(checker:Dynamic):Dynamic;
	/**
		Draw lines on the colorbar.
		
		*colors* and *linewidths* must be scalars or
		sequences the same length as *levels*.
		
		Set *erase* to False to add lines without first
		removing any previously added lines.
	**/
	public function add_lines(levels:Dynamic, colors:Dynamic, linewidths:Dynamic, ?erase:Dynamic):Dynamic;
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
	/**
		Call this whenever the mappable is changed to notify all the
		callbackSM listeners to the 'changed' signal
	**/
	public function changed():Dynamic;
	/**
		If mappable has changed since the last check,
		return True; else return False
	**/
	public function check_update(checker:Dynamic):Dynamic;
	public function config_axis():Dynamic;
	/**
		Calculate any free parameters based on the current cmap and norm,
		and do all the drawing.
	**/
	public function draw_all():Dynamic;
	/**
		Return the array
	**/
	public function get_array():Dynamic;
	/**
		return the min, max of the color limits for image scaling
	**/
	public function get_clim():Dynamic;
	/**
		return the colormap
	**/
	public function get_cmap():Dynamic;
	/**
		Remove this colorbar from the figure
	**/
	public function remove():Dynamic;
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the image array from numpy array *A*
	**/
	public function set_array(A:Dynamic):Dynamic;
	/**
		set the norm limits for image scaling; if *vmin* is a length2
		sequence, interpret it as ``(vmin, vmax)`` which is used to
		support setp
		
		ACCEPTS: a length 2 sequence of floats
	**/
	public function set_clim(?vmin:Dynamic, ?vmax:Dynamic):Dynamic;
	/**
		set the colormap for luminance data
		
		ACCEPTS: a colormap or registered colormap name
	**/
	public function set_cmap(cmap:Dynamic):Dynamic;
	/**
		.. deprecated:: 1.3
		    The set_colorbar function was deprecated in version 1.3. Use the colorbar attribute instead.
		
		set the colorbar and axes instances associated with mappable
	**/
	public function set_colorbar(im:Dynamic, ax:Dynamic):Dynamic;
	/**
		Label the long axis of the colorbar
	**/
	public function set_label(label:Dynamic, kw:Dynamic):Dynamic;
	/**
		set the normalization instance
	**/
	public function set_norm(norm:Dynamic):Dynamic;
	/**
		set tick labels. Tick labels are updated immediately unless
		update_ticks is *False*. To manually update the ticks, call
		*update_ticks* method explicitly.
	**/
	public function set_ticklabels(ticklabels:Dynamic, ?update_ticks:Dynamic):Dynamic;
	/**
		set tick locations. Tick locations are updated immediately unless
		update_ticks is *False*. To manually update the ticks, call
		*update_ticks* method explicitly.
	**/
	public function set_ticks(ticks:Dynamic, ?update_ticks:Dynamic):Dynamic;
	/**
		Return a normalized rgba array corresponding to *x*.
		
		In the normal case, *x* is a 1-D or 2-D sequence of scalars, and
		the corresponding ndarray of rgba values will be returned,
		based on the norm and colormap set for this ScalarMappable.
		
		There is one special case, for handling images that are already
		rgb or rgba, such as might have been read from an image file.
		If *x* is an ndarray with 3 dimensions,
		and the last dimension is either 3 or 4, then it will be
		treated as an rgb or rgba array, and no mapping will be done.
		If the last dimension is 3, the *alpha* kwarg (defaulting to 1)
		will be used to fill in the transparency.  If the last dimension
		is 4, the *alpha* kwarg is ignored; it does not
		replace the pre-existing alpha.  A ValueError will be raised
		if the third dimension is other than 3 or 4.
		
		In either case, if *bytes* is *False* (default), the rgba
		array will be floats in the 0-1 range; if it is *True*,
		the returned rgba array will be uint8 in the 0 to 255 range.
		
		Note: this method assumes the input is well-behaved; it does
		not check for anomalies such as *x* being a masked rgba
		array, or being an integer type other than uint8, or being
		a floating point rgba array with values outside the 0-1 range.
	**/
	public function to_rgba(x:Dynamic, ?alpha:Dynamic, ?bytes:Dynamic):Dynamic;
	/**
		Force the update of the ticks and ticklabels. This must be
		called whenever the tick locator and/or tick formatter changes.
	**/
	public function update_ticks():Dynamic;
}