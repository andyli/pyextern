/* This file is generated, do not edit! */
package matplotlib.colorbar;
@:pythonImport("matplotlib.colorbar", "ColorbarPatch") extern class ColorbarPatch {
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
	@:native("__init__")
	public function ___init__(ax:Dynamic, ?mappable:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?alpha:Dynamic, ?values:Dynamic, ?boundaries:Dynamic, ?orientation:Dynamic, ?ticklocation:Dynamic, ?extend:Dynamic, ?spacing:Dynamic, ?ticks:Dynamic, ?format:Dynamic, ?drawedges:Dynamic, ?filled:Dynamic, ?extendfrac:Dynamic, ?extendrect:Dynamic, ?label:Dynamic):Dynamic;
	public function new(ax:Dynamic, ?mappable:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?alpha:Dynamic, ?values:Dynamic, ?boundaries:Dynamic, ?orientation:Dynamic, ?ticklocation:Dynamic, ?extend:Dynamic, ?spacing:Dynamic, ?ticks:Dynamic, ?format:Dynamic, ?drawedges:Dynamic, ?filled:Dynamic, ?extendfrac:Dynamic, ?extendrect:Dynamic, ?label:Dynamic):Void;
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
		Draw the colors; optionally add separators.
	**/
	public function _add_solids(X:Dynamic, Y:Dynamic, C:Dynamic):Dynamic;
	public function _add_solids_patches(X:Dynamic, Y:Dynamic, C:Dynamic, mappable:Dynamic):Dynamic;
	/**
		Function to clear the interactive colorbar state.
	**/
	public function _cbar_cla():Dynamic;
	/**
		Add the extend tri/rectangles on the outside of the axes.
	**/
	public function _do_extends(extendlen:Dynamic):Dynamic;
	/**
		Return whether the lower limit is open ended.
	**/
	public function _extend_lower():Dynamic;
	/**
		Return whether the upper limit is open ended.
	**/
	public function _extend_upper():Dynamic;
	public function _forward_boundaries(x:Dynamic):Dynamic;
	/**
		Return the lengths of colorbar extensions.
		
		This is a helper method for _uniform_y and _proportional_y.
	**/
	public function _get_extension_lengths(frac:Dynamic, automin:Dynamic, automax:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Return the ``locator`` and ``formatter`` of the colorbar.
		
		If they have not been defined (i.e. are *None*), the formatter and
		locator are retrieved from the axis, or from the value of the
		boundaries for a boundary norm.
		
		Called by update_ticks...
	**/
	public function _get_ticker_locator_formatter():Dynamic;
	public function _get_view():Dynamic;
	public function _inverse_boundaries(x:Dynamic):Dynamic;
	/**
		Given a set of color data values, return their
		corresponding colorbar data coordinates.
	**/
	public function _locate(x:Dynamic):Dynamic;
	/**
		Return the long axis
	**/
	public function _long_axis():Dynamic;
	/**
		Return the coordinate arrays for the colorbar pcolormesh/patches.
		
		These are scaled between vmin and vmax, and already handle colorbar
		orientation.
	**/
	public function _mesh():Dynamic;
	/**
		Set `_boundaries` and `_values` based on the self.boundaries and
		self.values if not None, or based on the size of the colormap and
		the vmin/vmax of the norm.
	**/
	public function _process_values():Dynamic;
	/**
		Return colorbar data coordinates for the boundaries of
		a proportional colorbar, plus extension lengths if required:
	**/
	public function _proportional_y():Dynamic;
	/**
		Reset the locator et al to defaults.  Any user-hardcoded changes
		need to be re-entered if this gets called (either at init, or when
		the mappable normal gets changed: Colorbar.update_normal)
	**/
	public function _reset_locator_formatter_scale():Dynamic;
	/**
		Set the colorbar long axis scale.
		
		Parameters
		----------
		value : {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
		    The axis scale type to apply.
		
		**kwargs
		    Different keyword arguments are accepted, depending on the scale.
		    See the respective class keyword arguments:
		
		    - `matplotlib.scale.LinearScale`
		    - `matplotlib.scale.LogScale`
		    - `matplotlib.scale.SymmetricalLogScale`
		    - `matplotlib.scale.LogitScale`
		    - `matplotlib.scale.FuncScale`
		
		Notes
		-----
		By default, Matplotlib supports the above mentioned scales.
		Additionally, custom scales may be registered using
		`matplotlib.scale.register_scale`. These scales can then also
		be used here.
	**/
	public function _set_scale(scale:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _set_view(view:Dynamic):Dynamic;
	public function _set_view_from_bbox(bbox:Dynamic, ?direction:Dynamic, ?mode:Dynamic, ?twinx:Dynamic, ?twiny:Dynamic):Dynamic;
	/**
		Return the short axis
	**/
	public function _short_axis():Dynamic;
	/**
		Return the sequence of ticks (colorbar data locations),
		ticklabels (strings), and the corresponding offset string.
	**/
	public function _ticker(locator:Dynamic, formatter:Dynamic):Dynamic;
	/**
		Return colorbar data coordinates for *N* uniformly
		spaced boundaries, plus extension lengths if required.
	**/
	public function _uniform_y(N:Dynamic):Dynamic;
	/**
		Draw lines on the colorbar.
		
		The lines are appended to the list :attr:`lines`.
		
		Parameters
		----------
		levels : array-like
		    The positions of the lines.
		colors : color or list of colors
		    Either a single color applying to all lines or one color value for
		    each line.
		linewidths : float or array-like
		    Either a single linewidth applying to all lines or one linewidth
		    for each line.
		erase : bool, default: True
		    Whether to remove any previously added lines.
		
		Notes
		-----
		Alternatively, this method can also be called with the signature
		``colorbar.add_lines(contour_set, erase=True)``, in which case
		*levels*, *colors*, and *linewidths* are taken from *contour_set*.
	**/
	public function add_lines(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function drag_pan(button:Dynamic, key:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	/**
		Calculate any free parameters based on the current cmap and norm,
		and do all the drawing.
	**/
	public function draw_all():Dynamic;
	/**
		Return the ticks as a list of locations.
		
		Parameters
		----------
		minor : boolean, default: False
		    if True return the minor ticks.
	**/
	public function get_ticks(?minor:Dynamic):Dynamic;
	/**
		Turn the minor ticks of the colorbar off.
	**/
	public function minorticks_off():Dynamic;
	/**
		Turn on colorbar minor ticks.
	**/
	public function minorticks_on():Dynamic;
	static public var n_rasterize : Dynamic;
	public var patch : Dynamic;
	/**
		Remove this colorbar from the figure.
		
		If the colorbar was created with ``use_gridspec=True`` the previous
		gridspec is restored.
	**/
	public function remove():Dynamic;
	/**
		Set the transparency between 0 (transparent) and 1 (opaque).
		
		If an array is provided, *alpha* will be set to None to use the
		transparency values associated with the colormap.
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Add a label to the long axis of the colorbar.
		
		Parameters
		----------
		label : str
		    The label text.
		loc : str, optional
		    The location of the label.
		
		    - For horizontal orientation one of {'left', 'center', 'right'}
		    - For vertical orientation one of {'bottom', 'center', 'top'}
		
		    Defaults to :rc:`xaxis.labellocation` or :rc:`yaxis.labellocation`
		    depending on the orientation.
		**kwargs
		    Keyword arguments are passed to `~.Axes.set_xlabel` /
		    `~.Axes.set_ylabel`.
		    Supported keywords are *labelpad* and `.Text` properties.
	**/
	public function set_label(label:Dynamic, ?loc:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set tick labels.
		
		.. admonition:: Discouraged
		
		    The use of this method is discouraged, because of the dependency
		    on tick positions. In most cases, you'll want to use
		    ``set_ticks(positions, labels=labels)`` instead.
		
		    If you are using this method, you should always fix the tick
		    positions before, e.g. by using `.Colorbar.set_ticks` or by
		    explicitly setting a `~.ticker.FixedLocator` on the long axis
		    of the colorbar. Otherwise, ticks are free to move and the
		    labels may end up in unexpected positions.
		
		Parameters
		----------
		ticklabels : sequence of str or of `.Text`
		    Texts for labeling each tick location in the sequence set by
		    `.Colorbar.set_ticks`; the number of labels must match the number
		    of locations.
		
		update_ticks : bool, default: True
		    This keyword argument is ignored and will be be removed.
		    Deprecated
		
		 minor : bool
		    If True, set minor ticks instead of major ticks.
		
		**kwargs
		    `.Text` properties for the labels.
	**/
	public function set_ticklabels(ticklabels:Dynamic, ?update_ticks:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set tick locations.
		
		Parameters
		----------
		ticks : list of floats
		    List of tick locations.
		labels : list of str, optional
		    List of tick labels. If not set, the labels show the data value.
		minor : bool, default: False
		    If ``False``, set the major ticks; if ``True``, the minor ticks.
		**kwargs
		    `.Text` properties for the labels. These take effect only if you
		    pass *labels*. In other cases, please use `~.Axes.tick_params`.
	**/
	public function set_ticks(ticks:Dynamic, ?update_ticks:Dynamic, ?labels:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Update solid patches, lines, etc.
		
		This is meant to be called when the norm of the image or contour plot
		to which this colorbar belongs changes.
		
		If the norm on the mappable is different than before, this resets the
		locator and formatter for the axis, so if these have been customized,
		they will need to be customized again.  However, if the norm only
		changes values of *vmin*, *vmax* or *cmap* then the old formatter
		and locator will be preserved.
	**/
	public function update_normal(mappable:Dynamic):Dynamic;
	/**
		Setup the ticks and ticklabels. This should not be needed by users.
	**/
	public function update_ticks():Dynamic;
}