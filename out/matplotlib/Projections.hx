/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.projections") extern class Projections {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get a projection class from its name.
		
		If *projection* is None, a standard rectilinear projection is
		returned.
	**/
	static public function get_projection_class(?projection:Dynamic):Dynamic;
	/**
		Get a list of acceptable projection names.
	**/
	static public function get_projection_names():Dynamic;
	static public var print_function : Dynamic;
	/**
		Handle the args/kwargs to for add_axes/add_subplot/gca,
		returning::
		
		    (axes_proj_class, proj_class_kwargs, proj_stack_key)
		
		Which can be used for new axes initialization/identification.
		
		.. note:: **kwargs** is modified in place.
	**/
	static public function process_projection_requirements(figure:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var projection_registry : Dynamic;
	static public function register_projection(cls:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}