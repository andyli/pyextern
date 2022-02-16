/* This file is generated, do not edit! */
package torch.fx.passes.net_min_base;
@:pythonImport("torch.fx.passes.net_min_base", "_MinimizerBase") extern class _MinimizerBase {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(module:Dynamic, sample_input:Dynamic, compare_fn:Dynamic, settings:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(module:Dynamic, sample_input:Dynamic, compare_fn:Dynamic, settings:Dynamic):Void;
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
	public function _accumulate_traverse(nodes:Dynamic):Dynamic;
	/**
		Recursive binary search implementation.
	**/
	public function _binary_search_impl(nodes:Dynamic):Dynamic;
	/**
		Binary search on `nodes` for culprit.
	**/
	public function _binary_traverse(nodes:Dynamic):Dynamic;
	/**
		Split self.module so that one submodule consists of `nodes` and only `nodes`.
		
		Args:
		    nodes: Nodes that we want to include in the minimize submodule.
		
		Returns:
		    split_module (torch.fx.GraphModule): the module after split.
		    submodule_name (str): the name of the submodule that consists of `nodes`.
	**/
	public function _build_submodule(nodes:Dynamic):Dynamic;
	/**
		Collect nodes in the model that between nodes with name of `start` and `end`.
		These two nodes are also included.
	**/
	public function _collect_nodes(start:Dynamic, end:Dynamic):Dynamic;
	/**
		Try get submodule inputs from stored outputs. If not found then use
		torch_glow.get_submod_inputs to get the inputs.
		
		If accumulate_error is False, use a_input for run_a() and run_b()
		otherwise use a_input for run_a and b_input for run_b.
		
		Args:
		    main_module: Top-levlel fx module.
		    submod_path: Path to the submodule we want to run and compare results.
		
		Returns:
		    a_input: List of tensor(s) that will be used by run_a() as submodule inputs.
		    b_input: List of tensor(s) that will be used by run_b() as submodule inputs.
	**/
	public function _get_submod_inputs(main_module:Dynamic, submod_path:Dynamic):Dynamic;
	/**
		Run the submodule in `split_module` that has name `submod_name`
		using `self.run_a` and `self.run_b` and compare their results.
		
		Args:
		    split_module: Main module that contains the minimize submodule.
		    submod_name: Name of the minimize submodule.
		    output_names: Names of the node we want to output. If None, we
		        will use the original output.
	**/
	public function _run_and_compare(split_module:Dynamic, submod_name:Dynamic, output_names:Dynamic):Dynamic;
	/**
		Traverse `nodes` one by one and determine if any of them is a culprit.
	**/
	public function _sequential_traverse(nodes:Dynamic):Dynamic;
	/**
		Store the outputs of self.run_a() and self.run_b() into self.a_outputs and
		self.b_outputs, so that we can use them when execute preceding nodes that
		use those outputs as inputs.
		
		Args:
		    a_result: Output of self.run_a(). Could be a tensor or tensors.
		    b_result: Output of self.run_b(). Could be a tensor or tensors.
		    submodule: The module that generates a_result and b_result.
	**/
	public function _store_outputs(a_result:Dynamic, b_result:Dynamic, submodule:Dynamic):Dynamic;
	/**
		Tag selected nodes with tag "minimize". Nodes with the same tags will
		be split to the same submodule afterwards.
		
		Args:
		    selected_nodes: Nodes that we want to minimize. We will tag those nodes
		        with "minimize", all preceding nodes with "main_0" and all following
		        nodes with "main_1".
	**/
	public function _tag_nodes(selected_nodes:Dynamic):Dynamic;
	/**
		Minimizing the model from node with name `start` to node with name `end` base
		on self.settings. Find culprits that causes FxNetMinimizerRunFuncError or
		FxNetMinimizerResultMismatchError errors.
		
		Args:
		    start: The name of the node where we want to start minimizing. If set
		        to None, then we'll start with the first node of the model.
		    end: The name of the node where we want to terminate minimizing. If
		        set to None, we'll end with the last node of the model.
		
		Returns:
		    nodes: A list of nodes that causes FxNetMinimizerRunFuncError or
		        FxNetMinimizerResultMismatchError errors during minimizing.
	**/
	public function minimize(?start:Dynamic, ?end:Dynamic):Dynamic;
	/**
		Run `mod` with `inputs` and generate output. The output will be compared with
		output of run_b().
	**/
	public function run_a(mod:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Run `mod` with `inputs` and generate output. The output will be compared with
		output of run_a().
	**/
	public function run_b(mod:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Run part of the model from `start` node to `end` node. If `start` is None
		then we start from the beginning of the model. If `end` is None then we
		stop at the end of the model.
		
		Args:
		    start: The name of the node which is the first node of the submodule
		        we want to run. If set to None, then we'll start with the first
		        node of the model.
		    end: The name of the node which is the last node of the submodule we
		        want to run. If set to None, we'll end with the last node of the
		        model.
	**/
	public function run_nodes(?start:Dynamic, ?end:Dynamic):Dynamic;
}