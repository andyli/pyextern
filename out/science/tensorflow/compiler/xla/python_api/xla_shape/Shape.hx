/* This file is generated, do not edit! */
package tensorflow.compiler.xla.python_api.xla_shape;
@:pythonImport("tensorflow.compiler.xla.python_api.xla_shape", "Shape") extern class Shape {
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
		Creates a new XLA Shape.
		
		Args:
		  element_type: element type from xla_data_pb2.
		  dimensions: sequence of dimensions sizes (integers), or sequence
		    of Shapes in the case of a tuple, i.e. when element_type is
		    TUPLE.
		  layout: optional minor_to_major sequence for layout. If not given, the
		    default major-to-minor layout is used.
		
		Raises:
		  ValueError: if element_type is TUPLE but dimensions are not Shape objects.
	**/
	@:native("__init__")
	public function ___init__(element_type:Dynamic, dimensions:Dynamic, ?layout:Dynamic):Dynamic;
	/**
		Creates a new XLA Shape.
		
		Args:
		  element_type: element type from xla_data_pb2.
		  dimensions: sequence of dimensions sizes (integers), or sequence
		    of Shapes in the case of a tuple, i.e. when element_type is
		    TUPLE.
		  layout: optional minor_to_major sequence for layout. If not given, the
		    default major-to-minor layout is used.
		
		Raises:
		  ValueError: if element_type is TUPLE but dimensions are not Shape objects.
	**/
	public function new(element_type:Dynamic, dimensions:Dynamic, ?layout:Dynamic):Void;
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
	public function dimensions():Dynamic;
	public function element_type():Dynamic;
	static public function from_pyval(pyval:Dynamic):Dynamic;
	public function is_tuple():Dynamic;
	public function layout():Dynamic;
	/**
		If this is a tuple, returns its sequence of constituent Shape objects.
		
		Returns:
		  Tuple sub-shapes.
		
		Raises:
		  ValueError: if this is not a tuple.
	**/
	public function tuple_shapes():Dynamic;
}