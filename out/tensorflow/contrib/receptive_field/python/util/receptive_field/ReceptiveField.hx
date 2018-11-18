/* This file is generated, do not edit! */
package tensorflow.contrib.receptive_field.python.util.receptive_field;
@:pythonImport("tensorflow.contrib.receptive_field.python.util.receptive_field", "ReceptiveField") extern class ReceptiveField {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(size:Dynamic, stride:Dynamic, padding:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(size:Dynamic, stride:Dynamic, padding:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
		Computes the position of a feature given the center of a receptive field.
		
		Args:
		  x: An array of input center coordinates with shape `(..., d)`, where `d`
		    is the number of dimensions of the coordinates.
		  axis: The dimensions for which to compute the feature coordinates.
		    If `None` (the default), compute the feature coordinates for all
		    dimensions.
		
		Returns:
		  y: Coordinates of the features.
		
		Raises:
		  ValueError: If the number of dimensions of the input center coordinates
		    does not match the number of elements in `axis`.
	**/
	public function compute_feature_coordinates(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Computes the center of the receptive field that generated a feature.
		
		Args:
		  y: An array of feature coordinates with shape `(..., d)`, where `d` is the
		    number of dimensions of the coordinates.
		  axis: The dimensions for which to compute the input center coordinates.
		    If `None` (the default), compute the input center coordinates for all
		    dimensions.
		
		Returns:
		  x: Center of the receptive field that generated the features, at the input
		    of the network.
		
		Raises:
		  ValueError: If the number of dimensions of the feature coordinates does
		    not match the number of elements in `axis`.
	**/
	public function compute_input_center_coordinates(y:Dynamic, ?axis:Dynamic):Dynamic;
}