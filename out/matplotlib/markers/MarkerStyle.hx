/* This file is generated, do not edit! */
package matplotlib.markers;
@:pythonImport("matplotlib.markers", "MarkerStyle") extern class MarkerStyle {
	public function __bool__():Dynamic;
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
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		MarkerStyle
		
		Attributes
		----------
		markers : list of known markes
		
		fillstyles : list of known fillstyles
		
		filled_markers : list of known filled markers.
		
		Parameters
		----------
		marker : string or array_like, optional, default: None
		    See the descriptions of possible markers in the module docstring.
		
		fillstyle : string, optional, default: 'full'
		    'full', 'left", 'right', 'bottom', 'top', 'none'
	**/
	@:native("__init__")
	public function ___init__(?marker:Dynamic, ?fillstyle:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function __setstate__(statedict:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var _caret_path : Dynamic;
	public function _half_fill():Dynamic;
	static public var _half_fillstyles : Dynamic;
	static public var _line_marker_path : Dynamic;
	static public var _plus_path : Dynamic;
	static public var _point_size_reduction : Dynamic;
	public function _recache():Dynamic;
	public function _set_caretdown():Dynamic;
	public function _set_caretleft():Dynamic;
	public function _set_caretright():Dynamic;
	public function _set_caretup():Dynamic;
	public function _set_circle(?reduction:Dynamic):Dynamic;
	public function _set_custom_marker(path:Dynamic):Dynamic;
	public function _set_diamond():Dynamic;
	public function _set_hexagon1():Dynamic;
	public function _set_hexagon2():Dynamic;
	public function _set_hline():Dynamic;
	/**
		Draws mathtext markers '$...$' using TextPath object.
		
		Submitted by tcb
	**/
	public function _set_mathtext_path():Dynamic;
	public function _set_nothing():Dynamic;
	public function _set_octagon():Dynamic;
	public function _set_path_marker():Dynamic;
	public function _set_pentagon():Dynamic;
	public function _set_pixel():Dynamic;
	public function _set_plus():Dynamic;
	public function _set_point():Dynamic;
	public function _set_square():Dynamic;
	public function _set_star():Dynamic;
	public function _set_thin_diamond():Dynamic;
	public function _set_tickdown():Dynamic;
	public function _set_tickleft():Dynamic;
	public function _set_tickright():Dynamic;
	public function _set_tickup():Dynamic;
	public function _set_tri_down():Dynamic;
	public function _set_tri_left():Dynamic;
	public function _set_tri_right():Dynamic;
	public function _set_tri_up():Dynamic;
	public function _set_triangle(rot:Dynamic, skip:Dynamic):Dynamic;
	public function _set_triangle_down():Dynamic;
	public function _set_triangle_left():Dynamic;
	public function _set_triangle_right():Dynamic;
	public function _set_triangle_up():Dynamic;
	public function _set_tuple_marker():Dynamic;
	public function _set_vertices():Dynamic;
	public function _set_vline():Dynamic;
	public function _set_x():Dynamic;
	static public var _tickhoriz_path : Dynamic;
	static public var _tickvert_path : Dynamic;
	static public var _tri_path : Dynamic;
	static public var _triangle_path : Dynamic;
	static public var _triangle_path_d : Dynamic;
	static public var _triangle_path_l : Dynamic;
	static public var _triangle_path_r : Dynamic;
	static public var _triangle_path_u : Dynamic;
	static public var _x_path : Dynamic;
	static public var filled_markers : Dynamic;
	static public var fillstyles : Dynamic;
	public function get_alt_path():Dynamic;
	public function get_alt_transform():Dynamic;
	public function get_capstyle():Dynamic;
	public function get_fillstyle():Dynamic;
	public function get_joinstyle():Dynamic;
	public function get_marker():Dynamic;
	public function get_path():Dynamic;
	public function get_snap_threshold():Dynamic;
	public function get_transform():Dynamic;
	public function is_filled():Dynamic;
	static public var markers : Dynamic;
	/**
		Sets fillstyle
		
		Parameters
		----------
		fillstyle : string amongst known fillstyles
	**/
	public function set_fillstyle(fillstyle:Dynamic):Dynamic;
	public function set_marker(marker:Dynamic):Dynamic;
}