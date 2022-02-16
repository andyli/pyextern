/* This file is generated, do not edit! */
package matplotlib.markers;
@:pythonImport("matplotlib.markers", "MarkerStyle") extern class MarkerStyle {
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Parameters
		----------
		marker : str, array-like, Path, MarkerStyle, or None, default: None
		    - Another instance of *MarkerStyle* copies the details of that
		      ``marker``.
		    - *None* means no marker.
		    - For other possible marker values see the module docstring
		      `matplotlib.markers`.
		
		fillstyle : str, default: :rc:`markers.fillstyle`
		    One of 'full', 'left', 'right', 'bottom', 'top', 'none'.
	**/
	@:native("__init__")
	public function ___init__(?marker:Dynamic, ?fillstyle:Dynamic):Dynamic;
	/**
		Parameters
		----------
		marker : str, array-like, Path, MarkerStyle, or None, default: None
		    - Another instance of *MarkerStyle* copies the details of that
		      ``marker``.
		    - *None* means no marker.
		    - For other possible marker values see the module docstring
		      `matplotlib.markers`.
		
		fillstyle : str, default: :rc:`markers.fillstyle`
		    One of 'full', 'left', 'right', 'bottom', 'top', 'none'.
	**/
	public function new(?marker:Dynamic, ?fillstyle:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _caret_path : Dynamic;
	static public var _caret_path_base : Dynamic;
	public function _half_fill():Dynamic;
	static public var _half_fillstyles : Dynamic;
	static public var _line_marker_path : Dynamic;
	static public var _plus_filled_path : Dynamic;
	static public var _plus_filled_path_t : Dynamic;
	static public var _plus_path : Dynamic;
	static public var _point_size_reduction : Dynamic;
	public function _recache():Dynamic;
	public function _set_caretdown():Dynamic;
	public function _set_caretdownbase():Dynamic;
	public function _set_caretleft():Dynamic;
	public function _set_caretleftbase():Dynamic;
	public function _set_caretright():Dynamic;
	public function _set_caretrightbase():Dynamic;
	public function _set_caretup():Dynamic;
	public function _set_caretupbase():Dynamic;
	public function _set_circle(?reduction:Dynamic):Dynamic;
	public function _set_custom_marker(path:Dynamic):Dynamic;
	public function _set_diamond():Dynamic;
	/**
		Set the fillstyle.
		
		Parameters
		----------
		fillstyle : {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    The part of the marker surface that is colored with
		    markerfacecolor.
	**/
	public function _set_fillstyle(fillstyle:Dynamic):Dynamic;
	public function _set_hexagon1():Dynamic;
	public function _set_hexagon2():Dynamic;
	public function _set_hline():Dynamic;
	/**
		Set the marker.
		
		Parameters
		----------
		marker : str, array-like, Path, MarkerStyle, or None, default: None
		    - Another instance of *MarkerStyle* copies the details of that
		      ``marker``.
		    - *None* means no marker.
		    - For other possible marker values see the module docstring
		      `matplotlib.markers`.
	**/
	public function _set_marker(marker:Dynamic):Dynamic;
	/**
		Draw mathtext markers '$...$' using TextPath object.
		
		Submitted by tcb
	**/
	public function _set_mathtext_path():Dynamic;
	public function _set_nothing():Dynamic;
	public function _set_octagon():Dynamic;
	public function _set_path_marker():Dynamic;
	public function _set_pentagon():Dynamic;
	public function _set_pixel():Dynamic;
	public function _set_plus():Dynamic;
	public function _set_plus_filled():Dynamic;
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
	public function _set_x_filled():Dynamic;
	static public var _tickhoriz_path : Dynamic;
	static public var _tickvert_path : Dynamic;
	static public var _tri_path : Dynamic;
	static public var _triangle_path : Dynamic;
	static public var _triangle_path_d : Dynamic;
	static public var _triangle_path_l : Dynamic;
	static public var _triangle_path_r : Dynamic;
	static public var _triangle_path_u : Dynamic;
	static public var _x_filled_path : Dynamic;
	static public var _x_filled_path_t : Dynamic;
	static public var _x_path : Dynamic;
	static public var filled_markers : Dynamic;
	static public var fillstyles : Dynamic;
	/**
		Return a `.Path` for the alternate part of the marker.
		
		For unfilled markers, this is *None*; for filled markers, this is the
		area to be drawn with *markerfacecoloralt*.
	**/
	public function get_alt_path():Dynamic;
	/**
		Return the transform to be applied to the `.Path` from
		`MarkerStyle.get_alt_path()`.
	**/
	public function get_alt_transform():Dynamic;
	public function get_capstyle():Dynamic;
	public function get_fillstyle():Dynamic;
	public function get_joinstyle():Dynamic;
	public function get_marker():Dynamic;
	/**
		Return a `.Path` for the primary part of the marker.
		
		For unfilled markers this is the whole marker, for filled markers,
		this is the area to be drawn with *markerfacecolor*.
	**/
	public function get_path():Dynamic;
	public function get_snap_threshold():Dynamic;
	/**
		Return the transform to be applied to the `.Path` from
		`MarkerStyle.get_path()`.
	**/
	public function get_transform():Dynamic;
	public function is_filled():Dynamic;
	static public var markers : Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.4
		   \ 
	**/
	public function set_fillstyle(fillstyle:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.4
		   \ 
	**/
	public function set_marker(marker:Dynamic):Dynamic;
}