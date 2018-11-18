/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.stepper;
@:pythonImport("tensorflow.python.debug.lib.stepper", "NodeStepper") extern class NodeStepper {
	static public var FEED_TYPE_CLIENT : Dynamic;
	static public var FEED_TYPE_DUMPED_INTERMEDIATE : Dynamic;
	static public var FEED_TYPE_HANDLE : Dynamic;
	static public var FEED_TYPE_OVERRIDE : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, exc_traceback:Dynamic):Dynamic;
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
		Constructor for Debugger.
		
		Args:
		  sess: (Session) the TensorFlow Session to step in.
		  fetches: Same as the fetches input argument to `Session.run()`.
		  feed_dict: Same as the feed_dict input argument to `Session.run()`.
	**/
	@:native("__init__")
	public function ___init__(sess:Dynamic, fetches:Dynamic, ?feed_dict:Dynamic):Dynamic;
	/**
		Constructor for Debugger.
		
		Args:
		  sess: (Session) the TensorFlow Session to step in.
		  fetches: Same as the fetches input argument to `Session.run()`.
		  feed_dict: Same as the feed_dict input argument to `Session.run()`.
	**/
	public function new(sess:Dynamic, fetches:Dynamic, ?feed_dict:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _cont_call_dump_path():Dynamic;
	/**
		Trace back the input of a graph element, using depth-first search.
		
		Uses non-recursive implementation to prevent stack overflow for deep
		graphs.
		
		Also performs the following action(s):
		  1) When encountering a Variable, obtain its initializer op, to
		     facilitate possible subsequent restoration / overriding of variable
		     value.
		
		Args:
		  graph: A TF graph instance.
		  elem_list: list of graph elements: a Tensor or an Operation.
		
		Returns:
		  (list of str) A topologically-sorted list of all nodes (not tensors)
		    in the transitive closure of elem_list. Obviously, the topological sort
		     is not unique in general. The return value here is just an arbitrary
		     one of potentially many possible topological sorts.
		  (list of str) A list of all graph elements (nodes and/or tensors) in the
		    transitive closure.
	**/
	public function _dfs_visit(graph:Dynamic, elem_list:Dynamic):Dynamic;
	/**
		Get the lists of fetches and their names.
		
		Args:
		  flattened_fetches: A list of fetches or their names. Can mix fetches and
		    names.
		
		Returns:
		  (list of str): A list of the names of the fetches.
		  (list): A list of the fetches.
	**/
	public function _get_fetch_and_name_lists(flattened_fetches:Dynamic):Dynamic;
	/**
		Get the node of a graph element.
		
		Args:
		  element: A graph element (Op, Tensor or Node)
		
		Returns:
		  The node associated with element in the graph.
	**/
	public function _get_node(element:Dynamic):Dynamic;
	public function _get_node_name(graph_element_name:Dynamic):Dynamic;
	/**
		Invalidate the cached tensor handles by tracing output.
		
		This method is used to invalidate caches such as cached TensorHandles
		and intermediate tensor values when Variable mutation happens or when
		client overrides tensor values.
		
		Uses non-recursive implementation to avoid stack overflow on deep networks.
		
		Args:
		  source_element: The source graph element (e.g., a Variable output slot)
		    to trace the output from.
	**/
	public function _invalidate_transitively_outgoing_cache(source_element:Dynamic):Dynamic;
	public function _load_dumped_intermediate_tensors(dump_path:Dynamic, target_name:Dynamic):Dynamic;
	/**
		Prepare the dump path and RunOptions for next cont() call.
		
		Returns:
		  dump_path: (str) Directory path to which the intermediate tensor will be
		    dumped.
		  run_options: (config_pb2.RunOptions) The RunOptions containing the tensor
		    watch options for this graph.
	**/
	public function _prepare_cont_call_dump_path_and_run_options():Dynamic;
	/**
		Get a name list of the graph elements of the stepper.
		
		Returns:
		  (list of str): names of the graph elements (i.e., nodes and tensors) in
		the transitive closure of the stepper, in a random order.
	**/
	public function closure_elements():Dynamic;
	/**
		Continue till the completion of the specified target tensor.
		
		Args:
		  target: A single fetched Tensor or Op, or a name (str) representing the
		    Tensor or Op. In the case of a name str, the graph will be searched
		    to find the corresponding Tensor or Op.
		    # TODO(cais): Support multiple fetches as in Session.run() interface.
		  use_tensor_handles: (bool) Whether this cont() run will use cached tensor
		    handles to avoid recomputation. Default: True.
		  use_dumped_intermediates: (bool) Whether this cont() call will use dumped
		    intermediate tensors to avoid recomputation.
		  use_overrides: (bool) Whether the overriding tensor values supplied by
		    the client are to be used in this cont() call. Default: True.
		  invalidate_from_updated_variables: (bool) Whether to invalidate the
		    tensor handles and intermediate tensor handles affected by the
		    Variable updates that happen in this cont() call.
		  restore_variable_values: (bool) Whether the old values of the variables
		    (before any cont() calls in this object) are to be restored.
		
		Returns:
		  Value from Session.run() of the target.
		
		Raises:
		  ValueError: If the target is specified as a string and the string does
		    not correspond to any tensors in the Session graph.
		    Or if the target of this cont() is not in the input list of the Stepper
		    object's target.
		    Or if target is a Placeholder.
	**/
	public function cont(target:Dynamic, ?use_tensor_handles:Dynamic, ?use_dumped_intermediates:Dynamic, ?use_overrides:Dynamic, ?invalidate_from_updated_variables:Dynamic, ?restore_variable_values:Dynamic):Dynamic;
	/**
		Get the set of variables that are currently "dirty".
		
		"dirty" means:
		  previous cont() calls have updated the value of the Variable,
		  and the Variable's old value (the value before any cont() calls
		  happened) was not restored.
		
		Returns:
		  (set) A set of dirty variables.
	**/
	public function dirty_variables():Dynamic;
	/**
		Run the final fetch(es).
		
		Restore the dirty variables; ignore the client-supplied overriding tensor
		values.
		
		Returns:
		  The same return value as self.cont() as called on the final fetch.
	**/
	public function finalize():Dynamic;
	/**
		Get the value of a tensor that the stepper has access to.
		
		Args:
		  tensor_name: (str) Name of the tensor.
		
		Returns:
		  Value of the tensor, from overriding values or cached tensor handles.
		
		Raises:
		  ValueError: If the value is not available as an overriding value
		    or through a TensorHandle.
	**/
	public function get_tensor_value(tensor_name:Dynamic):Dynamic;
	/**
		Return names of the TensorHandles that the debugger is holding.
		
		Returns:
		  (list of str) Name of the tensors for which TensorHandle is available.
	**/
	public function handle_names():Dynamic;
	/**
		Get list of names of the nodes for which handles are available.
		
		Returns:
		  (set of str) List of names of the nodes.
	**/
	public function handle_node_names():Dynamic;
	/**
		Get list of the names of the Tensors for which dumps are available.
		
		Returns:
		  (list of str) List of the names of the Tensors for which intermediate
		    dumps are available.
	**/
	public function intermediate_tensor_names():Dynamic;
	/**
		Determine if a graph element if feedable.
		
		Args:
		  name: (str) name of the graph element (Tensor or Operation)
		
		Returns:
		  (bool) whether the graph element is feedable.
	**/
	public function is_feedable(name:Dynamic):Dynamic;
	/**
		Check whether a graph element is a Placeholder, by name.
		
		Args:
		  graph_element_name: (str) Name of the tensor or op to be tested.
		
		Returns:
		  (bool) Whether the graph element of the specified name is a Placeholder
		    op or the output Tensor of a Placeholder op.
		
		Raises:
		  ValueError: If graph_element_name is not in the transitive closure of the
		    stepper instance.
	**/
	public function is_placeholder(graph_element_name:Dynamic):Dynamic;
	/**
		Obtain information about the feed in the last cont() call.
		
		Returns:
		  (dict) A dict mapping tensor names to feed types.
	**/
	public function last_feed_types():Dynamic;
	/**
		Get the names of the variables updated in the last cont() call.
		
		Returns:
		  A set of the variable names updated in the previous cont() call.
		  If no cont() call has occurred before, returns None.
	**/
	public function last_updated():Dynamic;
	/**
		Get the output tensors in the transitive closure from node.
		
		Args:
		  node_name: (str) Name of the node in question.
		
		Returns:
		  (list of int) Output slots of the output tensors of the node that are in
		    the transitive closure of the stepper.
	**/
	public function output_slots_in_closure(node_name:Dynamic):Dynamic;
	/**
		Return names of the TensorHandles that the debugger is holding.
		
		Returns:
		  (list of str) Name of the tensor for which overriding tensor values are
		    available.
	**/
	public function override_names():Dynamic;
	/**
		Override the value of a tensor.
		
		Args:
		  tensor_name: (str) Name of the tensor to override.
		  overriding_val: (numpy.ndarray) Overriding tensor value.
		
		Raises:
		  ValueError: If tensor_name does not correspond to a tensor in the input
		    tree to the fetched graph element of this stepper instance.
	**/
	public function override_tensor(tensor_name:Dynamic, overriding_val:Dynamic):Dynamic;
	/**
		Get the list of Placeholder Tensors in the transitive closure.
		
		Returns:
		  (list of str) A list of Placeholder Tensors or ops in the transitive
		    closure.
	**/
	public function placeholders():Dynamic;
	/**
		Remove the overriding value on a tensor.
		
		Args:
		  tensor_name: (str) name of the tensor to remove the overriding value
		    from.
		
		Raises:
		  ValueError: If no overriding value exists for tensor_name.
	**/
	public function remove_override(tensor_name:Dynamic):Dynamic;
	/**
		Restore variables to the initial values.
		
		"Initial value" refers to the value when this NodeStepper instance was
		first constructed.
	**/
	public function restore_variable_values():Dynamic;
	/**
		Get a topologically-sorted list of node names of the stepper.
		
		These are the names of the nodes (i.e., not Tensors) in the transitive
		closure of the stepper, in a topologically-sorted order.
		
		Returns:
		  (list of str): Sorted transitive inputs to the fetch of the stepper
		    instance. The fetch itself is included in the list.
	**/
	public function sorted_nodes():Dynamic;
}