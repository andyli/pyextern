/* This file is generated, do not edit! */
package tensorflow.python.ops.state_ops;
@:pythonImport("tensorflow.python.ops.state_ops") extern class State_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Update 'ref' by assigning 'value' to it.
		
		This operation outputs a Tensor that holds the new value of 'ref' after
		  the value has been assigned. This makes it easier to chain operations
		  that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`.
		    Should be from a `Variable` node. May be uninitialized.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be assigned to the variable.
		  validate_shape: An optional `bool`. Defaults to `True`.
		    If true, the operation will validate that the shape
		    of 'value' matches the shape of the Tensor being assigned to.  If false,
		    'ref' will take on the shape of 'value'.
		  use_locking: An optional `bool`. Defaults to `True`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` that will hold the new value of 'ref' after
		    the assignment has completed.
	**/
	static public function assign(ref:Dynamic, value:Dynamic, ?validate_shape:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by adding 'value' to it.
		
		This operation outputs "ref" after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types:
		    `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`,
		    `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be added to the variable.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the addition will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
	**/
	static public function assign_add(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by subtracting 'value' from it.
		
		This operation outputs "ref" after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types:
		    `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`,
		    `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  value: A `Tensor`. Must have the same type as `ref`.
		    The value to be subtracted to the variable.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been updated.
	**/
	static public function assign_sub(ref:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Increments 'ref' until it reaches 'limit'.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `int32`, `int64`.
		    Should be from a scalar `Variable` node.
		  limit: An `int`.
		    If incrementing ref would bring it above limit, instead generates an
		    'OutOfRange' error.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `ref`.
		  A copy of the input before increment. If nothing else modifies the
		  input, the values produced will all be distinct.
	**/
	static public function count_up_to(ref:Dynamic, limit:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Initializes variable with "init".
		
		This op does the following:
		if init is a Tensor, v = init
		if callable(init): v = init(VariableShape(v), v.dtype)
		
		Args:
		  v: Variable to initialize
		  init: Tensor to assign to v,
		    Or an object convertible to Tensor e.g. nparray,
		    Or an Initializer that generates a tensor given the shape and type of v.
		    An "Initializer" is a callable that returns a tensor that "v" should be
		    set to. It will be called as init(shape, dtype).
		  name: Optional name for the op.
		
		Returns:
		  The operation that initializes v.
	**/
	static public function init_variable(v:Dynamic, init:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks whether a tensor has been initialized.
		
		Outputs boolean scalar indicating whether the tensor has been initialized.
		
		Args:
		  ref: A mutable `Tensor`.
		    Should be from a `Variable` node. May be uninitialized.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function is_variable_initialized(ref:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Adds sparse updates to a variable reference.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] += updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] += updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] += updates[i, ..., j, ...]
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterAdd.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to add to `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the addition will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_add(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Divides a variable reference by sparse updates.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] /= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] /= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] /= updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions divide.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of values that `ref` is divided by.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the operation will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_div(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies sparse updates into a variable reference.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] *= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] *= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] *= updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions multiply.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to multiply to `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the operation will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_mul(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse addition between `updates` and individual values or slices
		
		within a given variable according to `indices`.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to add 4 scattered elements to a rank-1 tensor to 8
		elements. In Python, that addition would look like this:
		
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    add = tf.scatter_nd_add(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(add)
		
		The resulting update to ref would look like this:
		
		    [1, 13, 3, 14, 14, 6, 7, 20]
		
		See [tf.scatter_nd](#scatter_nd) for more details about how to make updates to
		slices.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    A mutable Tensor. Should be from a Variable node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor. Must be one of the following types: int32, int64.
		    A tensor of indices into ref.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A Tensor. Must have the same type as ref. A tensor of updated values
		    to add to ref.
		  use_locking: An optional `bool`. Defaults to `False`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
		  Same as ref. Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_nd_add(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse subtraction between `updates` and individual values or slices
		
		within a given variable according to `indices`.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to subtract 4 scattered elements from a rank-1 tensor
		with 8 elements. In Python, that subtraction would look like this:
		
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1], [7]])
		    updates = tf.constant([9, 10, 11, 12])
		    sub = tf.scatter_nd_sub(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(sub)
		
		The resulting update to ref would look like this:
		
		    [1, -9, 3, -6, -4, 6, 7, -4]
		
		See [tf.scatter_nd](#scatter_nd) for more details about how to make updates to
		slices.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    A mutable Tensor. Should be from a Variable node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor. Must be one of the following types: int32, int64.
		    A tensor of indices into ref.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A Tensor. Must have the same type as ref. A tensor of updated values
		    to subtract from ref.
		  use_locking: An optional `bool`. Defaults to `False`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
		  Same as ref. Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_nd_sub(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse `updates` to individual values or slices within a given
		
		variable according to `indices`.
		
		`ref` is a `Tensor` with rank `P` and `indices` is a `Tensor` of rank `Q`.
		
		`indices` must be integer tensor, containing indices into `ref`.
		It must be shape `[d_0, ..., d_{Q-2}, K]` where `0 < K <= P`.
		
		The innermost dimension of `indices` (with length `K`) corresponds to
		indices into elements (if `K = P`) or slices (if `K < P`) along the `K`th
		dimension of `ref`.
		
		`updates` is `Tensor` of rank `Q-1+P-K` with shape:
		
		```
		[d_0, ..., d_{Q-2}, ref.shape[K], ..., ref.shape[P-1]].
		```
		
		For example, say we want to update 4 scattered elements to a rank-1 tensor to
		8 elements. In Python, that update would look like this:
		
		```python
		    ref = tf.Variable([1, 2, 3, 4, 5, 6, 7, 8])
		    indices = tf.constant([[4], [3], [1] ,[7]])
		    updates = tf.constant([9, 10, 11, 12])
		    update = tf.scatter_nd_update(ref, indices, updates)
		    with tf.Session() as sess:
		      print sess.run(update)
		```
		
		The resulting update to ref would look like this:
		
		    [1, 11, 3, 10, 9, 6, 7, 12]
		
		See [tf.scatter_nd](#scatter_nd) for more details about how to make updates to
		slices.
		
		Args:
		  ref: A mutable `Tensor`. A mutable Tensor. Should be from a Variable node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A Tensor. Must be one of the following types: int32, int64.
		    A tensor of indices into ref.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A Tensor. Must have the same type as ref. A tensor of updated
		    values to add to ref.
		  use_locking: An optional `bool`. Defaults to `True`.
		    An optional bool. Defaults to True. If True, the assignment will
		    be protected by a lock; otherwise the behavior is undefined,
		    but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor`. Has the same type as `ref`.
		  Same as ref. Returned as a convenience for operations that want to
		  use the updated values after the update is done.
	**/
	static public function scatter_nd_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts sparse updates to a variable reference.
		
		```python
		    # Scalar indices
		    ref[indices, ...] -= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] -= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] -= updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their (negated) contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterSub.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to subtract from `ref`.
		  use_locking: An optional `bool`. Defaults to `False`.
		    If True, the subtraction will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_sub(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies sparse updates to a variable reference.
		
		This operation computes
		
		```python
		    # Scalar indices
		    ref[indices, ...] = updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = updates[i, ..., j, ...]
		```
		
		This operation outputs `ref` after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		If values in `ref` is to be updated more than once, because there are
		duplicate entries in `indices`, the order at which the updates happen
		for each value is undefined.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterUpdate.png" alt>
		</div>
		
		Args:
		  ref: A mutable `Tensor`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must have the same type as `ref`.
		    A tensor of updated values to store in `ref`.
		  use_locking: An optional `bool`. Defaults to `True`.
		    If True, the assignment will be protected by a lock;
		    otherwise the behavior is undefined, but may exhibit less contention.
		  name: A name for the operation (optional).
		
		Returns:
		  Same as `ref`.  Returned as a convenience for operations that want
		  to use the updated values after the update is done.
	**/
	static public function scatter_update(ref:Dynamic, indices:Dynamic, updates:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deprecated. Used variable_op_v2 instead.
	**/
	static public function variable_op(shape:Dynamic, dtype:Dynamic, ?name:Dynamic, ?set_shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic):Dynamic;
	/**
		Create a variable Operation.
		
		See also variables.Variable.
		
		Args:
		  shape: The shape of the tensor managed by this variable
		  dtype: The underlying type of the tensor values.
		  name: optional name to use for the variable op.
		  container: An optional string. Defaults to "".
		    If non-empty, this variable is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional string. Defaults to "".
		    If non-empty, this variable is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		
		Returns:
		  A variable tensor.1;5A
	**/
	static public function variable_op_v2(shape:Dynamic, dtype:Dynamic, ?name:Dynamic, ?container:Dynamic, ?shared_name:Dynamic):Dynamic;
}