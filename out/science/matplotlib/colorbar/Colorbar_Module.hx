/* This file is generated, do not edit! */
package matplotlib.colorbar;
@:pythonImport("matplotlib.colorbar") extern class Colorbar_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getattr__(name:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _colormap_kw_doc : Dynamic;
	static public var _log : Dynamic;
	static public var _make_axes_other_param_doc : Dynamic;
	static public var _make_axes_param_doc : Dynamic;
	static public function _normalize_location_orientation(location:Dynamic, orientation:Dynamic):Dynamic;
	static public function _set_ticks_on_axis_warn(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] Create a colorbar on the given axes for the given mappable.
		
		.. note::
		    This is a low-level function to turn an existing axes into a colorbar
		    axes.  Typically, you'll want to use `~.Figure.colorbar` instead, which
		    automatically handles creation and placement of a suitable axes as
		    well.
		
		Parameters
		----------
		cax : `~matplotlib.axes.Axes`
		    The `~.axes.Axes` to turn into a colorbar.
		mappable : `~matplotlib.cm.ScalarMappable`
		    The mappable to be described by the colorbar.
		**kwargs
		    Keyword arguments are passed to the respective colorbar class.
		
		Returns
		-------
		`.Colorbar`
		    The created colorbar instance.
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	static public function colorbar_factory(cax:Dynamic, mappable:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create an `~.axes.Axes` suitable for a colorbar.
		
		The axes is placed in the figure of the *parents* axes, by resizing and
		repositioning *parents*.
		
		Parameters
		----------
		parents : `~.axes.Axes` or list of `~.axes.Axes`
		    The Axes to use as parents for placing the colorbar.
		
		location : None or {'left', 'right', 'top', 'bottom'}
		    The location, relative to the parent axes, where the colorbar axes
		    is created.  It also determines the *orientation* of the colorbar
		    (colorbars on the left and right are vertical, colorbars at the top
		    and bottom are horizontal).  If None, the location will come from the
		    *orientation* if it is set (vertical colorbars on the right, horizontal
		    ones at the bottom), or default to 'right' if *orientation* is unset.
		orientation : None or {'vertical', 'horizontal'}
		    The orientation of the colorbar.  It is preferable to set the *location*
		    of the colorbar, as that also determines the *orientation*; passing
		    incompatible values for *location* and *orientation* raises an exception.
		fraction : float, default: 0.15
		    Fraction of original axes to use for colorbar.
		shrink : float, default: 1.0
		    Fraction by which to multiply the size of the colorbar.
		aspect : float, default: 20
		    Ratio of long to short dimensions.
		
		
		Returns
		-------
		cax : `~.axes.Axes`
		    The child axes.
		kw : dict
		    The reduced keyword dictionary to be passed when creating the colorbar
		    instance.
		
		Other Parameters
		----------------
		
		pad : float, default: 0.05 if vertical, 0.15 if horizontal
		    Fraction of original axes between colorbar and new image axes.
		anchor : (float, float), optional
		    The anchor point of the colorbar axes.
		    Defaults to (0.0, 0.5) if vertical; (0.5, 1.0) if horizontal.
		panchor : (float, float), or *False*, optional
		    The anchor point of the colorbar parent axes. If *False*, the parent
		    axes' anchor will be unchanged.
		    Defaults to (1.0, 0.5) if vertical; (0.5, 0.0) if horizontal.
	**/
	static public function make_axes(parents:Dynamic, ?location:Dynamic, ?orientation:Dynamic, ?fraction:Dynamic, ?shrink:Dynamic, ?aspect:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a `.SubplotBase` suitable for a colorbar.
		
		The axes is placed in the figure of the *parent* axes, by resizing and
		repositioning *parent*.
		
		This function is similar to `.make_axes`. Primary differences are
		
		- `.make_axes_gridspec` should only be used with a `.SubplotBase` parent.
		
		- `.make_axes` creates an `~.axes.Axes`; `.make_axes_gridspec` creates a
		  `.SubplotBase`.
		
		- `.make_axes` updates the position of the parent.  `.make_axes_gridspec`
		  replaces the ``grid_spec`` attribute of the parent with a new one.
		
		While this function is meant to be compatible with `.make_axes`,
		there could be some minor differences.
		
		Parameters
		----------
		parent : `~.axes.Axes`
		    The Axes to use as parent for placing the colorbar.
		
		location : None or {'left', 'right', 'top', 'bottom'}
		    The location, relative to the parent axes, where the colorbar axes
		    is created.  It also determines the *orientation* of the colorbar
		    (colorbars on the left and right are vertical, colorbars at the top
		    and bottom are horizontal).  If None, the location will come from the
		    *orientation* if it is set (vertical colorbars on the right, horizontal
		    ones at the bottom), or default to 'right' if *orientation* is unset.
		orientation : None or {'vertical', 'horizontal'}
		    The orientation of the colorbar.  It is preferable to set the *location*
		    of the colorbar, as that also determines the *orientation*; passing
		    incompatible values for *location* and *orientation* raises an exception.
		fraction : float, default: 0.15
		    Fraction of original axes to use for colorbar.
		shrink : float, default: 1.0
		    Fraction by which to multiply the size of the colorbar.
		aspect : float, default: 20
		    Ratio of long to short dimensions.
		
		
		Returns
		-------
		cax : `~.axes.SubplotBase`
		    The child axes.
		kw : dict
		    The reduced keyword dictionary to be passed when creating the colorbar
		    instance.
		
		Other Parameters
		----------------
		
		pad : float, default: 0.05 if vertical, 0.15 if horizontal
		    Fraction of original axes between colorbar and new image axes.
		anchor : (float, float), optional
		    The anchor point of the colorbar axes.
		    Defaults to (0.0, 0.5) if vertical; (0.5, 1.0) if horizontal.
		panchor : (float, float), or *False*, optional
		    The anchor point of the colorbar parent axes. If *False*, the parent
		    axes' anchor will be unchanged.
		    Defaults to (1.0, 0.5) if vertical; (0.5, 0.0) if horizontal.
	**/
	static public function make_axes_gridspec(parent:Dynamic, ?location:Dynamic, ?orientation:Dynamic, ?fraction:Dynamic, ?shrink:Dynamic, ?aspect:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
}