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
	static public var _mpl_version : Dynamic;
	/**
		Return an override dict.  See :func:`~pyplot.text' docstring for info
	**/
	static public function _process_text_args(_override:Dynamic, ?fontdict:Dynamic, kwargs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependant renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Create a figure with specified aspect ratio.  If *arg* is a number,
		use that aspect ratio.  If *arg* is an array, figaspect will
		determine the width and height for a figure that would fit array
		preserving aspect ratio.  The figure width, height in inches are
		returned.  Be sure to create an axes with equal with and height,
		e.g.,
		
		Example usage::
		
		  # make a figure twice as tall as it is wide
		  w, h = figaspect(2.)
		  fig = Figure(figsize=(w,h))
		  ax = fig.add_axes([0.1, 0.1, 0.8, 0.8])
		  ax.imshow(A, **kwargs)
		
		
		  # make a figure with the proper aspect for an array
		  A = rand(5,3)
		  w, h = figaspect(A)
		  fig = Figure(figsize=(w,h))
		  ax = fig.add_axes([0.1, 0.1, 0.8, 0.8])
		  ax.imshow(A, **kwargs)
		
		Thanks to Fernando Perez for this function
	**/
	static public function figaspect(arg:Dynamic):Dynamic;
	/**
		Get a list of acceptable projection names.
	**/
	static public function get_projection_names():Dynamic;
	/**
		return true if *obj* is iterable
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Handle the args/kwargs to for add_axes/add_subplot/gca,
		returning::
		
		    (axes_proj_class, proj_class_kwargs, proj_stack_key)
		
		Which can be used for new axes initialization/identification.
		
		.. note:: **kwargs** is modified in place.
	**/
	static public function process_projection_requirements(figure:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public function subplot_class_factory(?axes_class:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}