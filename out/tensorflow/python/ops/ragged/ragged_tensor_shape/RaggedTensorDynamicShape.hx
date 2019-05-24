/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_tensor_shape;
@:pythonImport("tensorflow.python.ops.ragged.ragged_tensor_shape", "RaggedTensorDynamicShape") extern class RaggedTensorDynamicShape {
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
		Creates a RaggedTensorDynamicShape.
		
		Args:
		  partitioned_dim_sizes: A `list` of 0-D or 1-D integer `Tensor`, one for
		    each partitioned dimension.  If dimension `d` is uniform, then
		    `partitioned_dim_sizes[d]` must be an integer scalar, specifying the
		    size of all slices across dimension `d`.  If dimension `d` is ragged,
		    then `partitioned_dim_sizes[d]` must be an integer vector, specifying
		    the size of each slice across dimension `d`.
		  inner_dim_sizes: A 1-D integer `Tensor`, whose length is equal to the
		    number of inner dimensions.  `inner_dim_sizes[n]` is the size of all
		    slices across the `n`th inner dimension (which is the
		    `(len(partitioned_dim_sizes)+n)`th dimension in the overall tensor.
	**/
	@:native("__init__")
	public function ___init__(partitioned_dim_sizes:Dynamic, inner_dim_sizes:Dynamic):Dynamic;
	/**
		Creates a RaggedTensorDynamicShape.
		
		Args:
		  partitioned_dim_sizes: A `list` of 0-D or 1-D integer `Tensor`, one for
		    each partitioned dimension.  If dimension `d` is uniform, then
		    `partitioned_dim_sizes[d]` must be an integer scalar, specifying the
		    size of all slices across dimension `d`.  If dimension `d` is ragged,
		    then `partitioned_dim_sizes[d]` must be an integer vector, specifying
		    the size of each slice across dimension `d`.
		  inner_dim_sizes: A 1-D integer `Tensor`, whose length is equal to the
		    number of inner dimensions.  `inner_dim_sizes[n]` is the size of all
		    slices across the `n`th inner dimension (which is the
		    `(len(partitioned_dim_sizes)+n)`th dimension in the overall tensor.
	**/
	public function new(partitioned_dim_sizes:Dynamic, inner_dim_sizes:Dynamic):Void;
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
	public function _broadcast_inner_dimension_to_ragged(axis:Dynamic, lengths:Dynamic):Dynamic;
	/**
		Broadcasts the inner dimension `axis` to match `lengths`.
	**/
	public function _broadcast_inner_dimension_to_uniform(axis:Dynamic, length:Dynamic):Dynamic;
	/**
		Broadcasts the partitioned dimension `axis` to match `lengths`.
	**/
	public function _broadcast_uniform_partitioned_dimension(axis:Dynamic, lengths:Dynamic):Dynamic;
	/**
		Returns a shape that is broadcast-compatible with self & lengths.
		
		* If dimension[axis] is uniform and lengths is a scalar, the check
		  that either lengths==1 or axis==1 or lengths==axis, and tile
		  dimension[axis] with tf.where(lengths==axis, 1, axis) repeats.
		
		* If dimension[axis] is uniform and lengths is a vector, then check
		  that dimension[axis]==1, and raggedly tile dimension[axis] with
		  lengths repeats.  (we can skip tiling if we statically know that
		  slice_lengths == 1??)
		
		* If dimension[axis] is ragged and lengths is a scalar, then check
		  that lengths==1.
		
		* If dimension[axis] is ragged and lengths is a vector, then check
		  that self.dimension_size(axis) == lengths.
		
		Args:
		  axis: `int`.  The dimension to broadcast.
		  lengths: 0-D or 1-D integer `Tensor`.
		
		Returns:
		  A `RaggedTensorDynamicShape`.
	**/
	public function broadcast_dimension(axis:Dynamic, lengths:Dynamic):Dynamic;
	/**
		Adds leading size-1 dimensions to broadcast `self` to the given rank.
		
		E.g., if `shape1` is `[3, (D2), 4]`, then `shape1.broadcast_to_rank(5)`
		is `[1, 1, 3, (D2), 4]`.
		
		Args:
		  rank: The rank for the returned shape.
		
		Returns:
		  A RaggedTensorDynamicShape with `rank` dimensions, whose inner dimensions
		  have the same size as `self` and whose outer dimensions have size `1`.
		
		Raises:
		  ValueError: If `self.rank` is unknown or greater than `rank`.
	**/
	public function broadcast_to_rank(rank:Dynamic):Dynamic;
	/**
		Returns the size of slices across the specified dimension.
	**/
	public function dimension_size(axis:Dynamic):Dynamic;
	/**
		Constructs a ragged shape from a list of dimension sizes.
		
		This list contains a single tensor for each dimension, where the tensor
		is a scalar if the dimension is uniform, or a vector if the dimension is
		ragged.
		
		Args:
		  dim_sizes: List of int64 scalars or vectors.
		
		Returns:
		  A RaggedTensorDynamicShape.
	**/
	static public function from_dim_sizes(dim_sizes:Dynamic):Dynamic;
	/**
		Constructs a ragged shape for a potentially ragged tensor.
	**/
	static public function from_tensor(rt_input:Dynamic):Dynamic;
	/**
		The inner dimension sizes for this shape.
		
		Returns:
		  A 1-D integer `Tensor`.
	**/
	public var inner_dim_sizes : Dynamic;
	/**
		Returns true if the indicated dimension is ragged.
	**/
	public function is_ragged(axis:Dynamic):Dynamic;
	/**
		The number of inner dimensions, or `None` if not statically known.
	**/
	public var num_inner_dimensions : Dynamic;
	/**
		The number of partitioned dimensions in this shape.
	**/
	public var num_partitioned_dimensions : Dynamic;
	/**
		Returns the total number of slices across the indicated dimension.
	**/
	public function num_slices_in_dimension(axis:Dynamic):Dynamic;
	/**
		The partitioned dimension sizes for this shape.
		
		Returns:
		  A `list` of 0-D or 1-D integer `Tensor`.
	**/
	public var partitioned_dim_sizes : Dynamic;
	/**
		The number of dimensions in this shape, or None if unknown.
	**/
	public var rank : Dynamic;
}