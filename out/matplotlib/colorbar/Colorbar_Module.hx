/* This file is generated, do not edit! */
package matplotlib.colorbar;
@:pythonImport("matplotlib.colorbar") extern class Colorbar_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _set_ticks_on_axis_warn(?args:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var colorbar_doc : Dynamic;
	/**
		Creates a colorbar on the given axes for the given mappable.
		
		Typically, for automatic colorbar placement given only a mappable use
		:meth:`~matplotlib.figure.Figure.colorbar`.
	**/
	static public function colorbar_factory(cax:Dynamic, mappable:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var colormap_kw_doc : Dynamic;
	static public var division : Dynamic;
	/**
		Resize and reposition parent axes, and return a child
		axes suitable for a colorbar::
		
		    cax, kw = make_axes(parent, **kw)
		
		Keyword arguments may include the following (with defaults):
		
		    location : [None|'left'|'right'|'top'|'bottom']
		        The position, relative to **parents**, where the colorbar axes
		        should be created. If None, the value will either come from the
		        given ``orientation``, else it will default to 'right'.
		
		    orientation :  [None|'vertical'|'horizontal']
		        The orientation of the colorbar. Typically, this keyword shouldn't
		        be used, as it can be derived from the ``location`` keyword.
		
		
		
		============= ====================================================
		Property      Description
		============= ====================================================
		*orientation* vertical or horizontal
		*fraction*    0.15; fraction of original axes to use for colorbar
		*pad*         0.05 if vertical, 0.15 if horizontal; fraction
		              of original axes between colorbar and new image axes
		*shrink*      1.0; fraction by which to shrink the colorbar
		*aspect*      20; ratio of long to short dimensions
		*anchor*      (0.0, 0.5) if vertical; (0.5, 1.0) if horizontal;
		              the anchor point of the colorbar axes
		*panchor*     (1.0, 0.5) if vertical; (0.5, 0.0) if horizontal;
		              the anchor point of the colorbar parent axes. If
		              False, the parent axes' anchor will be unchanged
		============= ====================================================
		
		
		
		Returns (cax, kw), the child axes and the reduced kw dictionary to be
		passed when creating the colorbar instance.
	**/
	static public function make_axes(parents:Dynamic, ?location:Dynamic, ?orientation:Dynamic, ?fraction:Dynamic, ?shrink:Dynamic, ?aspect:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Resize and reposition a parent axes, and return a child axes
		suitable for a colorbar. This function is similar to
		make_axes. Prmary differences are
		
		 * *make_axes_gridspec* only handles the *orientation* keyword
		   and cannot handle the "location" keyword.
		
		 * *make_axes_gridspec* should only be used with a subplot parent.
		
		 * *make_axes* creates an instance of Axes. *make_axes_gridspec*
		    creates an instance of Subplot.
		
		 * *make_axes* updates the position of the
		    parent. *make_axes_gridspec* replaces the grid_spec attribute
		    of the parent with a new one.
		
		While this function is meant to be compatible with *make_axes*,
		there could be some minor differences.::
		
		    cax, kw = make_axes_gridspec(parent, **kw)
		
		Keyword arguments may include the following (with defaults):
		
		    *orientation*
		        'vertical' or 'horizontal'
		
		
		
		============= ====================================================
		Property      Description
		============= ====================================================
		*orientation* vertical or horizontal
		*fraction*    0.15; fraction of original axes to use for colorbar
		*pad*         0.05 if vertical, 0.15 if horizontal; fraction
		              of original axes between colorbar and new image axes
		*shrink*      1.0; fraction by which to shrink the colorbar
		*aspect*      20; ratio of long to short dimensions
		*anchor*      (0.0, 0.5) if vertical; (0.5, 1.0) if horizontal;
		              the anchor point of the colorbar axes
		*panchor*     (1.0, 0.5) if vertical; (0.5, 0.0) if horizontal;
		              the anchor point of the colorbar parent axes. If
		              False, the parent axes' anchor will be unchanged
		============= ====================================================
		
		
		
		All but the first of these are stripped from the input kw set.
		
		Returns (cax, kw), the child axes and the reduced kw dictionary to be
		passed when creating the colorbar instance.
	**/
	static public function make_axes_gridspec(parent:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var make_axes_kw_doc : Dynamic;
	static public var print_function : Dynamic;
	static public var unicode_literals : Dynamic;
}