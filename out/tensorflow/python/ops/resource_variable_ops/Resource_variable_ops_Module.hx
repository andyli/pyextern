/* This file is generated, do not edit! */
package tensorflow.python.ops.resource_variable_ops;
@:pythonImport("tensorflow.python.ops.resource_variable_ops") extern class Resource_variable_ops_Module {
	/**
		Gradient for gather op.
	**/
	static public function _GatherGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for read op.
	**/
	static public function _ReadGrad(_:Dynamic, grad:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _dense_var_to_tensor(_var:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Creates Variable or ResourceVariable from VariableDef as needed.
	**/
	static public function _from_proto_fn(v:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Converts Variable and ResourceVariable to VariableDef for collections.
	**/
	static public function _to_proto_fn(v:Dynamic, ?export_scope:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a value to the current value of a variable.
		
		Any ReadVariableOp which depends directly or indirectly on this assign is
		guaranteed to see the incremented value or a subsequent newer one.
		
		Outputs the incremented value, which can be used to totally order the
		increments to this variable.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  value: A `Tensor`. the value by which the variable will be incremented.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function assign_add_variable_op(resource:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Subtracts a value from the current value of a variable.
		
		Any ReadVariableOp which depends directly or indirectly on this assign is
		guaranteed to see the incremented value or a subsequent newer one.
		
		Outputs the incremented value, which can be used to totally order the
		increments to this variable.
		
		Args:
		  resource: A `Tensor` of type `resource`.
		    handle to the resource in which to store the variable.
		  value: A `Tensor`. the value by which the variable will be incremented.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function assign_sub_variable_op(resource:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	static public var print_function : Dynamic;
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
		  validate_indices: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
	**/
	static public function resource_gather(resource:Dynamic, indices:Dynamic, dtype:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Requires `updates.shape = indices.shape + ref.shape[1:]`.
		
		<div style="width:70%; margin:auto; margin-bottom:10px; margin-top:20px;">
		<img style="width:100%" src="https://www.tensorflow.org/images/ScatterAdd.png" alt>
		</div>
		
		Args:
		  resource: A `Tensor` of type `resource`. Should be from a `Variable` node.
		  indices: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    A tensor of indices into the first dimension of `ref`.
		  updates: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int64`, `int32`, `uint8`, `uint16`, `int16`, `int8`, `complex64`, `complex128`, `qint8`, `quint8`, `qint32`, `half`.
		    A tensor of updated values to add to `ref`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function resource_scatter_add(resource:Dynamic, indices:Dynamic, updates:Dynamic, ?name:Dynamic):Dynamic;
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
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function var_handle_op(dtype:Dynamic, shape:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks whether a resource handle-based variable has been initialized.
		
		Args:
		  resource: A `Tensor` of type `resource`. the input resource handle.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
		  a scalar boolean which is true if the variable has been
		  initialized.
	**/
	static public function var_is_initialized_op(resource:Dynamic, ?name:Dynamic):Dynamic;
}