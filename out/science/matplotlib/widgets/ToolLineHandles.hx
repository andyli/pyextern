/* This file is generated, do not edit! */
package matplotlib.widgets;
@:pythonImport("matplotlib.widgets", "ToolLineHandles") extern class ToolLineHandles {
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
	public function ___init__(ax:Dynamic, positions:Dynamic, direction:Dynamic, ?line_props:Dynamic, ?useblit:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(ax:Dynamic, positions:Dynamic, direction:Dynamic, ?line_props:Dynamic, ?useblit:Dynamic):Void;
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
	public var artists : Dynamic;
	/**
		Return index and pixel distance to closest handle.
		
		Parameters
		----------
		x, y : float
		    x, y position from which the distance will be calculated to
		    determinate the closest handle
		
		Returns
		-------
		index, distance : index of the handle and its distance from
		    position x, y
	**/
	public function closest(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Direction of the handle: 'vertical' or 'horizontal'.
	**/
	public var direction : Dynamic;
	/**
		Positions of the handle in data coordinates.
	**/
	public var positions : Dynamic;
	/**
		Remove the handles artist from the figure.
	**/
	public function remove():Dynamic;
	/**
		Set the animated state of the handles artist.
	**/
	public function set_animated(value:Dynamic):Dynamic;
	/**
		Set x or y positions of handles, depending if the lines are vertical
		of horizontal.
		
		Parameters
		----------
		positions : tuple of length 2
		    Set the positions of the handle in data coordinates
	**/
	public function set_data(positions:Dynamic):Dynamic;
	/**
		Set the visibility state of the handles artist.
	**/
	public function set_visible(value:Dynamic):Dynamic;
}