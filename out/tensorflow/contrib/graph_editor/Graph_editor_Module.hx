/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor;
@:pythonImport("tensorflow.contrib.graph_editor") extern class Graph_editor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Bypass the given subgraph by connecting its inputs to its outputs.
		
		Args:
		  sgv: the subgraph view to be bypassed. This argument is converted to a
		    subgraph using the same rules than the function subgraph.make_view.
		Returns:
		  A new subgraph view of the bypassed subgraph.
		    Note that sgv is also modified in place.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function bypass(sgv:Dynamic):Dynamic;
	/**
		Connect the outputs of sgv0 to the inputs of sgv1.
		
		Args:
		  sgv0: the first subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules as the function
		    subgraph.make_view.
		  sgv1: the second subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules as the function
		    subgraph.make_view.
		  disconnect_first: if True the current outputs of sgv0 are disconnected.
		Returns:
		  Two new subgraph views (now connected). sgv0 and svg1 are also modified
		    in place.
		Raises:
		  StandardError: if sgv0 or sgv1 cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function connect(sgv0:Dynamic, sgv1:Dynamic, ?disconnect_first:Dynamic):Dynamic;
	/**
		Copy a subgraph.
		
		Args:
		  sgv: the source subgraph-view. This argument is converted to a subgraph
		    using the same rules than the function subgraph.make_view.
		  dst_graph: the destination graph.
		  dst_scope: the destination scope.
		  src_scope: the source scope.
		Returns:
		  the subgraph view of the copied subgraph.
		Raises:
		  TypeError: if dst_graph is not a tf.Graph.
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function copy(sgv:Dynamic, ?dst_graph:Dynamic, ?dst_scope:Dynamic, ?src_scope:Dynamic):Dynamic;
	/**
		Detach both the inputs and the outputs of a subgraph view.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  A new subgraph view of the detached subgraph.
		    Note that sgv is also modified in place.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function detach(sgv:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Detach the inputs of a subgraph view.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		  control_inputs: if True control_inputs are also detached.
		Returns:
		  A new subgraph view of the detached subgraph.
		    Note that sgv is also modified in place.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function detach_inputs(sgv:Dynamic, ?control_inputs:Dynamic):Dynamic;
	/**
		Detach the outputa of a subgraph view.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		  control_outputs: a util.ControlOutputs instance or None. If not None the
		    control outputs are also detached.
		Returns:
		  A new subgraph view of the detached subgraph.
		    Note that sgv is also modified in place.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function detach_outputs(sgv:Dynamic, ?control_outputs:Dynamic):Dynamic;
	static public var division : Dynamic;
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
	static public function ops(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a tf.placeholder for the Graph Editor.
		
		Note that the correct graph scope must be set by the calling function.
		The placeholder is named using the function placeholder_name (with no
		tensor argument).
		
		Args:
		  dtype: the tensor type.
		  shape: the tensor shape (optional).
		  scope: absolute scope within which to create the placeholder. None
		    means that the scope of t is preserved. "" means the root scope.
		Returns:
		  A newly created tf.placeholder.
	**/
	static public function ph(dtype:Dynamic, ?shape:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Re-route the inputs and outputs of sgv0 to sgv1 (see _reroute).
	**/
	static public function reroute_a2b(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Re-route all the inputs of sgv0 to sgv1 (see reroute_inputs).
	**/
	static public function reroute_a2b_inputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Re-route all the outputs of sgv0 to sgv1 (see _reroute_outputs).
	**/
	static public function reroute_a2b_outputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Re-route the inputs and outputs of sgv1 to sgv0 (see _reroute).
	**/
	static public function reroute_b2a(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Re-route all the inputs of sgv1 to sgv0 (see reroute_inputs).
	**/
	static public function reroute_b2a_inputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Re-route all the outputs of sgv1 to sgv0 (see _reroute_outputs).
	**/
	static public function reroute_b2a_outputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
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
	/**
		Create a SubGraphView from selected operations and passthrough tensors.
		
		Args:
		  *args: list of 1) regular expressions (compiled or not) or  2) (array of)
		    tf.Operation 3) (array of) tf.Tensor. Those objects will be converted
		    into a list of operations and a list of candidate for passthrough tensors.
		  **kwargs: keyword graph is used 1) to check that the ops and ts are from
		    the correct graph 2) for regular expression query
		Returns:
		  A subgraph view.
		Raises:
		  TypeError: if the optional keyword argument graph is not a tf.Graph
		    or if an argument in args is not an (array of) tf.Tensor
		    or an (array of) tf.Operation or a string or a regular expression.
		  ValueError: if one of the keyword arguments is unexpected.
	**/
	static public function sgv(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a subgraph from a name scope.
		
		Args:
		  scope: the name of the scope.
		  graph: the tf.Graph.
		Returns:
		  A subgraph view representing the given scope.
	**/
	static public function sgv_scope(scope:Dynamic, graph:Dynamic):Dynamic;
	/**
		Swap the inputs and outputs of sgv1 to sgv0 (see _reroute).
	**/
	static public function swap(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Swap all the inputs of sgv0 and sgv1 (see reroute_inputs).
	**/
	static public function swap_inputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
	/**
		Swap all the outputs of sgv0 and sgv1 (see _reroute_outputs).
	**/
	static public function swap_outputs(sgv0:Dynamic, sgv1:Dynamic):Dynamic;
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
	static public function ts(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}