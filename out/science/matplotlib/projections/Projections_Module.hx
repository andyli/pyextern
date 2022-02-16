/* This file is generated, do not edit! */
package matplotlib.projections;
@:pythonImport("matplotlib.projections") extern class Projections_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get a projection class from its name.
		
		If *projection* is None, a standard rectilinear projection is returned.
	**/
	static public function get_projection_class(?projection:Dynamic):Dynamic;
	/**
		Return the names of all projections currently registered.
	**/
	static public function get_projection_names():Dynamic;
	static public var projection_registry : Dynamic;
	static public function register_projection(cls:Dynamic):Dynamic;
}