/* This file is generated, do not edit! */
package matplotlib.delaunay;
@:pythonImport("matplotlib.delaunay.interpolate") extern class Interpolate {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function compute_planes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function linear_interpolate_grid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nn_interpolate_grid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function nn_interpolate_unstructured(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Convert a 2-tuple of slices to start,stop,steps for x and y.
		
		key -- (slice(ystart,ystop,ystep), slice(xtart, xstop, xstep))
		
		For now, the only accepted step values are imaginary integers (interpreted
		in the same way numpy.mgrid, etc. do).
	**/
	static public function slice2gridspec(key:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}