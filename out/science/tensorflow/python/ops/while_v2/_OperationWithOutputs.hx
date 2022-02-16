/* This file is generated, do not edit! */
package tensorflow.python.ops.while_v2;
@:pythonImport("tensorflow.python.ops.while_v2", "_OperationWithOutputs") extern class _OperationWithOutputs {
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
		Creates an `Operation`.
		
		NOTE: This constructor validates the name of the `Operation` (passed
		as `node_def.name`). Valid `Operation` names match the following
		regular expression:
		
		    [A-Za-z0-9.][A-Za-z0-9_.\\-/]*
		
		Args:
		  node_def: `node_def_pb2.NodeDef`.  `NodeDef` for the `Operation`. Used for
		    attributes of `node_def_pb2.NodeDef`, typically `name`, `op`, and
		    `device`.  The `input` attribute is irrelevant here as it will be
		    computed when generating the model.
		  g: `Graph`. The parent graph.
		  inputs: list of `Tensor` objects. The inputs to this `Operation`.
		  output_types: list of `DType` objects.  List of the types of the `Tensors`
		    computed by this operation.  The length of this list indicates the
		    number of output endpoints of the `Operation`.
		  control_inputs: list of operations or tensors from which to have a control
		    dependency.
		  input_types: List of `DType` objects representing the types of the tensors
		    accepted by the `Operation`.  By default uses `[x.dtype.base_dtype for x
		    in inputs]`.  Operations that expect reference-typed inputs must specify
		    these explicitly.
		  original_op: Optional. Used to associate the new `Operation` with an
		    existing `Operation` (for example, a replica with the op that was
		    replicated).
		  op_def: Optional. The `op_def_pb2.OpDef` proto that describes the op type
		    that this `Operation` represents.
		
		Raises:
		  TypeError: if control inputs are not Operations or Tensors,
		    or if `node_def` is not a `NodeDef`,
		    or if `g` is not a `Graph`,
		    or if `inputs` are not tensors,
		    or if `inputs` and `input_types` are incompatible.
		  ValueError: if the `node_def` name is not valid.
	**/
	@:native("__init__")
	public function ___init__(c_op:Dynamic, g:Dynamic):Dynamic;
	/**
		Creates an `Operation`.
		
		NOTE: This constructor validates the name of the `Operation` (passed
		as `node_def.name`). Valid `Operation` names match the following
		regular expression:
		
		    [A-Za-z0-9.][A-Za-z0-9_.\\-/]*
		
		Args:
		  node_def: `node_def_pb2.NodeDef`.  `NodeDef` for the `Operation`. Used for
		    attributes of `node_def_pb2.NodeDef`, typically `name`, `op`, and
		    `device`.  The `input` attribute is irrelevant here as it will be
		    computed when generating the model.
		  g: `Graph`. The parent graph.
		  inputs: list of `Tensor` objects. The inputs to this `Operation`.
		  output_types: list of `DType` objects.  List of the types of the `Tensors`
		    computed by this operation.  The length of this list indicates the
		    number of output endpoints of the `Operation`.
		  control_inputs: list of operations or tensors from which to have a control
		    dependency.
		  input_types: List of `DType` objects representing the types of the tensors
		    accepted by the `Operation`.  By default uses `[x.dtype.base_dtype for x
		    in inputs]`.  Operations that expect reference-typed inputs must specify
		    these explicitly.
		  original_op: Optional. Used to associate the new `Operation` with an
		    existing `Operation` (for example, a replica with the op that was
		    replicated).
		  op_def: Optional. The `op_def_pb2.OpDef` proto that describes the op type
		    that this `Operation` represents.
		
		Raises:
		  TypeError: if control inputs are not Operations or Tensors,
		    or if `node_def` is not a `NodeDef`,
		    or if `g` is not a `Graph`,
		    or if `inputs` are not tensors,
		    or if `inputs` and `input_types` are incompatible.
		  ValueError: if the `node_def` name is not valid.
	**/
	public function new(c_op:Dynamic, g:Dynamic):Void;
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
		Raises a helpful error.
	**/
	public function __tf_tensor__(?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Add a new control input to this operation.
		
		Args:
		  op: the Operation to add as control input.
		
		Raises:
		  TypeError: if op is not an Operation.
		  ValueError: if op is from a different graph.
	**/
	public function _add_control_input(op:Dynamic):Dynamic;
	/**
		Add a list of new control inputs to this operation.
		
		Args:
		  ops: the list of Operations to add as control input.
		
		Raises:
		  TypeError: if ops is not a list of Operations.
		  ValueError: if any op in ops is from a different graph.
	**/
	public function _add_control_inputs(ops:Dynamic):Dynamic;
	/**
		Adds new Tensors to self.outputs.
		
		Note: this is generally unsafe to use. This is used in certain situations in
		conjunction with _set_type_list_attr.
		
		Args:
		  types: list of DTypes
		  shapes: list of TensorShapes
	**/
	public function _add_outputs(types:Dynamic, shapes:Dynamic):Dynamic;
	/**
		See AddWhileInputHack in python_api.h.
		
		NOTE: This is for TF internal use only. Please don't use it.
		
		Args:
		  tensors: list of Tensors
		
		Raises:
		  TypeError: if tensor is not a Tensor,
		    or if input tensor type is not convertible to dtype.
		  ValueError: if the Tensor is from a different graph.
	**/
	public function _add_while_inputs(tensors:Dynamic):Dynamic;
	/**
		Private method used to clear an attribute in the node_def.
	**/
	public function _clear_attr(attr_name:Dynamic):Dynamic;
	/**
		Code locations for colocation context managers active at op creation.
		
		This property will return a dictionary for which the keys are nodes with
		which this Operation is colocated, and for which the values are
		traceable_stack.TraceableObject instances.  The TraceableObject instances
		record the location of the relevant colocation context manager but have the
		"obj" field set to None to prevent leaking private data.
		
		For example, suppose file_a contained these lines:
		
		  file_a.py:
		    14: node_a = tf.constant(3, name='NODE_A')
		    15: with tf.compat.v1.colocate_with(node_a):
		    16:   node_b = tf.constant(4, name='NODE_B')
		
		Then a TraceableObject t_obj representing the colocation context manager
		would have these member values:
		
		  t_obj.obj -> None
		  t_obj.filename = 'file_a.py'
		  t_obj.lineno = 15
		
		and node_b.op._colocation_dict would return the dictionary
		
		  { 'NODE_A': t_obj }
		
		Returns:
		  {str: traceable_stack.TraceableObject} as per this method's description,
		  above.
	**/
	public var _colocation_dict : Dynamic;
	/**
		Add this op to its control flow context.
		
		This may add new ops and change this op's inputs. self.inputs must be
		available before calling this method.
		
		Args:
		  input_tensors: (Optional.) A list of `Tensors` corresponding to the inputs
		    of this op, which should be equivalent to `self.inputs`. Pass this
		    argument to avoid evaluating `self.inputs` unnecessarily.
	**/
	public function _control_flow_post_processing(?input_tensors:Dynamic):Dynamic;
	/**
		The `Operation` objects which have a control dependency on this op.
		
		Before any of the ops in self._control_outputs can execute tensorflow will
		ensure self has finished executing.
		
		Returns:
		  A list of `Operation` objects.
	**/
	public var _control_outputs : Dynamic;
	/**
		Code locations for device context managers active at op creation.
		
		This property will return a list of traceable_stack.TraceableObject
		instances where .obj is a string representing the assigned device
		(or information about the function that would be applied to this op
		to compute the desired device) and the filename and lineno members
		record the location of the relevant device context manager.
		
		For example, suppose file_a contained these lines:
		
		  file_a.py:
		    15: with tf.device('/gpu:0'):
		    16:   node_b = tf.constant(4, name='NODE_B')
		
		Then a TraceableObject t_obj representing the device context manager
		would have these member values:
		
		  t_obj.obj -> '/gpu:0'
		  t_obj.filename = 'file_a.py'
		  t_obj.lineno = 15
		
		and node_b.op._device_assignments would return the list [t_obj].
		
		Returns:
		  [str: traceable_stack.TraceableObject, ...] as per this method's
		  description, above.
	**/
	public var _device_assignments : Dynamic;
	/**
		Returns the `bool` value of the attr of this op with the given `name`.
	**/
	public function _get_attr_bool(name:Dynamic):Dynamic;
	/**
		Returns the `int` value of the attr of this op with the given `name`.
	**/
	public function _get_attr_int(name:Dynamic):Dynamic;
	/**
		Returns the `DType` value of the attr of this op with the given `name`.
	**/
	public function _get_attr_type(name:Dynamic):Dynamic;
	/**
		Returns the control flow context of this op.
		
		Returns:
		  A context object.
	**/
	public function _get_control_flow_context():Dynamic;
	/**
		The unique integer id of this operation.
	**/
	public var _id : Dynamic;
	public var _input_types : Dynamic;
	/**
		List this operation's output types.
		
		Returns:
		  List of the types of the Tensors computed by this operation.
		  Each element in the list is an integer whose value is one of
		  the TF_DataType enums defined in pywrap_tf_session.h
		  The length of this list indicates the number of output endpoints
		  of the operation.
	**/
	public var _output_types : Dynamic;
	/**
		Removes any control inputs to this operation.
	**/
	public function _remove_all_control_inputs():Dynamic;
	/**
		Private method used to set an attribute in the node_def.
	**/
	public function _set_attr(attr_name:Dynamic, attr_value:Dynamic):Dynamic;
	/**
		Set an attr in the node_def with a pre-allocated buffer.
	**/
	public function _set_attr_with_buf(attr_name:Dynamic, attr_buf:Dynamic):Dynamic;
	/**
		Sets the current control flow context of this op.
		
		Args:
		  ctx: a context object.
	**/
	public function _set_control_flow_context(ctx:Dynamic):Dynamic;
	/**
		Set the device of this operation.
		
		Args:
		  device: string or device..  The device to set.
	**/
	public function _set_device(device:Dynamic):Dynamic;
	/**
		Fast path to set device if the type is known to be a string.
		
		This function is called frequently enough during graph construction that
		there are non-trivial performance gains if the caller can guarantee that
		the specified device is already a string.
		
		Args:
		  device_str: A string specifying where to place this op.
	**/
	public function _set_device_from_string(device_str:Dynamic):Dynamic;
	/**
		Private method used to set a function attribute in the node_def.
	**/
	public function _set_func_attr(attr_name:Dynamic, func_name:Dynamic):Dynamic;
	/**
		Private method used to set a list(function) attribute in the node_def.
	**/
	public function _set_func_list_attr(attr_name:Dynamic, func_names:Dynamic):Dynamic;
	/**
		Private method used to set a list(shape) attribute in the node_def.
	**/
	public function _set_shape_list_attr(attr_name:Dynamic, shapes:Dynamic):Dynamic;
	/**
		Private method used to set a list(type) attribute in the node_def.
	**/
	public function _set_type_list_attr(attr_name:Dynamic, types:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Create and return a new TF_Input for input_idx'th input of this op.
	**/
	public function _tf_input(input_idx:Dynamic):Dynamic;
	/**
		Create and return a new TF_Output for output_idx'th output of this op.
	**/
	public function _tf_output(output_idx:Dynamic):Dynamic;
	/**
		Update the input to this operation at the given index.
		
		NOTE: This is for TF internal use only. Please don't use it.
		
		Args:
		  index: the index of the input to update.
		  tensor: the Tensor to be used as the input at the given index.
		
		Raises:
		  TypeError: if tensor is not a Tensor,
		    or if input tensor type is not convertible to dtype.
		  ValueError: if the Tensor is from a different graph.
	**/
	public function _update_input(index:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Returns the list of colocation groups of the op.
	**/
	public function colocation_groups():Dynamic;
	/**
		The `Operation` objects on which this op has a control dependency.
		
		Before this op is executed, TensorFlow will ensure that the
		operations in `self.control_inputs` have finished executing. This
		mechanism can be used to run ops sequentially for performance
		reasons, or to ensure that the side effects of an op are observed
		in the correct order.
		
		Returns:
		  A list of `Operation` objects.
	**/
	public var control_inputs : Dynamic;
	/**
		The name of the device to which this op has been assigned, if any.
		
		Returns:
		  The string name of the device to which this op has been
		  assigned, or an empty string if it has not been assigned to a
		  device.
	**/
	public var device : Dynamic;
	/**
		Returns the value of the attr of this op with the given `name`.
		
		Args:
		  name: The name of the attr to fetch.
		
		Returns:
		  The value of the attr, as a Python object.
		
		Raises:
		  ValueError: If this op does not have an attr with the given `name`.
	**/
	public function get_attr(name:Dynamic):Dynamic;
	/**
		The `Graph` that contains this operation.
	**/
	public var graph : Dynamic;
	/**
		The sequence of `Tensor` objects representing the data inputs of this op.
	**/
	public var inputs : Dynamic;
	/**
		The full name of this operation.
	**/
	public var name : Dynamic;
	/**
		Returns the `NodeDef` representation of this operation.
		
		Returns:
		  A
		  [`NodeDef`](https://www.tensorflow.org/code/tensorflow/core/framework/node_def.proto)
		  protocol buffer.
	**/
	public var node_def : Dynamic;
	/**
		Returns the `OpDef` proto that represents the type of this op.
		
		Returns:
		  An
		  [`OpDef`](https://www.tensorflow.org/code/tensorflow/core/framework/op_def.proto)
		  protocol buffer.
	**/
	public var op_def : Dynamic;
	/**
		The list of `Tensor` objects representing the outputs of this op.
	**/
	public var outputs : Dynamic;
	/**
		Runs this operation in a `Session`.
		
		Calling this method will execute all preceding operations that
		produce the inputs needed for this operation.
		
		*N.B.* Before invoking `Operation.run()`, its graph must have been
		launched in a session, and either a default session must be
		available, or `session` must be specified explicitly.
		
		Args:
		  feed_dict: A dictionary that maps `Tensor` objects to feed values. See
		    `tf.Session.run` for a description of the valid feed values.
		  session: (Optional.) The `Session` to be used to run to this operation. If
		    none, the default session will be used.
	**/
	public function run(?feed_dict:Dynamic, ?session:Dynamic):Dynamic;
	/**
		Returns the call stack from when this operation was constructed.
	**/
	public var traceback : Dynamic;
	/**
		The type of the op (e.g. `"MatMul"`).
	**/
	public var type : Dynamic;
	/**
		DEPRECATED: Use outputs.
	**/
	public function values():Dynamic;
}