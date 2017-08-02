/* This file is generated, do not edit! */
package theano.gof.fg;
@:pythonImport("theano.gof.fg", "FunctionGraph") extern class FunctionGraph {
	/**
		Updates the list of clients of r with new_clients.
		
		Parameters
		----------
		r
		    Variable.
		new_client
		    (node, i) pair such that node.inputs[i] is r.
	**/
	public function __add_client__(r:Dynamic, new_client:Dynamic):Dynamic;
	static public function __class__(name:Dynamic, bases:Dynamic, dct:Dynamic):Dynamic;
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
		This is needed as some features introduce instance methods.
		This is not picklable.
	**/
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Given an apply_node, recursively search from this node to know graph,
		and then add all unknown variables and apply_nodes to this graph.
	**/
	public function __import__(apply_node:Dynamic, ?check:Dynamic, ?reason:Dynamic):Dynamic;
	/**
		Import variables to this FunctionGraph and also their apply_node,
		if those nodes are not in this graph.
		
		Parameters:
		----------
		reason
		    reason is the name of the optimization or operation in progress.
	**/
	public function __import_r__(variable:Dynamic, reason:Dynamic):Dynamic;
	/**
		Create an FunctionGraph which operates on the subgraph bound by the
		inputs and outputs sets.
		
		Parameters
		----------
		inputs : list of variables
		    Inputs nodes of the graph, usually declared by the user
		outputs : list of variables
		    Outputs nodes of the graph.
		clone : boolean
		    If true, we will clone the graph. This is useful to remove the
		    constant cache problem.
		update_mapping : dictionnary
		    Mapping between the inputs with updates and the outputs
		    corresponding to their updates.
	**/
	@:native("__init__")
	public function ___init__(inputs:Dynamic, outputs:Dynamic, ?features:Dynamic, ?clone:Dynamic, ?update_mapping:Dynamic):Dynamic;
	/**
		Create an FunctionGraph which operates on the subgraph bound by the
		inputs and outputs sets.
		
		Parameters
		----------
		inputs : list of variables
		    Inputs nodes of the graph, usually declared by the user
		outputs : list of variables
		    Outputs nodes of the graph.
		clone : boolean
		    If true, we will clone the graph. This is useful to remove the
		    constant cache problem.
		update_mapping : dictionnary
		    Mapping between the inputs with updates and the outputs
		    corresponding to their updates.
	**/
	public function new(inputs:Dynamic, outputs:Dynamic, ?features:Dynamic, ?clone:Dynamic, ?update_mapping:Dynamic):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
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
		Removes all from the clients list of r.
		
		This is the main method to remove variable or apply node from
		an FunctionGraph.
		
		Remove r from this fgraph if it don't have clients left. If it
		have an owner and all the outputs of the owner have no
		clients, it will be removed.
		
		Parameters
		----------
		r : Variable
		    The clients of r will be removed.
		client_to_remove : (op, i) pair
		    (op, i) pair such that node.inputs[i] is not r anymore.
	**/
	public function __remove_client__(r:Dynamic, client_to_remove:Dynamic, ?reason:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(dct:Dynamic):Dynamic;
	public function __setup_node__(node:Dynamic):Dynamic;
	public function __setup_r__(r:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
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
	public function add_input(input:Dynamic):Dynamic;
	/**
		Adds a gof.toolbox.Feature to this function_graph and triggers its
		on_attach callback.
	**/
	public function attach_feature(feature:Dynamic):Dynamic;
	/**
		Changes node.inputs[i] to new_r.
		
		new_r.type == old_r.type must be True, where old_r is the
		current value of node.inputs[i] which we want to replace.
		
		For each feature that has a 'on_change_input' method, calls:
		feature.on_change_input(function_graph, node, i, old_r, new_r, reason)
	**/
	public function change_input(node:Dynamic, i:Dynamic, new_r:Dynamic, ?reason:Dynamic):Dynamic;
	/**
		Call this for a diagnosis if things go awry.
	**/
	public function check_integrity():Dynamic;
	/**
		Set of all the (node, i) pairs such that node.inputs[i] is r.
		Told differently, a list of (node,i) such that each node have
		r as input at index i.
	**/
	public function clients(r:Dynamic):Dynamic;
	/**
		Clone the graph and get a memo( a dict )that map old node to new node
	**/
	public function clone(?check_integrity:Dynamic):Dynamic;
	/**
		Clone the graph and get a dict that maps old nodes to new ones
		
		Parameters:
		    check_integrity: bool
		        Whether to check integrity. Default is True.
		    attach_feature: bool
		        Whether to attach feature of origin graph to cloned graph.
		        Default is True.
		
		Returns:
		    e: FunctionGraph
		        Cloned fgraph. Every node in cloned graph is cloned.
		    equiv: dict
		        A dict that map old node to new node.
	**/
	public function clone_get_equiv(?check_integrity:Dynamic, ?attach_feature:Dynamic):Dynamic;
	/**
		Collects callbacks
		
		Returns a dictionary d such that
		`d[feature] == getattr(feature, name)(*args)`
		For each feature which has a method called after name.
	**/
	public function collect_callbacks(name:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Cleans up all of this FunctionGraph's nodes and variables so they are
		not associated with this FunctionGraph anymore.
		
		The FunctionGraph should not be used anymore after disown is called.
	**/
	public function disown():Dynamic;
	/**
		Execute callbacks
		
		Calls `getattr(feature, name)(*args)` for each feature which has
		a method called after name.
	**/
	public function execute_callbacks(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return dict d s.t. d[node] is a list of nodes that must be evaluated
		before node itself can be evaluated.
		
		This is used primarily by the destroy_handler feature to ensure that
		all clients of any destroyed inputs have already computed their outputs.
		
		Notes
		-----
		This only calls the orderings() fct on all features. It does not
		take care of computing dependencies by itself.
	**/
	public function orderings():Dynamic;
	/**
		Removes the feature from the graph.
		
		Calls feature.on_detach(function_graph) if an on_detach method
		is defined.
	**/
	public function remove_feature(feature:Dynamic):Dynamic;
	/**
		This is the main interface to manipulate the subgraph in FunctionGraph.
		For every node that uses r as input, makes it use new_r instead.
	**/
	public function replace(r:Dynamic, new_r:Dynamic, ?reason:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		For every node that uses r as input, makes it use new_r instead
	**/
	public function replace_all(pairs:Dynamic, ?reason:Dynamic):Dynamic;
	/**
		Toposort
		
		Return an ordering of the graph's Apply nodes such that
		
		* All the nodes of the inputs of a node are before that node.
		* Satisfies the orderings provided by each feature that has
		  an 'orderings' method.
		
		If a feature has an 'orderings' method, it will be called with
		this FunctionGraph as sole argument. It should return a dictionary of
		`{node: predecessors}` where predecessors is a list of nodes that
		should be computed before the key node.
	**/
	public function toposort():Dynamic;
}