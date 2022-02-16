/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_resource_variable_ops;
@:pythonImport("tensorflow.python.ops.gen_resource_variable_ops") extern class Gen_resource_variable_ops_Module {
	/**
		Adds a value to the current value of a variable.
		
		Any ReadVariableOp with a control dependency on this op is guaranteed to
		see the incremented value or a subsequent newer one.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  value: A `Tensor`. the value by which the variable will be incremented.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function AssignAddVariableOp(resource:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts a value from the current value of a variable.
		
		Any ReadVariableOp with a control dependency on this op is guaranteed to
		see the decremented value or a subsequent newer one.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  value: A `Tensor`. the value by which the variable will be incremented.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function AssignSubVariableOp(resource:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assigns a new value to a variable.
		
		Any ReadVariableOp with a control dependency on this op is guaranteed to return
		this value or a subsequent newer value of the variable.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  value: A `Tensor`. the value to set the new tensor to use.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function AssignVariableOp(resource:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This op consumes a lock created by `MutexLock`.
		
		This op exists to consume a tensor created by `MutexLock` (other than
		direct control dependencies).  It should be the only that consumes the tensor,
		and will raise an error if it is not.  Its only purpose is to keep the
		mutex lock tensor alive until it is consumed by this op.
		
		**NOTE**: This operation must run on the same device as its input.  This may
		be enforced via the `colocate_with` mechanism.
		
		Args:
		  mutex_lock: A `Tensor` of type `variant`.
		    A tensor returned by `MutexLock`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ConsumeMutexLock(mutex_lock:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Deletes the resource specified by the handle.
		
		All subsequent operations using the resource will result in a NotFound
		error status.
		
		Args:
		  resource: A `Tensor` of type `resource`. handle to the resource to delete.
		  ignore_lookup_error: An optional `bool`. Defaults to `True`.
		    whether to ignore the error when the resource
		    doesn't exist.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function DestroyResourceOp(resource:Dynamic, ?ignore_lookup_error:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Locks a mutex resource.  The output is the lock.  So long as the lock tensor
		
		is alive, any other request to use `MutexLock` with this mutex will wait.
		
		This is particularly useful for creating a critical section when used in
		conjunction with `MutexLockIdentity`:
		
		```python
		
		mutex = mutex_v2(
		  shared_name=handle_name, container=container, name=name)
		
		def execute_in_critical_section(fn, *args, **kwargs):
		  lock = gen_resource_variable_ops.mutex_lock(mutex)
		
		  with ops.control_dependencies([lock]):
		    r = fn(*args, **kwargs)
		
		  with ops.control_dependencies(nest.flatten(r)):
		    with ops.colocate_with(mutex):
		      ensure_lock_exists = mutex_lock_identity(lock)
		
		    # Make sure that if any element of r is accessed, all of
		    # them are executed together.
		    r = nest.map_structure(tf.identity, r)
		
		  with ops.control_dependencies([ensure_lock_exists]):
		    return nest.map_structure(tf.identity, r)
		```
		
		While `fn` is running in the critical section, no other functions which wish to
		use this critical section may run.
		
		Often the use case is that two executions of the same graph, in parallel,
		wish to run `fn`; and we wish to ensure that only one of them executes
		at a time.  This is especially important if `fn` modifies one or more
		variables at a time.
		
		It is also useful if two separate functions must share a resource, but we
		wish to ensure the usage is exclusive.
		
		Args:
		  mutex: A `Tensor` of type `resource`. The mutex resource to lock.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function MutexLock(mutex:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a Mutex resource that can be locked by `MutexLock`.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this variable is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this variable is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function MutexV2(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reads the value of a variable.
		
		The tensor returned by this operation is immutable.
		
		The value returned by this operation is guaranteed to be influenced by all the
		writes on which this operation depends directly or indirectly, and to not be
		influenced by any of the writes which depend directly or indirectly on this
		operation.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  dtype: A `tf.DType`. the dtype of the value.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function ReadVariableOp(resource:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gather slices from the variable pointed to by `resource` according to `indices`.
		
		`indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
		Produces an output tensor with shape `indices.shape + params.shape[1:]` where:
		
		```python
		    # Scalar indices
		    output[:, ..., :] = params[indices, :, ... :]
		
		    # Vector indices
		    output[i, :, ..., :] = params[indices[i], :, ... :]
		
		    # Higher rank indices
		    output[i, ..., j, :, ... :] = params[indices[i, ..., j], :, ..., :]
		```
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  dtype: A `tf.DType`.
		  batch_dims: An optional `int`. Defaults to `0`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function ResourceGather(resource:Dynamic, indices:Dynamic, dtype:Dynamic, ?batch_dims:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function ResourceGatherNd(resource:Dynamic, indices:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Adds sparse updates to the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] += updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] += updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] += updates[i, ..., j, ...]
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ResourceScatterAdd(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Divides sparse updates into the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] /= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] /= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] /= updates[i, ..., j, ...]
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions multiply.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ResourceScatterDiv(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reduces sparse updates into the variable referenced by `resource` using the `max` operation.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = max(ref[indices, ...], updates[...])
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = max(ref[indices[i], ...], updates[i, ...])
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = max(ref[indices[i, ..., j], ...], updates[i, ..., j, ...])
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions are combined.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ResourceScatterMax(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reduces sparse updates into the variable referenced by `resource` using the `min` operation.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = min(ref[indices, ...], updates[...])
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = min(ref[indices[i], ...], updates[i, ...])
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = min(ref[indices[i, ..., j], ...], updates[i, ..., j, ...])
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions are combined.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ResourceScatterMin(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multiplies sparse updates into the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] *= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] *= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] *= updates[i, ..., j, ...]
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions multiply.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ResourceScatterMul(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts sparse updates from the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] -= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] -= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] -= updates[i, ..., j, ...]
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ResourceScatterSub(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Assigns sparse updates to the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = updates[i, ..., j, ...]
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function ResourceScatterUpdate(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a handle to a Variable resource.
		
		Args:
		  dtype: A `tf.DType`. the type of this variable. Must agree with the dtypes
		    of all ops using this variable.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The (possibly partially specified) shape of this variable.
		  container: An optional `string`. Defaults to `""`.
		    the container this variable is placed in.
		  shared_name: An optional `string`. Defaults to `""`.
		    the name by which this variable is referred to.
		  allowed_devices: An optional list of `strings`. Defaults to `[]`.
		    DEPRECATED. The allowed devices containing the resource variable. Set when the
		    output ResourceHandle represents a per-replica/partitioned resource variable.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function VarHandleOp(dtype:Dynamic, shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?allowed_devices:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks whether a resource handle-based variable has been initialized.
		
		Args:
		  resource: A `Tensor` of type `resource`. the input resource handle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function VarIsInitializedOp(resource:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the shape of the variable pointed to by `resource`.
		
		This operation returns a 1-D integer tensor representing the shape of `input`.
		
		For example:
		
		```
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
		shape(t) ==> [2, 2, 3]
		```
		
		Args:
		  input: A `Tensor` of type `resource`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function VariableShape(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds a value to the current value of a variable.
		
		Any ReadVariableOp with a control dependency on this op is guaranteed to
		see the incremented value or a subsequent newer one.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  value: A `Tensor`. the value by which the variable will be incremented.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function assign_add_variable_op(resource:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	static public function assign_add_variable_op_eager_fallback(resource:Dynamic, value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Subtracts a value from the current value of a variable.
		
		Any ReadVariableOp with a control dependency on this op is guaranteed to
		see the decremented value or a subsequent newer one.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  value: A `Tensor`. the value by which the variable will be incremented.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function assign_sub_variable_op(resource:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	static public function assign_sub_variable_op_eager_fallback(resource:Dynamic, value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Assigns a new value to a variable.
		
		Any ReadVariableOp with a control dependency on this op is guaranteed to return
		this value or a subsequent newer value of the variable.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  value: A `Tensor`. the value to set the new tensor to use.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function assign_variable_op(resource:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	static public function assign_variable_op_eager_fallback(resource:Dynamic, value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		This op consumes a lock created by `MutexLock`.
		
		This op exists to consume a tensor created by `MutexLock` (other than
		direct control dependencies).  It should be the only that consumes the tensor,
		and will raise an error if it is not.  Its only purpose is to keep the
		mutex lock tensor alive until it is consumed by this op.
		
		**NOTE**: This operation must run on the same device as its input.  This may
		be enforced via the `colocate_with` mechanism.
		
		Args:
		  mutex_lock: A `Tensor` of type `variant`.
		    A tensor returned by `MutexLock`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function consume_mutex_lock(mutex_lock:Dynamic, ?name:Dynamic):Dynamic;
	static public function consume_mutex_lock_eager_fallback(mutex_lock:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Deletes the resource specified by the handle.
		
		All subsequent operations using the resource will result in a NotFound
		error status.
		
		Args:
		  resource: A `Tensor` of type `resource`. handle to the resource to delete.
		  ignore_lookup_error: An optional `bool`. Defaults to `True`.
		    whether to ignore the error when the resource
		    doesn't exist.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function destroy_resource_op(resource:Dynamic, ?ignore_lookup_error:Dynamic, ?name:Dynamic):Dynamic;
	static public function destroy_resource_op_eager_fallback(resource:Dynamic, ignore_lookup_error:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Locks a mutex resource.  The output is the lock.  So long as the lock tensor
		
		is alive, any other request to use `MutexLock` with this mutex will wait.
		
		This is particularly useful for creating a critical section when used in
		conjunction with `MutexLockIdentity`:
		
		```python
		
		mutex = mutex_v2(
		  shared_name=handle_name, container=container, name=name)
		
		def execute_in_critical_section(fn, *args, **kwargs):
		  lock = gen_resource_variable_ops.mutex_lock(mutex)
		
		  with ops.control_dependencies([lock]):
		    r = fn(*args, **kwargs)
		
		  with ops.control_dependencies(nest.flatten(r)):
		    with ops.colocate_with(mutex):
		      ensure_lock_exists = mutex_lock_identity(lock)
		
		    # Make sure that if any element of r is accessed, all of
		    # them are executed together.
		    r = nest.map_structure(tf.identity, r)
		
		  with ops.control_dependencies([ensure_lock_exists]):
		    return nest.map_structure(tf.identity, r)
		```
		
		While `fn` is running in the critical section, no other functions which wish to
		use this critical section may run.
		
		Often the use case is that two executions of the same graph, in parallel,
		wish to run `fn`; and we wish to ensure that only one of them executes
		at a time.  This is especially important if `fn` modifies one or more
		variables at a time.
		
		It is also useful if two separate functions must share a resource, but we
		wish to ensure the usage is exclusive.
		
		Args:
		  mutex: A `Tensor` of type `resource`. The mutex resource to lock.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function mutex_lock(mutex:Dynamic, ?name:Dynamic):Dynamic;
	static public function mutex_lock_eager_fallback(mutex:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Creates a Mutex resource that can be locked by `MutexLock`.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this variable is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this variable is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function mutex_v2(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function mutex_v2_eager_fallback(container:Dynamic, shared_name:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Reads the value of a variable.
		
		The tensor returned by this operation is immutable.
		
		The value returned by this operation is guaranteed to be influenced by all the
		writes on which this operation depends directly or indirectly, and to not be
		influenced by any of the writes which depend directly or indirectly on this
		operation.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  dtype: A `tf.DType`. the dtype of the value.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function read_variable_op(resource:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function read_variable_op_eager_fallback(resource:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Gather slices from the variable pointed to by `resource` according to `indices`.
		
		`indices` must be an integer tensor of any dimension (usually 0-D or 1-D).
		Produces an output tensor with shape `indices.shape + params.shape[1:]` where:
		
		```python
		    # Scalar indices
		    output[:, ..., :] = params[indices, :, ... :]
		
		    # Vector indices
		    output[i, :, ..., :] = params[indices[i], :, ... :]
		
		    # Higher rank indices
		    output[i, ..., j, :, ... :] = params[indices[i, ..., j], :, ..., :]
		```
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  dtype: A `tf.DType`.
		  batch_dims: An optional `int`. Defaults to `0`.
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function resource_gather(resource:Dynamic, indices:Dynamic, dtype:Dynamic, ?batch_dims:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_gather_eager_fallback(resource:Dynamic, indices:Dynamic, dtype:Dynamic, batch_dims:Dynamic, validate_indices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		  dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function resource_gather_nd(resource:Dynamic, indices:Dynamic, dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_gather_nd_eager_fallback(resource:Dynamic, indices:Dynamic, dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Adds sparse updates to the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] += updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] += updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] += updates[i, ..., j, ...]
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_add(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_scatter_add_eager_fallback(resource:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Divides sparse updates into the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] /= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] /= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] /= updates[i, ..., j, ...]
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions multiply.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_div(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_scatter_div_eager_fallback(resource:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Reduces sparse updates into the variable referenced by `resource` using the `max` operation.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = max(ref[indices, ...], updates[...])
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = max(ref[indices[i], ...], updates[i, ...])
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = max(ref[indices[i, ..., j], ...], updates[i, ..., j, ...])
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions are combined.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_max(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_scatter_max_eager_fallback(resource:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Reduces sparse updates into the variable referenced by `resource` using the `min` operation.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = min(ref[indices, ...], updates[...])
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = min(ref[indices[i], ...], updates[i, ...])
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = min(ref[indices[i, ..., j], ...], updates[i, ..., j, ...])
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions are combined.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_min(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_scatter_min_eager_fallback(resource:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Multiplies sparse updates into the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] *= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] *= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] *= updates[i, ..., j, ...]
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions multiply.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_mul(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_scatter_mul_eager_fallback(resource:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Subtracts sparse updates from the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] -= updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] -= updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] -= updates[i, ..., j, ...]
		
		Duplicate entries are handled correctly: if multiple `indices` reference
		the same location, their contributions add.
		
		Requires `updates.shape = indices.shape + ref.shape[1:]` or `updates.shape = []`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src='https://www.tensorflow.org/images/ScatterAdd.png' alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_sub(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_scatter_sub_eager_fallback(resource:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Assigns sparse updates to the variable referenced by `resource`.
		
		This operation computes
		
		    # Scalar indices
		    ref[indices, ...] = updates[...]
		
		    # Vector indices (for each i)
		    ref[indices[i], ...] = updates[i, ...]
		
		    # High rank indices (for each i, ..., j)
		    ref[indices[i, ..., j], ...] = updates[i, ..., j, ...]
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_update(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
	static public function resource_scatter_update_eager_fallback(resource:Dynamic, indices:Dynamic, updates:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates a handle to a Variable resource.
		
		Args:
		  dtype: A `tf.DType`. the type of this variable. Must agree with the dtypes
		    of all ops using this variable.
		  shape: A `tf.TensorShape` or list of `ints`.
		    The (possibly partially specified) shape of this variable.
		  container: An optional `string`. Defaults to `""`.
		    the container this variable is placed in.
		  shared_name: An optional `string`. Defaults to `""`.
		    the name by which this variable is referred to.
		  allowed_devices: An optional list of `strings`. Defaults to `[]`.
		    DEPRECATED. The allowed devices containing the resource variable. Set when the
		    output ResourceHandle represents a per-replica/partitioned resource variable.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function var_handle_op(dtype:Dynamic, shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?allowed_devices:Dynamic, ?name:Dynamic):Dynamic;
	static public function var_handle_op_eager_fallback(dtype:Dynamic, shape:Dynamic, container:Dynamic, shared_name:Dynamic, allowed_devices:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Checks whether a resource handle-based variable has been initialized.
		
		Args:
		  resource: A `Tensor` of type `resource`. the input resource handle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function var_is_initialized_op(resource:Dynamic, ?name:Dynamic):Dynamic;
	static public function var_is_initialized_op_eager_fallback(resource:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Returns the shape of the variable pointed to by `resource`.
		
		This operation returns a 1-D integer tensor representing the shape of `input`.
		
		For example:
		
		```
		# 't' is [[[1, 1, 1], [2, 2, 2]], [[3, 3, 3], [4, 4, 4]]]
		shape(t) ==> [2, 2, 3]
		```
		
		Args:
		  input: A `Tensor` of type `resource`.
		  out_type: An optional `tf.DType` from: `tf.int32, tf.int64`. Defaults to `tf.int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function variable_shape(input:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function variable_shape_eager_fallback(input:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
}