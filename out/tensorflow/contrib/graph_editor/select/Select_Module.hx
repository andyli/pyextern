/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.select;
@:pythonImport("tensorflow.contrib.graph_editor.select") extern class Select_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compute the list of unique input tensors of all the op in ops.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		Returns:
		  The list of unique input tensors of all the op in ops.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function _get_input_ts(ops:Dynamic):Dynamic;
	/**
		Compute the list of unique output tensors of all the op in ops.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		Returns:
		  The list of unique output tensors of all the op in ops.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function _get_output_ts(ops:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return True if obj can be turned into a regular expression.
	**/
	static public function can_be_regex(obj:Dynamic):Dynamic;
	/**
		Do various check on control_inputs and control_outputs.
		
		Args:
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  control_inputs and control_outputs.
		Raises:
		  ValueError: if control_inputs is an instance of util.ControlOutputs but
		    control_outputs is not None
		  TypeError: if control_outputs is not None and is not a util.ControlOutputs.
	**/
	static public function check_cios(?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Compute the tensors at the boundary of a set of ops.
		
		This function looks at all the tensors connected to the given ops (in/out)
		and classify them into three categories:
		1) input tensors: tensors whose generating operation is not in ops.
		2) output tensors: tensors whose consumer operations are not in ops
		3) inside tensors: tensors which are neither input nor output tensors.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  ambiguous_are_outputs: a tensor can have consumers both inside and outside
		    ops. Such tensors are treated as outside tensor if inside_output_as_output
		    is True, otherwise they are treated as inside tensor.
		Returns:
		  A Python list of input tensors.
		  A Python list of output tensors.
		  A Python list of inside tensors.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function compute_boundary_ts(ops:Dynamic, ?ambiguous_are_outputs:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Get the ops passing the given filter.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  positive_filter: a function deciding where to keep an operation or not.
		    If True, all the operations are returned.
		Returns:
		  A list of selected tf.Operation.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function filter_ops(ops:Dynamic, positive_filter:Dynamic):Dynamic;
	/**
		Get all the operations that match the given regex.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  regex: a regular expression matching the operation's name.
		    For example, "^foo(/.*)?$" will match all the operations in the "foo"
		    scope.
		Returns:
		  A list of tf.Operation.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function filter_ops_from_regex(ops:Dynamic, regex:Dynamic):Dynamic;
	/**
		Get all the tensors which are input or output of an op in ops.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  positive_filter: a function deciding whether to keep a tensor or not.
		    If True, all the tensors are returned.
		Returns:
		  A list of tf.Tensor.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function filter_ts(ops:Dynamic, positive_filter:Dynamic):Dynamic;
	/**
		Get all the tensors linked to ops that match the given regex.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  regex: a regular expression matching the tensors' name.
		    For example, "^foo(/.*)?:\d+$" will match all the tensors in the "foo"
		    scope.
		Returns:
		  A list of tf.Tensor.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function filter_ts_from_regex(ops:Dynamic, regex:Dynamic):Dynamic;
	/**
		Do a backward graph walk and return all the visited ops.
		
		Args:
		  seed_ops: an iterable of operations from which the backward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the generators of those tensors.
		  inclusive: if True the given seed_ops are also part of the resulting set.
		  within_ops: an iterable of tf.Operation whithin which the search is
		    restricted. If within_ops is None, the search is performed within
		    the whole graph.
		  stop_at_ts: an iterable of tensors at which the graph walk stops.
		  control_inputs: if True, control inputs will be used while moving backward.
		Returns:
		  A Python set of all the tf.Operation behind seed_ops.
		Raises:
		  TypeError: if seed_ops or within_ops cannot be converted to a list of
		    tf.Operation.
	**/
	static public function get_backward_walk_ops(seed_ops:Dynamic, ?inclusive:Dynamic, ?within_ops:Dynamic, ?stop_at_ts:Dynamic, ?control_inputs:Dynamic):Dynamic;
	/**
		Do a forward graph walk and return all the visited ops.
		
		Args:
		  seed_ops: an iterable of operations from which the forward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the consumers of those tensors.
		  inclusive: if True the given seed_ops are also part of the resulting set.
		  within_ops: an iterable of tf.Operation whithin which the search is
		    restricted. If within_ops is None, the search is performed within
		    the whole graph.
		  stop_at_ts: an iterable of tensors at which the graph walk stops.
		  control_outputs: a util.ControlOutputs instance or None.
		    If not None, it will be used while walking the graph forward.
		Returns:
		  A Python set of all the tf.Operation ahead of seed_ops.
		Raises:
		  TypeError: if seed_ops or within_ops cannot be converted to a list of
		    tf.Operation.
	**/
	static public function get_forward_walk_ops(seed_ops:Dynamic, ?inclusive:Dynamic, ?within_ops:Dynamic, ?stop_at_ts:Dynamic, ?control_outputs:Dynamic):Dynamic;
	/**
		Get all the operations under the given scope path.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  scope: a scope path.
		Returns:
		  A list of tf.Operation.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function get_name_scope_ops(ops:Dynamic, scope:Dynamic):Dynamic;
	/**
		Return all the tf.Operation which are connected to an op in ops.
		
		Args:
		  ops: an object convertible to a list of tf.Operation.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  All the tf.Operation surrounding the given ops.
		Raises:
		  TypeError: if ops cannot be converted to a list of tf.Operation.
	**/
	static public function get_ops_ios(ops:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Return the intersection of a foward and a backward walk.
		
		Args:
		  forward_seed_ops: an iterable of operations from which the forward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the consumers of those tensors.
		  backward_seed_ops: an iterable of operations from which the backward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the generators of those tensors.
		  forward_inclusive: if True the given forward_seed_ops are also part of the
		    resulting set.
		  backward_inclusive: if True the given backward_seed_ops are also part of the
		    resulting set.
		  within_ops: an iterable of tf.Operation whithin which the search is
		    restricted. If within_ops is None, the search is performed within
		    the whole graph.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  A Python set of all the tf.Operation in the intersection of a foward and a
		    backward walk.
		Raises:
		  TypeError: if forward_seed_ops or backward_seed_ops or within_ops cannot be
		    converted to a list of tf.Operation.
	**/
	static public function get_walks_intersection_ops(forward_seed_ops:Dynamic, backward_seed_ops:Dynamic, ?forward_inclusive:Dynamic, ?backward_inclusive:Dynamic, ?within_ops:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Return the union of a foward and a backward walk.
		
		Args:
		  forward_seed_ops: an iterable of operations from which the forward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the consumers of those tensors.
		  backward_seed_ops: an iterable of operations from which the backward graph
		    walk starts. If a list of tensors is given instead, the seed_ops are set
		    to be the generators of those tensors.
		  forward_inclusive: if True the given forward_seed_ops are also part of the
		    resulting set.
		  backward_inclusive: if True the given backward_seed_ops are also part of the
		    resulting set.
		  within_ops: restrict the search within those operations. If within_ops is
		    None, the search is done within the whole graph.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  A Python set of all the tf.Operation in the union of a foward and a
		    backward walk.
		Raises:
		  TypeError: if forward_seed_ops or backward_seed_ops or within_ops cannot be
		    converted to a list of tf.Operation.
	**/
	static public function get_walks_union_ops(forward_seed_ops:Dynamic, backward_seed_ops:Dynamic, ?forward_inclusive:Dynamic, ?backward_inclusive:Dynamic, ?within_ops:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Return all the tf.Operation within the given boundary.
		
		Args:
		  ops: an object convertible to a list of tf.Operation. those ops define the
		    set in which to perform the operation (if a tf.Graph is given, it
		    will be converted to the list of all its operations).
		  seed_ops: the operations from which to start expanding.
		  boundary_ops: the ops forming the boundary.
		  inclusive: if True, the result will also include the boundary ops.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  All the tf.Operation surrounding the given ops.
		Raises:
		  TypeError: if ops or seed_ops cannot be converted to a list of tf.Operation.
		  ValueError: if the boundary is intersecting with the seeds.
	**/
	static public function get_within_boundary_ops(ops:Dynamic, seed_ops:Dynamic, boundary_ops:Dynamic, ?inclusive:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a compiled regular expression.
		
		Args:
		  obj: a string or a regular expression.
		Returns:
		  A compiled regular expression.
		Raises:
		  ValueError: if obj could not be converted to a regular expression.
	**/
	static public function make_regex(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Helper to select operations.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or  2) (array of)
		    tf.Operation. tf.Tensor instances are silently ignored.
		  **kwargs: 'graph': tf.Graph in which to perform the regex query.This is
		    required when using regex.
		    'positive_filter': an elem if selected only if positive_filter(elem) is
		      True. This is optional.
		    'restrict_ops_regex': a regular expression is ignored if it doesn't start
		      with the substring "(?#ops)".
		Returns:
		  list of tf.Operation
		Raises:
		  TypeError: if the optional keyword argument graph is not a tf.Graph
		    or if an argument in args is not an (array of) tf.Operation
		    or an (array of) tf.Tensor (silently ignored) or a string
		    or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected or if a regular
		    expression is used without passing a graph as a keyword argument.
	**/
	static public function select_ops(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper to select operations and tensors.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or  2) (array of)
		    tf.Operation 3) (array of) tf.Tensor. Regular expressions matching tensors
		    must start with the comment "(?#ts)", for instance: "(?#ts)^foo/.*".
		  **kwargs: 'graph': tf.Graph in which to perform the regex query.This is
		    required when using regex.
		    'positive_filter': an elem if selected only if positive_filter(elem) is
		      True. This is optional.
		Returns:
		  list of tf.Operation
		  list of tf.Tensor
		Raises:
		  TypeError: if the optional keyword argument graph is not a tf.Graph
		    or if an argument in args is not an (array of) tf.Tensor
		    or an (array of) tf.Operation or a string or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected or if a regular
		    expression is used without passing a graph as a keyword argument.
	**/
	static public function select_ops_and_ts(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper to select tensors.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or  2) (array of)
		    tf.Tensor. tf.Operation instances are silently ignored.
		  **kwargs: 'graph': tf.Graph in which to perform the regex query.This is
		    required when using regex.
		    'positive_filter': an elem if selected only if positive_filter(elem) is
		      True. This is optional.
		    'restrict_ts_regex': a regular expression is ignored if it doesn't start
		      with the substring "(?#ts)".
		Returns:
		  list of tf.Tensor
		Raises:
		  TypeError: if the optional keyword argument graph is not a tf.Graph
		    or if an argument in args is not an (array of) tf.Tensor
		    or an (array of) tf.Operation (silently ignored) or a string
		    or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected or if a regular
		    expression is used without passing a graph as a keyword argument.
	**/
	static public function select_ts(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var string_types : Dynamic;
}