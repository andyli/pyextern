/* This file is generated, do not edit! */
package tensorflow.python.framework.subscribe;
@:pythonImport("tensorflow.python.framework.subscribe") extern class Subscribe_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks if the given tensor is an identity op returned by `subscribe()`.
		
		Args:
		  tensor: A `tf.Tensor` to check.
		Returns:
		  True if the given tensor matches the criteria for subscription identies:
		  its op type is `Identity`, its name matches the name of its input and
		  conforms to the convention for subscribed nodes.
		  False otherwise.
	**/
	static public function _is_subscribed_identity(tensor:Dynamic):Dynamic;
	/**
		Preserve the control flow context for the given tensor.
		
		Sets the graph context to the tensor's context so that side effect ops are
		added under the same context.
		
		This is needed when subscribing to tensors defined within a conditional
		block or a while loop. In these cases we need that the side-effect ops
		are created within the same control flow context as that of the tensor
		they are attached to.
		
		Args:
		  tensor: tensor whose context should be preserved.
		
		Yields:
		  None
	**/
	static public function _preserve_control_flow_context(tensor:Dynamic):Dynamic;
	/**
		Helper method to recursively apply a function to structure of tensors.
		
		The structure of the tensors should take the form similar to fetches in
		`tf.Session` and includes single `Tensor`, `list`, nested `list`, `tuple`,
		`namedtuple`, or `dict`.
		
		Args:
		  tensors: Single `Tensor`, `list`, nested `list, `tuple`,
		    `namedtuple`, or `dict`.
		  apply_fn: Function to apply to each `Tensor` and should return a `Tensor`.
		Returns:
		  Returns the modified tensors with the same structure.
		Raises:
		  `TypeError` if undefined type in the tensors structure.
	**/
	static public function _recursive_apply(tensors:Dynamic, apply_fn:Dynamic):Dynamic;
	/**
		Helper method that subscribes a single tensor to a list of side_effects.
		
		This is a thin wrapper around `_subscribe` and ensures that the side effect
		ops are added within the same device and control flow context of the
		subscribed tensor.
		
		Args:
		  tensor: The `tf.Tensor` to be subscribed.
		  side_effects: List of side_effect functions, see subscribe for details.
		  control_cache: `_ControlOutputCache` helper to get control_outputs faster.
		Returns:
		  The modified replacement to the passed in tensor which triggers the side
		  effects or the given tensor, if it was already been subscribed.
	**/
	static public function _scoped_subscribe(tensor:Dynamic, side_effects:Dynamic, control_cache:Dynamic):Dynamic;
	/**
		Helper method that subscribes a single tensor to a list of side_effects.
		
		This method will check if the given tensor has already been subscribed or if
		it's a tensor returned by a previous call to `subscribe()` and, if so, will
		reuse the existing identity op, appending the given side effects to the list
		of existing ones.
		
		Args:
		  tensor: The `tf.Tensor` to be subscribed.
		  side_effects: List of side_effect functions, see subscribe for details.
		  control_cache: `_ControlOutputCache` helper to get control_outputs faster.
		Returns:
		  The modified replacement to the passed in tensor which triggers the side
		  effects or the given tensor, if it was already been subscribed.
	**/
	static public function _subscribe(tensor:Dynamic, side_effects:Dynamic, control_cache:Dynamic):Dynamic;
	/**
		Helper method to extend the list of side_effects for a subscribed tensor.
		
		Args:
		  tensor: A `tf.Tensor` as returned by subscribe().
		  side_effects: List of side_effect functions, see subscribe for details.
		Returns:
		  The given subscribed tensor (for API consistency).
	**/
	static public function _subscribe_extend(tensor:Dynamic, side_effects:Dynamic):Dynamic;
	/**
		Helper method that subscribes a single tensor to a list of side_effects.
		
		Args:
		  tensor: `tf.Tensor`
		  side_effects: List of side_effect functions see subscribe for details.
		  control_cache: `_ControlOutputCache` helper to get control_outputs faster.
		Returns:
		  The modified replacement to the passed in tensor which triggers the side
		  effects.
	**/
	static public function _subscribe_new(tensor:Dynamic, side_effects:Dynamic, control_cache:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Subscribe to a tensor.
		
		This method will attach side effect graphs to a given set
		of tensors. Set of tensors follows from session.run and supports
		single `Tensor`, `list`, nested `list`, `tuple`, `namedtuple`, or `dict`. It
		returns the tensors in the same passed in structure, but as clones with
		side effects applied. The supplied side effect graphs are specified
		as a constructor function which takes the target tensor and
		constructs a side effect graph and returns a list of ops that should
		be control dependencies on fetching the tensor. It will append
		'subscription' to the name scope of the tensor for every node in
		the side effect graph. These control dependencies are what trigger
		the side effects. Subscribe will construct the additions to your
		graph and return the created identity tensor downstream of the control
		dependencies. Use these tensors as you would normally in the rest of
		your tensorflow code. If a given tensor has already been subscribed or a
		tensor returned by a call to subscribe is passed, the previously created
		identity tensor will be reused and the side effect graphs will be added to
		the existing ones.
		
		Args:
		  tensors: `Tensor` or set of tensors to subscribe to. Set of tensors format
		    follows from `Session.run` and supports single `Tensor`, `list`, nested
		    `list`, `tuple`, `namedtuple`, or `dict`.
		  side_effects: Function(s) that takes a `Tensor`, construct a subgraph, and
		    return a nonempty list of control dependencies. This can be a single
		    function or list of functions.
		Returns:
		  Subscribed tensors, which are identity copies of the passed in tensors
		    in the same passed in structure, but the graph has been modified
		    such that these are downstream of the control dependencies for
		    the side effect graphs. Use these functionally equivalent tensors
		    instead of the passed in tensors for further construction or running.
	**/
	static public function subscribe(tensors:Dynamic, side_effects:Dynamic):Dynamic;
}