/* This file is generated, do not edit! */
package keras.engine.network;
@:pythonImport("keras.engine.network") extern class Network_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _make_node_key(layer_name:Dynamic, node_index:Dynamic):Dynamic;
	/**
		Validates a network's topology and gather its layers and nodes.
		
		# Arguments
		    inputs: List of input tensors.
		    outputs: List of outputs tensors.
		
		# Returns
		    A tuple `(nodes, nodes_by_depth, layers, layers_by_depth)`.
		    - nodes: list of Node instances.
		    - nodes_by_depth: dict mapping ints (depth) to lists of node instances.
		    - layers: list of Layer instances.
		    - layers_by_depth: dict mapping ints (depth)
		        to lists of layer instances.
		
		# Raises
		    ValueError: In case the network is not valid (e.g. disconnected graph).
	**/
	static public function _map_graph_network(inputs:Dynamic, outputs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Produces a prompt asking about overwriting a file.
		
		# Arguments
		    filepath: the path to the file to be overwritten.
		
		# Returns
		    True if we can proceed with overwrite, False otherwise.
	**/
	static public function ask_to_proceed_with_overwrite(filepath:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the list of input tensors necessary to compute `tensor`.
		
		Output will always be a list of tensors
		(potentially with 1 element).
		
		# Arguments
		    tensor: The tensor to start from.
		    layer: Origin layer of the tensor. Will be
		        determined via tensor._keras_history if not provided.
		    node_index: Origin node index of the tensor.
		
		# Returns
		    List of input tensors.
	**/
	static public function get_source_inputs(tensor:Dynamic, ?layer:Dynamic, ?node_index:Dynamic):Dynamic;
	/**
		Checks if a callable accepts a given keyword argument.
		
		For Python 2, checks if there is an argument with the given name.
		
		For Python 3, checks if there is an argument with the given name, and
		also whether this argument can be called with a keyword (i.e. if it is
		not a positional-only argument).
		
		# Arguments
		    fn: Callable to inspect.
		    name: Check if `fn` can be called with `name` as a keyword argument.
		    accept_all: What to return if there is no parameter called `name`
		                but the function accepts a `**kwargs` argument.
		
		# Returns
		    bool, whether `fn` accepts a `name` keyword argument.
	**/
	static public function has_arg(fn:Dynamic, name:Dynamic, ?accept_all:Dynamic):Dynamic;
	static public function object_list_uid(object_list:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Prints a summary of a model.
		
		# Arguments
		    model: Keras model instance.
		    line_length: Total length of printed lines
		        (e.g. set this to adapt the display to different
		        terminal window sizes).
		    positions: Relative or absolute positions of log elements in each line.
		        If not provided, defaults to `[.33, .55, .67, 1.]`.
		    print_fn: Print function to use.
		        It will be called on each line of the summary.
		        You can set it to a custom function
		        in order to capture the string summary.
		        It defaults to `print` (prints to stdout).
	**/
	static public function print_layer_summary(model:Dynamic, ?line_length:Dynamic, ?positions:Dynamic, ?print_fn:Dynamic):Dynamic;
	/**
		Normalizes a list/tensor into a list.
		
		If a tensor is passed, we return
		a list of size 1 containing the tensor.
		
		# Arguments
		    x: target object to be normalized.
		    allow_tuple: If False and x is a tuple,
		        it will be converted into a list
		        with a single element (the tuple).
		        Else converts the tuple to a list.
		
		# Returns
		    A list.
	**/
	static public function to_list(x:Dynamic, ?allow_tuple:Dynamic):Dynamic;
	/**
		Gets the first element if the iterable has only one value.
		
		Otherwise return the iterable.
		
		# Argument:
		    x: A list or tuple.
		
		# Returns:
		    The same iterable or the first element.
	**/
	static public function unpack_singleton(x:Dynamic):Dynamic;
}