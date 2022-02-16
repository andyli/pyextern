/* This file is generated, do not edit! */
package matplotlib.text;
@:pythonImport("matplotlib.text", "_AnnotationBase") extern class _AnnotationBase {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(xy:Dynamic, ?xycoords:Dynamic, ?annotation_clip:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(xy:Dynamic, ?xycoords:Dynamic, ?annotation_clip:Dynamic):Void;
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
	/**
		Check whether the annotation at *xy_pixel* should be drawn.
	**/
	public function _check_xy(renderer:Dynamic):Dynamic;
	/**
		Return the pixel position of the annotated point.
	**/
	public function _get_position_xy(renderer:Dynamic):Dynamic;
	/**
		Return x, y (in display coordinates) that is to be used for a reference
		of any offset coordinate.
	**/
	public function _get_ref_xy(renderer:Dynamic):Dynamic;
	public function _get_xy(renderer:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic):Dynamic;
	public function _get_xy_transform(renderer:Dynamic, s:Dynamic):Dynamic;
	/**
		Set whether the annotation is draggable with the mouse.
		
		Parameters
		----------
		state : bool or None
		    - True or False: set the draggability.
		    - None: toggle the draggability.
		
		Returns
		-------
		DraggableAnnotation or None
		    If the annotation is draggable, the corresponding
		    `.DraggableAnnotation` helper is returned.
	**/
	public function draggable(?state:Dynamic, ?use_blit:Dynamic):Dynamic;
	/**
		Return the annotation's clipping behavior.
		
		See `set_annotation_clip` for the meaning of return values.
	**/
	public function get_annotation_clip():Dynamic;
	/**
		Set the annotation's clipping behavior.
		
		Parameters
		----------
		b : bool or None
		    - True: the annotation will only be drawn when ``self.xy`` is
		      inside the axes.
		    - False: the annotation will always be drawn regardless of its
		      position.
		    - None: the ``self.xy`` will be checked only if *xycoords* is
		      "data".
	**/
	public function set_annotation_clip(b:Dynamic):Dynamic;
}