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
	static public var _log : Dynamic;
	static public var _mpl_version : Dynamic;
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
		arg : scalar or 2d array
		    If a scalar, this defines the aspect ratio (i.e. the ratio height /
		    width).
		    In case of an array the aspect ratio is number of rows / number of
		    columns, so that the array could be fitted in the figure undistorted.
		
		Returns
		-------
		width, height
		    The figure size in inches.
		
		Notes
		-----
		If you want to create an axes within the figure, that still preserves the
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
		
		    A = rand(5,3)
		    w, h = figaspect(A)
		    fig = Figure(figsize=(w, h))
		    ax = fig.add_axes([0.1, 0.1, 0.8, 0.8])
		    ax.imshow(A, **kwargs)
	**/
	static public function figaspect(arg:Dynamic):Dynamic;
	/**
		Return the name of the current backend.
		
		See Also
		--------
		matplotlib.use
	**/
	static public function get_backend():Dynamic;
	/**
		Get a list of acceptable projection names.
	**/
	static public function get_projection_names():Dynamic;
	/**
		return true if *obj* is iterable
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	/**
		Handle the args/kwargs to add_axes/add_subplot/gca, returning::
		
		    (axes_proj_class, proj_class_kwargs, proj_stack_key)
		
		which can be used for new axes initialization/identification.
	**/
	static public function process_projection_requirements(figure:Dynamic, ?args:python.VarArgs<Dynamic>, ?polar:Dynamic, ?projection:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var rcParams : Dynamic;
	/**
		This makes a new class that inherits from `.SubplotBase` and the
		given axes_class (which is assumed to be a subclass of `.axes.Axes`).
		This is perhaps a little bit roundabout to make a new class on
		the fly like this, but it means that a new Subplot class does
		not have to be created for every type of Axes.
	**/
	static public function subplot_class_factory(?axes_class:Dynamic):Dynamic;
}