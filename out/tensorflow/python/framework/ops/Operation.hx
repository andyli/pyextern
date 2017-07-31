/* This file is generated, do not edit! */
package tensorflow.python.framework.ops;
@:pythonImport("tensorflow.python.framework.ops", "Operation") extern class Operation {
	/**
		Immutable input list wrapper.
	**/
	static public function _InputList(op:Dynamic):Dynamic;
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
		Creates an `Operation`.
		
		NOTE: This constructor validates the name of the `Operation` (passed
		as `node_def.name`). Valid `Operation` names match the following
		regular expression:
		
		    [A-Za-z0-9.][A-Za-z0-9_.\\-/]*
		
		Args:
		  node_def: `node_def_pb2.NodeDef`.  `NodeDef` for the `Operation`.
		    Used for attributes of `node_def_pb2.NodeDef`, typically `name`,
		    `op`, and `device`.  The `input` attribute is irrelevant here
		    as it will be computed when generating the model.
		  g: `Graph`. The parent graph.
		  inputs: list of `Tensor` objects. The inputs to this `Operation`.
		  output_types: list of `DType` objects.  List of the types of the
		    `Tensors` computed by this operation.  The length of this list indicates
		    the number of output endpoints of the `Operation`.
		  control_inputs: list of operations or tensors from which to have a
		    control dependency.
		  input_types: List of `DType` objects representing the
		    types of the tensors accepted by the `Operation`.  By default
		    uses `[x.dtype.base_dtype for x in inputs]`.  Operations that expect
		    reference-typed inputs must specify these explicitly.
		  original_op: Optional. Used to associate the new `Operation` with an
		    existing `Operation` (for example, a replica with the op that was
		    replicated).
		  op_def: Optional. The `op_def_pb2.OpDef` proto that describes the
		    op type that this `Operation` represents.
		
		Raises:
		  TypeError: if control inputs are not Operations or Tensors,
		    or if `node_def` is not a `NodeDef`,
		    or if `g` is not a `Graph`,
		    or if `inputs` are not tensors,
		    or if `inputs` and `input_types` are incompatible.
		  ValueError: if the `node_def` name is not valid.
	**/
	@:native("__init__")
	public function ___init__(node_def:Dynamic, g:Dynamic, ?inputs:Dynamic, ?output_types:Dynamic, ?control_inputs:Dynamic, ?input_types:Dynamic, ?original_op:Dynamic, ?op_def:Dynamic):Dynamic;
	/**
		Creates an `Operation`.
		
		NOTE: This constructor validates the name of the `Operation` (passed
		as `node_def.name`). Valid `Operation` names match the following
		regular expression:
		
		    [A-Za-z0-9.][A-Za-z0-9_.\\-/]*
		
		Args:
		  node_def: `node_def_pb2.NodeDef`.  `NodeDef` for the `Operation`.
		    Used for attributes of `node_def_pb2.NodeDef`, typically `name`,
		    `op`, and `device`.  The `input` attribute is irrelevant here
		    as it will be computed when generating the model.
		  g: `Graph`. The parent graph.
		  inputs: list of `Tensor` objects. The inputs to this `Operation`.
		  output_types: list of `DType` objects.  List of the types of the
		    `Tensors` computed by this operation.  The length of this list indicates
		    the number of output endpoints of the `Operation`.
		  control_inputs: list of operations or tensors from which to have a
		    control dependency.
		  input_types: List of `DType` objects representing the
		    types of the tensors accepted by the `Operation`.  By default
		    uses `[x.dtype.base_dtype for x in inputs]`.  Operations that expect
		    reference-typed inputs must specify these explicitly.
		  original_op: Optional. Used to associate the new `Operation` with an
		    existing `Operation` (for example, a replica with the op that was
		    replicated).
		  op_def: Optional. The `op_def_pb2.OpDef` proto that describes the
		    op type that this `Operation` represents.
		
		Raises:
		  TypeError: if control inputs are not Operations or Tensors,
		    or if `node_def` is not a `NodeDef`,
		    or if `g` is not a `Graph`,
		    or if `inputs` are not tensors,
		    or if `inputs` and `input_types` are incompatible.
		  ValueError: if the `node_def` name is not valid.
	**/
	public function new(node_def:Dynamic, g:Dynamic, ?inputs:Dynamic, ?output_types:Dynamic, ?control_inputs:Dynamic, ?input_types:Dynamic, ?original_op:Dynamic, ?op_def:Dynamic):Void;
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
		Add a new input to this operation.
		
		Args:
		  tensor: the Tensor to add as an input.
		  dtype: tf.DType: type of the input; defaults to
		    the tensor's dtype.
		
		Raises:
		  TypeError: if tensor is not a Tensor,
		    or if input tensor type is not convertible to dtype.
		  ValueError: if the Tensor is from a different graph.
	**/
	public function _add_input(tensor:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a TF_Operation.
		
		Arguments:
		  graph: a `Graph`.
		  node_def: `node_def_pb2.NodeDef` for the operation to create.
		  inputs: A list of `Tensor`s (corresponding to scalar inputs) and lists of
		    `Tensor`s (corresponding to sequence inputs, e.g. "int64 * N",
		    "list(int64)"). The length of the list should be equal to the number of
		    inputs specified by this operation's op def.
		  control_inputs: A list of `Operation`s to set as control dependencies.
		
		Returns:
		  A wrapped TF_Operation*.
	**/
	public function _create_c_op(graph:Dynamic, node_def:Dynamic, inputs:Dynamic, control_inputs:Dynamic):Dynamic;
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
	public var _input_dtypes : Dynamic;
	public function _recompute_node_def():Dynamic;
	/**
		Regroups a flat list of input tensors into scalar and sequence inputs.
		
		Arguments:
		  op_def: The `op_def_pb2.OpDef` (for knowing the input types)
		  inputs: a list of input `Tensor`s to the op.
		  attrs: mapping from attr name to `attr_value_pb2.AttrValue` (these define
		    how long each sequence is)
		
		Returns:
		  A list of `Tensor`s (corresponding to scalar inputs) and lists of
		  `Tensor`s (corresponding to sequence inputs).
	**/
	public function _reconstruct_sequence_inputs(op_def:Dynamic, inputs:Dynamic, attrs:Dynamic):Dynamic;
	/**
		Sets the current control flow context of this op.
		
		Args:
		  context: a context object.
	**/
	public function _set_control_flow_context(context:Dynamic):Dynamic;
	/**
		Set the device of this operation.
		
		Args:
		  device: string or device..  The device to set.
	**/
	public function _set_device(device:Dynamic):Dynamic;
	/**
		Update the input to this operation at the given index.
		
		NOTE: This is for TF internal use only. Please don't use it.
		
		Args:
		  index: the index of the input to update.
		  tensor: the Tensor to be used as the input at the given index.
		  dtype: tf.DType: type of the input; defaults to
		    the tensor's dtype.
		
		Raises:
		  TypeError: if tensor is not a Tensor,
		    or if input tensor type is not convertible to dtype.
		  ValueError: if the Tensor is from a different graph.
	**/
	public function _update_input(index:Dynamic, tensor:Dynamic, ?dtype:Dynamic):Dynamic;
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
		The list of `Tensor` objects representing the data inputs of this op.
	**/
	public var inputs : Dynamic;
	/**
		The full name of this operation.
	**/
	public var name : Dynamic;
	/**
		Returns a serialized `NodeDef` representation of this operation.
		
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
		  feed_dict: A dictionary that maps `Tensor` objects to feed values.
		    See @{tf.Session.run}
		    for a description of the valid feed values.
		  session: (Optional.) The `Session` to be used to run to this operation. If
		    none, the default session will be used.
	**/
	public function run(?feed_dict:Dynamic, ?session:Dynamic):Dynamic;
	/**
		Returns the call stack from when this operation was constructed.
	**/
	public var traceback : Dynamic;
	/**
		Same as traceback but includes start line of function definition.
		
		Returns:
		  A list of 5-tuples (filename, lineno, name, code, func_start_lineno).
	**/
	public var traceback_with_start_lines : Dynamic;
	/**
		The type of the op (e.g. `"MatMul"`).
	**/
	public var type : Dynamic;
	/**
		DEPRECATED: Use outputs.
	**/
	public function values():Dynamic;
}