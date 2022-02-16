/* This file is generated, do not edit! */
package matplotlib.legend;
@:pythonImport("matplotlib.legend", "DraggableLegend") extern class DraggableLegend {
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
		Wrapper around a `.Legend` to support mouse dragging.
		
		Parameters
		----------
		legend : `.Legend`
		    The `.Legend` instance to wrap.
		use_blit : bool, optional
		    Use blitting for faster image composition. For details see
		    :ref:`func-animation`.
		update : {'loc', 'bbox'}, optional
		    If "loc", update the *loc* parameter of the legend upon finalizing.
		    If "bbox", update the *bbox_to_anchor* parameter.
	**/
	@:native("__init__")
	public function ___init__(legend:Dynamic, ?use_blit:Dynamic, ?update:Dynamic):Dynamic;
	/**
		Wrapper around a `.Legend` to support mouse dragging.
		
		Parameters
		----------
		legend : `.Legend`
		    The `.Legend` instance to wrap.
		use_blit : bool, optional
		    Use blitting for faster image composition. For details see
		    :ref:`func-animation`.
		update : {'loc', 'bbox'}, optional
		    If "loc", update the *loc* parameter of the legend upon finalizing.
		    If "bbox", update the *bbox_to_anchor* parameter.
	**/
	public function new(legend:Dynamic, ?use_blit:Dynamic, ?update:Dynamic):Void;
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
	public function _check_still_parented():Dynamic;
	public function _update_bbox_to_anchor(loc_in_canvas:Dynamic):Dynamic;
	public function _update_loc(loc_in_canvas:Dynamic):Dynamic;
	/**
		Disconnect the callbacks.
	**/
	public function disconnect():Dynamic;
	public function finalize_offset():Dynamic;
	public function get_loc_in_canvas():Dynamic;
	public function on_motion(evt:Dynamic):Dynamic;
	public function on_pick(evt:Dynamic):Dynamic;
	public function on_release(event:Dynamic):Dynamic;
	public function save_offset():Dynamic;
	public function update_offset(dx:Dynamic, dy:Dynamic):Dynamic;
}