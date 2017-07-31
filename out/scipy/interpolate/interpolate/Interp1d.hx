/* This file is generated, do not edit! */
package scipy.interpolate.interpolate;
@:pythonImport("scipy.interpolate.interpolate", "interp1d") extern class Interp1d {
	/**
		Evaluate the interpolant
		
		Parameters
		----------
		x : array_like
		    Points to evaluate the interpolant at.
		
		Returns
		-------
		y : array_like
		    Interpolated values. Shape is determined by replacing
		    the interpolation axis in the original array with the shape of x.
	**/
	public function __call__(x:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize a 1D linear interpolation class.
	**/
	@:native("__init__")
	public function ___init__(x:Dynamic, y:Dynamic, ?kind:Dynamic, ?axis:Dynamic, ?copy:Dynamic, ?bounds_error:Dynamic, ?fill_value:Dynamic, ?assume_sorted:Dynamic):Dynamic;
	/**
		Initialize a 1D linear interpolation class.
	**/
	public function new(x:Dynamic, y:Dynamic, ?kind:Dynamic, ?axis:Dynamic, ?copy:Dynamic, ?bounds_error:Dynamic, ?fill_value:Dynamic, ?assume_sorted:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __slots__ : Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _call_linear(x_new:Dynamic):Dynamic;
	public function _call_linear_np(x_new:Dynamic):Dynamic;
	public function _call_nan_spline(x_new:Dynamic):Dynamic;
	/**
		Find nearest neighbour interpolated y_new = f(x_new).
	**/
	public function _call_nearest(x_new:Dynamic):Dynamic;
	public function _call_spline(x_new:Dynamic):Dynamic;
	/**
		Check the inputs for being in the bounds of the interpolated data.
		
		Parameters
		----------
		x_new : array
		
		Returns
		-------
		out_of_bounds : bool array
		    The mask on x_new of values that are out of the bounds.
	**/
	public function _check_bounds(x_new:Dynamic):Dynamic;
	/**
		Actually evaluate the value of the interpolator.
	**/
	public function _evaluate(x_new:Dynamic):Dynamic;
	/**
		Reshape interpolated y back to n-d array similar to initial y
	**/
	public function _finish_y(y:Dynamic, x_shape:Dynamic):Dynamic;
	/**
		Reshape input x array to 1-D
	**/
	public function _prepare_x(x:Dynamic):Dynamic;
	public function _reshape_yi(yi:Dynamic, ?check:Dynamic):Dynamic;
	public function _set_dtype(dtype:Dynamic, ?union:Dynamic):Dynamic;
	public function _set_yi(yi:Dynamic, ?xi:Dynamic, ?axis:Dynamic):Dynamic;
	public var _y_axis : Dynamic;
	public var _y_extra_shape : Dynamic;
	public var dtype : Dynamic;
	public var fill_value : Dynamic;
}