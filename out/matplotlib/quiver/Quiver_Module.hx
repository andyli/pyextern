/* This file is generated, do not edit! */
package matplotlib.quiver;
@:pythonImport("matplotlib.quiver") extern class Quiver_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _barbs_doc : Dynamic;
	static public function _check_consistent_shapes(?arrays:python.VarArgs<Dynamic>):Dynamic;
	static public function _parse_args(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var _quiver_doc : Dynamic;
	static public var _quiverkey_doc : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependant renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	/**
		Find all masked and/or non-finite points in a set of arguments,
		and return the arguments with only the unmasked points remaining.
		
		Arguments can be in any of 5 categories:
		
		1) 1-D masked arrays
		2) 1-D ndarrays
		3) ndarrays with more than one dimension
		4) other non-string iterables
		5) anything else
		
		The first argument must be in one of the first four categories;
		any argument with a length differing from that of the first
		argument (and hence anything in category 5) then will be
		passed through unchanged.
		
		Masks are obtained from all arguments of the correct length
		in categories 1, 2, and 4; a point is bad if masked in a masked
		array or if it is a nan or inf.  No attempt is made to
		extract a mask from categories 2, 3, and 4 if :meth:`np.isfinite`
		does not yield a Boolean array.
		
		All input arguments that are not passed unchanged are returned
		as ndarrays after removing the points or rows corresponding to
		masks in any of the arguments.
		
		A vastly simpler version of this function was originally
		written as a helper for Axes.scatter().
	**/
	static public function delete_masked_points(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var unicode_literals : Dynamic;
}