/* This file is generated, do not edit! */
package tensorflow.python.framework.tensor_shape;
@:pythonImport("tensorflow.python.framework.tensor_shape", "TensorShape") extern class TensorShape {
	/**
		Returns True if this shape contains non-zero information.
	**/
	public function __bool__():Dynamic;
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
		Returns True if `self` is equivalent to `other`.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
		Returns the value of a dimension or a shape, depending on the key.
		
		Args:
		  key: If `key` is an integer, returns the dimension at that index;
		    otherwise if `key` is a slice, returns a TensorShape whose
		    dimensions are those selected by the slice from `self`.
		
		Returns:
		  A dimension if `key` is an integer, or a `TensorShape` if `key` is a
		  slice.
		
		Raises:
		  ValueError: If `key` is a slice and `self` is completely unknown and
		    the step is set.
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Creates a new TensorShape with the given dimensions.
		
		Args:
		  dims: A list of Dimensions, or None if the shape is unspecified.
		    DEPRECATED: A single integer is treated as a singleton list.
		
		Raises:
		  TypeError: If dims cannot be converted to a list of dimensions.
	**/
	@:native("__init__")
	public function ___init__(dims:Dynamic):Dynamic;
	/**
		Creates a new TensorShape with the given dimensions.
		
		Args:
		  dims: A list of Dimensions, or None if the shape is unspecified.
		    DEPRECATED: A single integer is treated as a singleton list.
		
		Raises:
		  TypeError: If dims cannot be converted to a list of dimensions.
	**/
	public function new(dims:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns `self.dims` if the rank is known, otherwise raises ValueError.
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Returns the rank of this shape, or raises ValueError if unspecified.
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Returns True if `self` is known to be different from `other`.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns True if this shape contains non-zero information.
	**/
	public function __nonzero__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__():Dynamic;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns a list of integers or `None` for each dimension.
		
		Returns:
		  A list of integers or `None` for each dimension.
		
		Raises:
		  ValueError: If `self` is an unknown shape with an unknown rank.
	**/
	public function as_list():Dynamic;
	/**
		Returns this shape as a `TensorShapeProto`.
	**/
	public function as_proto():Dynamic;
	/**
		Raises an exception if `self` is not compatible with the given `rank`.
		
		Args:
		  rank: An integer.
		
		Raises:
		  ValueError: If `self` does not represent a shape with the given `rank`.
	**/
	public function assert_has_rank(rank:Dynamic):Dynamic;
	/**
		Raises exception if `self` and `other` do not represent the same shape.
		
		This method can be used to assert that there exists a shape that both
		`self` and `other` represent.
		
		Args:
		  other: Another TensorShape.
		
		Raises:
		  ValueError: If `self` and `other` do not represent the same shape.
	**/
	public function assert_is_compatible_with(other:Dynamic):Dynamic;
	/**
		Raises an exception if `self` is not fully defined in every dimension.
		
		Raises:
		  ValueError: If `self` does not have a known value for every dimension.
	**/
	public function assert_is_fully_defined():Dynamic;
	/**
		Raises an exception if `self` and `other` do not have compatible ranks.
		
		Args:
		  other: Another `TensorShape`.
		
		Raises:
		  ValueError: If `self` and `other` do not represent shapes with the
		    same rank.
	**/
	public function assert_same_rank(other:Dynamic):Dynamic;
	/**
		Returns the concatenation of the dimension in `self` and `other`.
		
		*N.B.* If either `self` or `other` is completely unknown,
		concatenation will discard information about the other shape. In
		future, we might support concatenation that preserves this
		information for use with slicing.
		
		Args:
		  other: Another `TensorShape`.
		
		Returns:
		  A `TensorShape` whose dimensions are the concatenation of the
		  dimensions in `self` and `other`.
	**/
	public function concatenate(other:Dynamic):Dynamic;
	/**
		Returns a list of Dimensions, or None if the shape is unspecified.
	**/
	public var dims : Dynamic;
	/**
		Returns True iff `self` is compatible with `other`.
		
		Two possibly-partially-defined shapes are compatible if there
		exists a fully-defined shape that both shapes can represent. Thus,
		compatibility allows the shape inference code to reason about
		partially-defined shapes. For example:
		
		* TensorShape(None) is compatible with all shapes.
		
		* TensorShape([None, None]) is compatible with all two-dimensional
		  shapes, such as TensorShape([32, 784]), and also TensorShape(None). It is
		  not compatible with, for example, TensorShape([None]) or
		  TensorShape([None, None, None]).
		
		* TensorShape([32, None]) is compatible with all two-dimensional shapes
		  with size 32 in the 0th dimension, and also TensorShape([None, None])
		  and TensorShape(None). It is not compatible with, for example,
		  TensorShape([32]), TensorShape([32, None, 1]) or TensorShape([64, None]).
		
		* TensorShape([32, 784]) is compatible with itself, and also
		  TensorShape([32, None]), TensorShape([None, 784]), TensorShape([None,
		  None]) and TensorShape(None). It is not compatible with, for example,
		  TensorShape([32, 1, 784]) or TensorShape([None]).
		
		The compatibility relation is reflexive and symmetric, but not
		transitive. For example, TensorShape([32, 784]) is compatible with
		TensorShape(None), and TensorShape(None) is compatible with
		TensorShape([4, 4]), but TensorShape([32, 784]) is not compatible with
		TensorShape([4, 4]).
		
		Args:
		  other: Another TensorShape.
		
		Returns:
		  True iff `self` is compatible with `other`.
	**/
	public function is_compatible_with(other:Dynamic):Dynamic;
	/**
		Returns True iff `self` is fully defined in every dimension.
	**/
	public function is_fully_defined():Dynamic;
	/**
		Returns a `TensorShape` combining the information in `self` and `other`.
		
		The dimensions in `self` and `other` are merged elementwise,
		according to the rules defined for `Dimension.merge_with()`.
		
		Args:
		  other: Another `TensorShape`.
		
		Returns:
		  A `TensorShape` containing the combined information of `self` and
		  `other`.
		
		Raises:
		  ValueError: If `self` and `other` are not compatible.
	**/
	public function merge_with(other:Dynamic):Dynamic;
	/**
		Returns the most specific TensorShape compatible with `self` and `other`.
		
		* TensorShape([None, 1]) is the most specific TensorShape compatible with
		  both TensorShape([2, 1]) and TensorShape([5, 1]). Note that
		  TensorShape(None) is also compatible with above mentioned TensorShapes.
		
		* TensorShape([1, 2, 3]) is the most specific TensorShape compatible with
		  both TensorShape([1, 2, 3]) and TensorShape([1, 2, 3]). There are more
		  less specific TensorShapes compatible with above mentioned TensorShapes,
		  e.g. TensorShape([1, 2, None]), TensorShape(None).
		
		Args:
		  other: Another `TensorShape`.
		
		Returns:
		  A `TensorShape` which is the most specific compatible shape of `self`
		  and `other`.
	**/
	public function most_specific_compatible_shape(other:Dynamic):Dynamic;
	/**
		Returns the rank of this shape, or None if it is unspecified.
	**/
	public var ndims : Dynamic;
	/**
		Returns the total number of elements, or none for incomplete shapes.
	**/
	public function num_elements():Dynamic;
	/**
		Returns a shape based on `self` with the given rank.
		
		This method promotes a completely unknown shape to one with a
		known rank.
		
		Args:
		  rank: An integer.
		
		Returns:
		  A shape that is at least as specific as `self` with the given rank.
		
		Raises:
		  ValueError: If `self` does not represent a shape with the given `rank`.
	**/
	public function with_rank(rank:Dynamic):Dynamic;
	/**
		Returns a shape based on `self` with at least the given rank.
		
		Args:
		  rank: An integer.
		
		Returns:
		  A shape that is at least as specific as `self` with at least the given
		  rank.
		
		Raises:
		  ValueError: If `self` does not represent a shape with at least the given
		    `rank`.
	**/
	public function with_rank_at_least(rank:Dynamic):Dynamic;
	/**
		Returns a shape based on `self` with at most the given rank.
		
		Args:
		  rank: An integer.
		
		Returns:
		  A shape that is at least as specific as `self` with at most the given
		  rank.
		
		Raises:
		  ValueError: If `self` does not represent a shape with at most the given
		    `rank`.
	**/
	public function with_rank_at_most(rank:Dynamic):Dynamic;
}