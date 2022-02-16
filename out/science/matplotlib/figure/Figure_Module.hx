/* This file is generated, do not edit! */
package matplotlib.figure;
@:pythonImport("matplotlib.figure") extern class Figure_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator for Artist.draw method. Needed on the outermost artist, i.e.
		Figure, to finish up if the render is still in rasterized mode.
	**/
	static public function _finalize_rasterization(draw:Dynamic):Dynamic;
	/**
		Get the renderer that would be used to save a `.Figure`, and cache it on
		the figure.
		
		If you need a renderer without any active draw methods use
		renderer._draw_disabled to temporary patch them out at your call site.
	**/
	static public function _get_renderer(figure:Dynamic, ?print_method:Dynamic):Dynamic;
	static public var _log : Dynamic;
	static public function _stale_figure_callback(self:Dynamic, val:Dynamic):Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependent renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	/**
		Calculate the width and height for a figure with a specified aspect ratio.
		
		While the height is taken from :rc:`figure.figsize`, the width is
		adjusted to match the desired aspect ratio. Additionally, it is ensured
		that the width is in the range [4., 16.] and the height is in the range
		[2., 16.]. If necessary, the default height is adjusted to ensure this.
		
		Parameters
		----------
		arg : float or 2D array
		    If a float, this defines the aspect ratio (i.e. the ratio height /
		    width).
		    In case of an array the aspect ratio is number of rows / number of
		    columns, so that the array could be fitted in the figure undistorted.
		
		Returns
		-------
		width, height : float
		    The figure size in inches.
		
		Notes
		-----
		If you want to create an Axes within the figure, that still preserves the
		aspect ratio, be sure to create it with equal width and height. See
		examples below.
		
		Thanks to Fernando Perez for this function.
		
		Examples
		--------
		Make a figure twice as tall as it is wide::
		
		    w, h = figaspect(2.)
		    fig = Figure(figsize=(w, h))
		    ax = fig.add_axes([0.1, 0.1, 0.8, 0.8])
		    ax.imshow(A, **kwargs)
		
		Make a figure with the proper aspect for an array::
		
		    A = rand(5, 3)
		    w, h = figaspect(A)
		    fig = Figure(figsize=(w, h))
		    ax = fig.add_axes([0.1, 0.1, 0.8, 0.8])
		    ax.imshow(A, **kwargs)
	**/
	static public function figaspect(arg:Dynamic):Float;
	static public function subplot_class_factory(axes_class:Dynamic):Dynamic;
}