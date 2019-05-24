/* This file is generated, do not edit! */
package matplotlib.colorbar;
@:pythonImport("matplotlib.colorbar", "ColorbarBase") extern class ColorbarBase {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?alpha:Dynamic, ?values:Dynamic, ?boundaries:Dynamic, ?orientation:Dynamic, ?ticklocation:Dynamic, ?extend:Dynamic, ?spacing:Dynamic, ?ticks:Dynamic, ?format:Dynamic, ?drawedges:Dynamic, ?filled:Dynamic, ?extendfrac:Dynamic, ?extendrect:Dynamic, ?label:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(ax:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?alpha:Dynamic, ?values:Dynamic, ?boundaries:Dynamic, ?orientation:Dynamic, ?ticklocation:Dynamic, ?extend:Dynamic, ?spacing:Dynamic, ?ticks:Dynamic, ?format:Dynamic, ?drawedges:Dynamic, ?filled:Dynamic, ?extendfrac:Dynamic, ?extendrect:Dynamic, ?label:Dynamic):Void;
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
		Draw the colors using :meth:`~matplotlib.axes.Axes.pcolormesh`;
		optionally add separators.
	**/
	public function _add_solids(X:Dynamic, Y:Dynamic, C:Dynamic):Dynamic;
	/**
		Return the number of boundaries excluding end extensions.
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
		Return whether the lower limit is open ended.
	**/
	public function _extend_lower():Dynamic;
	/**
		Return whether the uper limit is open ended.
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
		This code looks at the norm being used by the colorbar
		and decides what locator and formatter to use.  If ``locator`` has
		already been set by hand, it just returns
		``self.locator, self.formatter``.
	**/
	public function _get_ticker_locator_formatter():Dynamic;
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
	/**
		Reset the locator et al to defaults.  Any user-hardcoded changes
		need to be re-entered if this gets called (either at init, or when
		the mappable normal gets changed: Colorbar.update_normal)
	**/
	public function _reset_locator_formatter_scale():Dynamic;
	public function _set_label():Dynamic;
	static public var _slice_dict : Dynamic;
	/**
		Return the sequence of ticks (colorbar data locations),
		ticklabels (strings), and the corresponding offset string.
	**/
	public function _ticker(locator:Dynamic, formatter:Dynamic):Dynamic;
	/**
		Return colorbar data coordinates for *N* uniformly
		spaced boundaries, plus ends if required.
	**/
	public function _uniform_y(N:Dynamic):Dynamic;
	/**
		Return if we should use an adjustable tick locator or a fixed
		one.  (check is used twice so factored out here...)
	**/
	public function _use_auto_colorbar_locator():Dynamic;
	/**
		Draw lines on the colorbar.
		
		*colors* and *linewidths* must be scalars or
		sequences the same length as *levels*.
		
		Set *erase* to False to add lines without first
		removing any previously added lines.
	**/
	public function add_lines(levels:Dynamic, colors:Dynamic, linewidths:Dynamic, ?erase:Dynamic):Dynamic;
	public function config_axis():Dynamic;
	/**
		Calculate any free parameters based on the current cmap and norm,
		and do all the drawing.
	**/
	public function draw_all():Dynamic;
	/**
		[*Deprecated*] return the min, max of the color limits for image scaling
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	public function get_clim():Dynamic;
	/**
		[*Deprecated*] return the colormap
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	public function get_cmap():Dynamic;
	/**
		Return the x ticks as a list of locations.
	**/
	public function get_ticks(?minor:Dynamic):Dynamic;
	/**
		Turns off the minor ticks on the colorbar.
	**/
	public function minorticks_off():Dynamic;
	/**
		Turns on the minor ticks on the colorbar without extruding
		into the "extend regions".
	**/
	public function minorticks_on():Dynamic;
	static public var n_rasterize : Dynamic;
	/**
		Remove this colorbar from the figure
	**/
	public function remove():Dynamic;
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		[*Deprecated*] `.colorbar.Colorbar.set_clim` does nothing; set the limits on
		the mappable associated with this colorbar.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	public function set_clim(?vmin:Dynamic, ?vmax:Dynamic):Dynamic;
	/**
		[*Deprecated*] `.colorbar.Colorbar.set_cmap` does nothing; set the norm on
		the mappable associated with this colorbar.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	public function set_cmap(cmap:Dynamic):Dynamic;
	/**
		Label the long axis of the colorbar.
	**/
	public function set_label(label:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] `.colorbar.Colorbar.set_norm` does nothing; set the norm on
		the mappable associated with this colorbar.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	public function set_norm(norm:Dynamic):Dynamic;
	/**
		Set tick labels.
		
		Tick labels are updated immediately unless *update_ticks* is *False*,
		in which case one should call `.update_ticks` explicitly.
	**/
	public function set_ticklabels(ticklabels:Dynamic, ?update_ticks:Dynamic):Dynamic;
	/**
		Set tick locations.
		
		Parameters
		----------
		ticks : {None, sequence, :class:`~matplotlib.ticker.Locator` instance}
		    If None, a default Locator will be used.
		
		update_ticks : {True, False}, optional
		    If True, tick locations are updated immediately.  If False,
		    use :meth:`update_ticks` to manually update the ticks.
	**/
	public function set_ticks(ticks:Dynamic, ?update_ticks:Dynamic):Dynamic;
	/**
		Force the update of the ticks and ticklabels. This must be
		called whenever the tick locator and/or tick formatter changes.
	**/
	public function update_ticks():Dynamic;
}