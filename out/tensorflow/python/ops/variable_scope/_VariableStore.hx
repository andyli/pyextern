/* This file is generated, do not edit! */
package tensorflow.python.ops.variable_scope;
@:pythonImport("tensorflow.python.ops.variable_scope", "_VariableStore") extern class _VariableStore {
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
		Create a variable store.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Create a variable store.
	**/
	public function new():Void;
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
		Gets or creates a sharded variable list with these parameters.
		
		The `partitioner` must be a callable that accepts a fully defined
		`TensorShape` and returns a sequence of integers (the `partitions`).
		These integers describe how to partition the given sharded `Variable`
		along the given dimension.  That is, `partitions[1] = 3` means split
		the `Variable` into 3 shards along dimension 1.  Currently, sharding along
		only one axis is supported.
		
		If the list of variables with the given name (prefix) is already stored,
		we return the stored variables. Otherwise, we create a new one.
		
		Set `reuse` to `True` when you only want to reuse existing Variables.
		Set `reuse` to `False` when you only want to create new Variables.
		If `reuse` is `None` (the default), both new and existing variables are
		returned.
		
		If initializer is `None` (the default), the default initializer passed in
		the constructor is used. If that one is `None` too, we use a new
		`uniform_unit_scaling_initializer`. If initializer is a Tensor, we use
		it as a value and derive the shape from the initializer.
		
		If the initializer is a callable, then it will be called for each
		shard.  Otherwise the initializer should match the shape of the entire
		sharded Variable, and it will be sliced accordingly for each shard.
		
		Some useful partitioners are available.  See, e.g.,
		`variable_axis_size_partitioner` and `min_max_variable_partitioner`.
		
		Args:
		  name: the name of the new or existing sharded variable.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and `dtype` of the Variable to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  shape: shape of the new or existing sharded variable.
		  dtype: type of the new or existing sharded variable
		    (defaults to `DT_FLOAT`).
		  initializer: initializer for the sharded variable.
		  regularizer: a (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  reuse: a Boolean or `None`. Controls reuse or creation of variables.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  collections: List of graph collections keys to add the Variable to.
		    Defaults to `[GraphKeys.VARIABLES]` (see tf.Variable).
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  validate_shape: If False, allows the variable to be initialized with a
		    value of unknown shape. If True, the default, the shape of initial_value
		    must be known.
		
		Returns:
		  A tuple `(shards, partitions)` where `shards` is the list of `Variable`
		  shards and `partitions` is the output of the partitioner on the input
		  shape.
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    when reusing a variable and specifying a conflicting shape,
		    when violating reuse during variable creation, or if an existing
		    sharded variable exists for the given name but with different sharding.
	**/
	public function _get_partitioned_variable(name:Dynamic, partitioner:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?reuse:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?validate_shape:Dynamic):Dynamic;
	/**
		Get or create a single Variable (e.g. a shard or entire variable).
		
		See the documentation of get_variable above (ignore partitioning components)
		for details.
		
		Args:
		  name: see get_variable.
		  shape: see get_variable.
		  dtype: see get_variable.
		  initializer: see get_variable.
		  regularizer: see get_variable.
		  reuse: see get_variable.
		  trainable: see get_variable.
		  collections: see get_variable.
		  caching_device: see get_variable.
		  validate_shape: see get_variable.
		
		Returns:
		  A Variable.  See documentation of get_variable above.
		
		Raises:
		  ValueError: See documentation of get_variable above.
	**/
	public function _get_single_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?reuse:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?validate_shape:Dynamic):Dynamic;
	public function close_variable_subscopes(scope_name:Dynamic):Dynamic;
	/**
		Gets an existing variable with these parameters or create a new one.
		
		If a variable with the given name is already stored, we return the stored
		variable. Otherwise, we create a new one.
		
		Set `reuse` to `True` when you only want to reuse existing Variables.
		Set `reuse` to `False` when you only want to create new Variables.
		If `reuse` is `None` (the default), both new and existing variables are
		returned.
		
		If initializer is `None` (the default), the default initializer passed in
		the constructor is used. If that one is `None` too, we use a new
		`uniform_unit_scaling_initializer`. If initializer is a Tensor, we use
		it as a value and derive the shape from the initializer.
		
		If a partitioner is provided, first a sharded `Variable` is created
		via `_get_partitioned_variable`, and the return value is a
		`Tensor` composed of the shards concatenated along the partition axis.
		
		Some useful partitioners are available.  See, e.g.,
		`variable_axis_size_partitioner` and `min_max_variable_partitioner`.
		
		Args:
		  name: The name of the new or existing variable.
		  shape: Shape of the new or existing variable.
		  dtype: Type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: Initializer for the variable.
		  regularizer: A (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  reuse: a Boolean or `None`. Controls reuse or creation of variables.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  collections: List of graph collections keys to add the Variable to.
		    Defaults to `[GraphKeys.VARIABLES]` (see tf.Variable).
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and dtype of the `Variable` to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  validate_shape: If False, allows the variable to be initialized with a
		    value of unknown shape. If True, the default, the shape of initial_value
		    must be known.
		  custom_getter: Callable that takes as a first argument the true getter,
		    and allows overwriting the internal get_variable method.
		    The signature of `custom_getter` should match that of this method,
		    but the most future-proof version will allow for changes:
		    `def custom_getter(getter, *args, **kwargs)`.  Direct access to
		    all `get_variable` parameters is also allowed:
		    `def custom_getter(getter, name, *args, **kwargs)`.  A simple identity
		    custom getter that simply creates variables with modified names is:
		    ```python
		    def custom_getter(getter, name, *args, **kwargs):
		      return getter(name + '_suffix', *args, **kwargs)
		    ```
		
		Returns:
		  The created or existing variable.
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    when reusing a variable and specifying a conflicting shape,
		    or when violating reuse during variable creation.
	**/
	public function get_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?reuse:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?custom_getter:Dynamic):Dynamic;
	public function open_variable_scope(scope_name:Dynamic):Dynamic;
	public function variable_scope_count(scope_name:Dynamic):Dynamic;
}