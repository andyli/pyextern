/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_state_ops;
@:pythonImport("tensorflow.python.ops.gen_state_ops") extern class Gen_state_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Destroys the temporary variable and returns its final value.
		
		Sets output to the value of the Tensor pointed to by 'ref', then destroys
		the temporary variable called 'var_name'.
		All other uses of 'ref' *must* have executed before this op.
		This is typically achieved by chaining the ref through each assign op, or by
		using control dependencies.
		
		Outputs the final value of the tensor pointed to by 'ref'.
		
		Args:
		  ref: A mutable `Tensor`. A reference to the temporary variable tensor.
		  var_name: A `string`.
		    Name of the temporary variable, usually the name of the matching
		    'TemporaryVariable' op.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `ref`.
	**/
	static public function _destroy_temporary_variable(ref:Dynamic, var_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Returns a tensor that may be mutated, but only persists within a single step.
		
		This is an experimental op for internal use only and it is possible to use this
		op in unsafe ways.  DO NOT USE unless you fully understand the risks.
		
		It is the caller's responsibility to ensure that 'ref' is eventually passed to a
		matching 'DestroyTemporaryVariable' op after all other uses have completed.
		
		Outputs a ref to the tensor state so it may be read or modified.
		
		  E.g.
		      var = state_ops._temporary_variable([1, 2], types.float_)
		      var_name = var.op.name
		      var = state_ops.assign(var, [[4.0, 5.0]])
		      var = state_ops.assign_add(var, [[6.0, 7.0]])
		      final = state_ops._destroy_temporary_variable(var, var_name=var_name)
		
		Args:
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the variable tensor.
		  dtype: A `tf.DType`. The type of elements in the variable tensor.
		  var_name: An optional `string`. Defaults to `""`.
		    Overrides the name used for the temporary variable resource. Default
		    value is the name of the 'TemporaryVariable' op (which is guaranteed unique).
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor` of type `dtype`. A reference to the variable tensor.
	**/
	static public function _temporary_variable(shape:Dynamic, dtype:Dynamic, ?var_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Use VariableV2 instead.
		
		Args:
		  shape: A `tf.TensorShape` or list of `ints`.
		  dtype: A `tf.DType`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor` of type `dtype`.
	**/
	static public function _variable(shape:Dynamic, dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Holds state in the form of a tensor that persists across steps.
		
		Outputs a ref to the tensor state so it may be read or modified.
		TODO(zhifengc/mrry): Adds a pointer to a more detail document
		about sharing states in tensorflow.
		
		Args:
		  shape: A `tf.TensorShape` or list of `ints`.
		    The shape of the variable tensor.
		  dtype: A `tf.DType`. The type of elements in the variable tensor.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this variable is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this variable is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A mutable `Tensor` of type `dtype`. A reference to the variable tensor.
	**/
	static public function _variable_v2(shape:Dynamic, dtype:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by assigning 'value' to it.
		
		This operation outputs "ref" after the assignment is done.
		This makes it easier to chain operations that need to use the reset value.
		
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
		  Same as "ref".  Returned as a convenience for operations that want
		  to use the new value after the variable has been reset.
	**/
	static public function assign(ref:Dynamic, value:Dynamic, ?validate_shape:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update 'ref' by adding 'value' to it.
		
		This operation outputs "ref" after the update is done.
		This makes it easier to chain operations that need to use the reset value.
		
		Args:
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
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
		  ref: A mutable `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
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
}