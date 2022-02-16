/* This file is generated, do not edit! */
package torch.fx.passes.splitter_base;
@:pythonImport("torch.fx.passes.splitter_base", "_SplitterBase") extern class _SplitterBase {
	static public var PCIe_BW : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__():Dynamic;
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
		Preprocesses graph before splitting:
		- finds nodes supported by ACC,
		- finds fusion groups for ACC nodes having non-tensor IO,
		- builds a graph of direct dependencies,
		- builds a map of fused nodes to their fusions.
		As a result we get self.acc_nodes, self.deps and self.fusions.
	**/
	@:native("__init__")
	public function ___init__(module:Dynamic, sample_input:Dynamic, operator_support:Dynamic, settings:Dynamic):Dynamic;
	/**
		Preprocesses graph before splitting:
		- finds nodes supported by ACC,
		- finds fusion groups for ACC nodes having non-tensor IO,
		- builds a graph of direct dependencies,
		- builds a map of fused nodes to their fusions.
		As a result we get self.acc_nodes, self.deps and self.fusions.
	**/
	public function new(module:Dynamic, sample_input:Dynamic, operator_support:Dynamic, settings:Dynamic):Void;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _draw_graph_based_on_node_support(mod:Dynamic, supported_nodes:Dynamic):Dynamic;
	/**
		When an error occurs during lowering or running the lowered mod, we use this
		function to find culprits in the `mod` that causes the error.
	**/
	public function _find_culprit(mod:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Lower the model to a backend.
	**/
	public function _lower_model_to_backend(mod:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Extend the acc subgraph with `tag` going the reversed topological direction.
	**/
	public function extend_acc_subgraph(tag:Dynamic):Dynamic;
	/**
		Builds a graph of node dependencies. Leaf nodes don't have any
		dependencies and the "output" node doesn't have nodes depending on it.
		
		Resulting graph has only direct dependencies, i.e. there are no
		transitive dependencies.
	**/
	public function find_deps():Dynamic;
	/**
		Finds parent nodes of the `tag` subgraph.
		
		Traverse the inputs of nodes in the subgraph, if input doesn't belong to the subgraph
		and is not a placeholder, we consider it as the parent node of the subgraph.
	**/
	public function find_parent_nodes_of_subgraph(tag:Dynamic):Dynamic;
	/**
		Builds reversed topological node dependencies, if tag_id is specified,
		we ignore nodes that are in later subgraph i.e. nodes have greater tag_id.
	**/
	public function find_reverse_deps(?tag_id:Dynamic):Dynamic;
	public function node_support_preview(?dump_graph:Dynamic):Dynamic;
	public function put_nodes_into_subgraphs():Dynamic;
	/**
		This pass finds ACC submodules with less than specified size and merges
		them with adjacent CPU submodules.
	**/
	public function remove_small_acc_subgraphs(subgraphs:Dynamic):Dynamic;
	public function split(?remove_tag:Dynamic):Dynamic;
	public function split_preview(?dump_graph:Dynamic):Dynamic;
	/**
		Finds nodes that consume module inputs or get_attr nodes.
	**/
	public function starter_nodes():Dynamic;
	public function tag(subgraphs:Dynamic):Dynamic;
	/**
		Updates graph of dependencies so that:
		- nodes from the same fusion depend on the same set of outer nodes,
		- outer nodes depending on a fusion depend on all nodes in that fusion.
	**/
	public function update_deps_for_fusions():Dynamic;
	public function update_reverse_deps_for_fusions(deps:Dynamic):Dynamic;
}