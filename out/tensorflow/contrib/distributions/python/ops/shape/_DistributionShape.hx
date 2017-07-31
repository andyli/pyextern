/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.shape;
@:pythonImport("tensorflow.contrib.distributions.python.ops.shape", "_DistributionShape") extern class _DistributionShape {
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
		Construct `DistributionShape` with fixed `batch_ndims`, `event_ndims`.
		
		`batch_ndims` and `event_ndims` are fixed throughout the lifetime of a
		`Distribution`. They may only be known at graph execution.
		
		If both `batch_ndims` and `event_ndims` are python scalars (rather than
		either being a `Tensor`), functions in this class automatically perform
		sanity checks during graph construction.
		
		Args:
		  batch_ndims: `Tensor`. Number of `dims` (`rank`) of the batch portion of
		    indexes of a `Tensor`. A "batch" is a non-identical distribution, i.e,
		    Normal with different parameters.
		  event_ndims: `Tensor`. Number of `dims` (`rank`) of the event portion of
		    indexes of a `Tensor`. An "event" is what is sampled from a
		    distribution, i.e., a trivariate Normal has an event shape of [3] and a
		    4 dimensional Wishart has an event shape of [4, 4].
		  validate_args: Python `bool`, default `False`. When `True`,
		    non-`tf.constant` `Tensor` arguments are checked for correctness.
		    (`tf.constant` arguments are always checked.)
		  name: Python `str`. The name prepended to Ops created by this class.
		
		Raises:
		  ValueError: if either `batch_ndims` or `event_ndims` are: `None`,
		    negative, not `int32`.
	**/
	@:native("__init__")
	public function ___init__(?batch_ndims:Dynamic, ?event_ndims:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct `DistributionShape` with fixed `batch_ndims`, `event_ndims`.
		
		`batch_ndims` and `event_ndims` are fixed throughout the lifetime of a
		`Distribution`. They may only be known at graph execution.
		
		If both `batch_ndims` and `event_ndims` are python scalars (rather than
		either being a `Tensor`), functions in this class automatically perform
		sanity checks during graph construction.
		
		Args:
		  batch_ndims: `Tensor`. Number of `dims` (`rank`) of the batch portion of
		    indexes of a `Tensor`. A "batch" is a non-identical distribution, i.e,
		    Normal with different parameters.
		  event_ndims: `Tensor`. Number of `dims` (`rank`) of the event portion of
		    indexes of a `Tensor`. An "event" is what is sampled from a
		    distribution, i.e., a trivariate Normal has an event shape of [3] and a
		    4 dimensional Wishart has an event shape of [4, 4].
		  validate_args: Python `bool`, default `False`. When `True`,
		    non-`tf.constant` `Tensor` arguments are checked for correctness.
		    (`tf.constant` arguments are always checked.)
		  name: Python `str`. The name prepended to Ops created by this class.
		
		Raises:
		  ValueError: if either `batch_ndims` or `event_ndims` are: `None`,
		    negative, not `int32`.
	**/
	public function new(?batch_ndims:Dynamic, ?event_ndims:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper which ensures that input is a non-negative, int32, scalar.
	**/
	public function _assert_non_negative_int32_scalar(x:Dynamic):Dynamic;
	/**
		Helper to establish some properties of input ndims args.
	**/
	public function _introspect_ndims(ndims:Dynamic):Dynamic;
	/**
		Helper which returns True if all inputs are constant_value.
	**/
	public function _is_all_constant_helper(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Helper function to standardize op scope.
	**/
	public function _name_scope(?name:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Returns number of dimensions corresponding to non-identical draws.
	**/
	public var batch_ndims : Dynamic;
	/**
		Returns number of dimensions needed to index a sample's coordinates.
	**/
	public var event_ndims : Dynamic;
	/**
		Returns dimensions indexing `sample_shape`, `batch_shape`, `event_shape`.
		
		Example:
		
		```python
		x = ...  # Tensor with shape [4, 3, 2, 1]
		sample_dims, batch_dims, event_dims = _DistributionShape(
		  batch_ndims=2, event_ndims=1).get_dims(x)
		# sample_dims == [0]
		# batch_dims == [1, 2]
		# event_dims == [3]
		# Note that these are not the shape parts, but rather indexes into shape.
		```
		
		Args:
		  x: `Tensor`.
		  name: Python `str`. The name to give this op.
		
		Returns:
		  sample_dims: `Tensor` (1D, `int32`).
		  batch_dims: `Tensor` (1D, `int32`).
		  event_dims: `Tensor` (1D, `int32`).
	**/
	public function get_dims(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Get `Tensor` number of dimensions (rank).
		
		Args:
		  x: `Tensor`.
		  name: Python `str`. The name to give this op.
		
		Returns:
		  ndims: Scalar number of dimensions associated with a `Tensor`.
	**/
	public function get_ndims(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns number of dimensions corresponding to iid draws ("sample").
		
		Args:
		  x: `Tensor`.
		  name: Python `str`. The name to give this op.
		
		Returns:
		  sample_ndims: `Tensor` (0D, `int32`).
		
		Raises:
		  ValueError: if `sample_ndims` is calculated to be negative.
	**/
	public function get_sample_ndims(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `Tensor`'s shape partitioned into `sample`, `batch`, `event`.
		
		Args:
		  x: `Tensor`.
		  name: Python `str`. The name to give this op.
		
		Returns:
		  sample_shape: `Tensor` (1D, `int32`).
		  batch_shape: `Tensor` (1D, `int32`).
		  event_shape: `Tensor` (1D, `int32`).
	**/
	public function get_shape(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reshapes/transposes `Distribution` `Tensor` from S+B+E to B_+E_+S_.
		
		Where:
		  - `B_ = B if B or not expand_batch_dim  else [1]`,
		  - `E_ = E if E else [1]`,
		  - `S_ = [tf.reduce_prod(S)]`.
		
		Args:
		  x: `Tensor`.
		  expand_batch_dim: Python `bool`. If `True` the batch dims will be expanded
		    such that `batch_ndims >= 1`.
		  name: Python `str`. The name to give this op.
		
		Returns:
		  x: `Tensor`. Input transposed/reshaped to `B_+E_+S_`.
		  sample_shape: `Tensor` (1D, `int32`).
	**/
	public function make_batch_of_event_sample_matrices(x:Dynamic, ?expand_batch_dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Name given to ops created by this class.
	**/
	public var name : Dynamic;
	/**
		Reshapes/transposes `Distribution` `Tensor` from B_+E_+S_ to S+B+E.
		
		Where:
		  - `B_ = B if B or not expand_batch_dim  else [1]`,
		  - `E_ = E if E else [1]`,
		  - `S_ = [tf.reduce_prod(S)]`.
		
		This function "reverses" `make_batch_of_event_sample_matrices`.
		
		Args:
		  x: `Tensor` of shape `B_+E_+S_`.
		  sample_shape: `Tensor` (1D, `int32`).
		  expand_batch_dim: Python `bool`. If `True` the batch dims will be expanded
		    such that `batch_ndims>=1`.
		  name: Python `str`. The name to give this op.
		
		Returns:
		  x: `Tensor`. Input transposed/reshaped to `S+B+E`.
	**/
	public function undo_make_batch_of_event_sample_matrices(x:Dynamic, sample_shape:Dynamic, ?expand_batch_dim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns True if graph-runtime `Tensor` checks are enabled.
	**/
	public var validate_args : Dynamic;
}