/* This file is generated, do not edit! */
package matplotlib.text;
@:pythonImport("matplotlib.text", "_AnnotationBase") extern class _AnnotationBase {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(xy:Dynamic, ?xycoords:Dynamic, ?annotation_clip:Dynamic):Dynamic;
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
	/**
		given the xy pixel coordinate, check if the annotation need to
		be drawn.
	**/
	public function _check_xy(renderer:Dynamic, xy_pixel:Dynamic):Dynamic;
	/**
		Return the pixel position of the annotated point.
	**/
	public function _get_position_xy(renderer:Dynamic):Dynamic;
	/**
		return x, y (in display coordinate) that is to be used for a reference
		of any offset coordinate
	**/
	public function _get_ref_xy(renderer:Dynamic):Dynamic;
	public function _get_xy(renderer:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic):Dynamic;
	public function _get_xy_transform(renderer:Dynamic, s:Dynamic):Dynamic;
	/**
		Set the draggable state -- if state is
		
		  * None : toggle the current state
		
		  * True : turn draggable on
		
		  * False : turn draggable off
		
		If draggable is on, you can drag the annotation on the canvas with
		the mouse.  The DraggableAnnotation helper instance is returned if
		draggable is on.
	**/
	public function draggable(?state:Dynamic, ?use_blit:Dynamic):Dynamic;
	/**
		Return *annotation_clip* attribute.
		See :meth:`set_annotation_clip` for the meaning of return values.
	**/
	public function get_annotation_clip():Dynamic;
	/**
		set *annotation_clip* attribute.
		
		  * True: the annotation will only be drawn when self.xy is inside
		          the axes.
		  * False: the annotation will always be drawn regardless of its
		           position.
		  * None: the self.xy will be checked only if *xycoords* is "data"
	**/
	public function set_annotation_clip(b:Dynamic):Dynamic;
}