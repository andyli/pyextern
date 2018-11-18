/* This file is generated, do not edit! */
package scipy.spatial.kdtree;
@:pythonImport("scipy.spatial.kdtree", "Rectangle") extern class Rectangle {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Construct a hyperrectangle.
	**/
	@:native("__init__")
	public function ___init__(maxes:Dynamic, mins:Dynamic):Dynamic;
	/**
		Construct a hyperrectangle.
	**/
	public function new(maxes:Dynamic, mins:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Return the maximum distance between input and points in the hyperrectangle.
		
		Parameters
		----------
		x : array_like
		    Input array.
		p : float, optional
		    Input.
	**/
	public function max_distance_point(x:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Compute the maximum distance between points in the two hyperrectangles.
		
		Parameters
		----------
		other : hyperrectangle
		    Input.
		p : float, optional
		    Input.
	**/
	public function max_distance_rectangle(other:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Return the minimum distance between input and points in the hyperrectangle.
		
		Parameters
		----------
		x : array_like
		    Input.
		p : float, optional
		    Input.
	**/
	public function min_distance_point(x:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Compute the minimum distance between points in the two hyperrectangles.
		
		Parameters
		----------
		other : hyperrectangle
		    Input.
		p : float
		    Input.
	**/
	public function min_distance_rectangle(other:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Produce two hyperrectangles by splitting.
		
		In general, if you need to compute maximum and minimum
		distances to the children, it can be done more efficiently
		by updating the maximum and minimum distances to the parent.
		
		Parameters
		----------
		d : int
		    Axis to split hyperrectangle along.
		split : float
		    Position along axis `d` to split at.
	**/
	public function split(d:Dynamic, split:Dynamic):Dynamic;
	/**
		Total volume.
	**/
	public function volume():Dynamic;
}