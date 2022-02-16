/* This file is generated, do not edit! */
package tensorflow.python.keras.legacy_tf_layers.variable_scope_shim;
@:pythonImport("tensorflow.python.keras.legacy_tf_layers.variable_scope_shim", "_EagerVariableStore") extern class _EagerVariableStore {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Create a variable store.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Create a variable store.
	**/
	public function new():Void;
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
	static public var __slots__ : Dynamic;
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
		Provide a default initializer and a corresponding value.
		
		Args:
		  name: see get_variable.
		  shape: see get_variable.
		  dtype: see get_variable.
		
		Returns:
		  initializer and initializing_from_value. See get_variable above.
		
		Raises:
		  ValueError: When giving unsupported dtype.
	**/
	public function _get_default_initializer(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Get or create a single Variable (e.g.
		
		a shard or entire variable).
		
		See the documentation of get_variable above (ignore partitioning components)
		for details.
		
		Args:
		  name: see get_variable.
		  shape: see get_variable.
		  dtype: see get_variable.
		  initializer: see get_variable.
		  regularizer: see get_variable.
		  partition_info: _PartitionInfo object.
		  reuse: see get_variable.
		  trainable: see get_variable.
		  caching_device: see get_variable.
		  validate_shape: see get_variable.
		  constraint: see get_variable.
		  synchronization: see get_variable.
		  aggregation: see get_variable.
		
		Returns:
		  A Variable.  See documentation of get_variable above.
		
		Raises:
		  ValueError: See documentation of get_variable above.
	**/
	public function _get_single_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?partition_info:Dynamic, ?reuse:Dynamic, ?trainable:Dynamic, ?caching_device:Dynamic, ?validate_shape:Dynamic, ?constraint:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	public var _regularizers : Dynamic;
	public var _store_eager_variables : Dynamic;
	public var _vars : Dynamic;
	public function add_regularizer(_var:Dynamic, regularizer:Dynamic):Dynamic;
	/**
		Gets an existing variable with these parameters or create a new one.
		
		If a variable with the given name is already stored, we return the stored
		variable. Otherwise, we create a new one.
		
		Set `reuse` to `True` when you only want to reuse existing Variables.
		Set `reuse` to `False` when you only want to create new Variables.
		Set `reuse` to None (the default) or tf.compat.v1.AUTO_REUSE when you want
		variables to be created if they don't exist or returned if they do.
		
		If initializer is `None` (the default), the default initializer passed in
		the constructor is used. If that one is `None` too, we use a new
		`glorot_uniform_initializer`. If initializer is a Tensor, we use
		it as a value and derive the shape from the initializer.
		
		If a partitioner is provided, a `PartitionedVariable` is returned.
		Accessing this object as a `Tensor` returns the shards concatenated along
		the partition axis.
		
		Some useful partitioners are available.  See, e.g.,
		`variable_axis_size_partitioner` and `min_max_variable_partitioner`.
		
		Args:
		  name: The name of the new or existing variable.
		  shape: Shape of the new or existing variable.
		  dtype: Type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: Initializer for the variable.
		  regularizer: A (Tensor -> Tensor or None) function; the result of applying
		    it on a newly created variable will be added to the collection
		    GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  reuse: a Boolean, None, or tf.AUTO_REUSE. Controls reuse or creation of
		    variables. When eager execution is enabled  this argument is always
		    forced to be False.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`). `trainable`
		    defaults to `True`, unless `synchronization` is set to `ON_READ`, in
		    which case it defaults to `False`.
		  collections: List of graph collections keys to add the `Variable` to.
		    Defaults to `[GraphKeys.GLOBAL_VARIABLES]` (see `tf.Variable`).
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the `Variable` reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and dtype of the `Variable` to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  validate_shape: If False, allows the variable to be initialized with a
		    value of unknown shape. If True, the default, the shape of initial_value
		    must be known.
		  use_resource: If False, creates a regular Variable. If True, creates
		    instead an experimental ResourceVariable which has well-defined
		    semantics. Defaults to False (will later change to True). When eager
		    execution is enabled this argument is always forced to be true.
		  custom_getter: Callable that takes as a first argument the true getter,
		    and allows overwriting the internal get_variable method. The signature
		    of `custom_getter` should match that of this method,
		    but the most future-proof version will allow for changes: `def
		      custom_getter(getter, *args, **kwargs)`.  Direct access to
		    all `get_variable` parameters is also allowed: `def
		      custom_getter(getter, name, *args, **kwargs)`.  A simple identity
		    custom getter that simply creates variables with modified names is:
		      ```python
		    def custom_getter(getter, name, *args, **kwargs): return getter(name +
		      '_suffix', *args, **kwargs) ```
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value (which must have
		    the same shape). Constraints are not safe to use when doing asynchronous
		    distributed training.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses when to
		    synchronize.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing `Variable` (or `PartitionedVariable`, if a
		  partitioner was used).
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    when reusing a variable and specifying a conflicting shape,
		    or when violating reuse during variable creation.
		  RuntimeError: when eager execution is enabled and not called from an
		    EagerVariableStore.
	**/
	public function get_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?reuse:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?custom_getter:Dynamic, ?constraint:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
}