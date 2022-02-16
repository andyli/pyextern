/* This file is generated, do not edit! */
package torch.quantization.fx.convert;
@:pythonImport("torch.quantization.fx.convert") extern class Convert_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Argument(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Pattern(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function QConfigAny(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var WEIGHT_INDEX_DICT : Dynamic;
	static public var WEIGHT_PREPACK_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Clean up the qconfig left in the module so that new qconfig can be
		propagated.
		
		Args:
		    module: module to be cleaned up
	**/
	static public function _remove_qconfig(module:Dynamic):Dynamic;
	static public function activation_dtype(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the activation needs to be
		quantized or not, this includes quantizing to quint8, qint8 and float16
	**/
	static public function activation_is_statically_quantized(qconfig:Dynamic):Dynamic;
	/**
		Starting from a target node, trace back until we hit inpu or
		getattr node. This is used to extract the chain of operators
		starting from getattr to the target node, for example
		def forward(self, x):
		  observed = self.observer(self.weight)
		  return F.linear(x, observed)
		collect_producer_nodes(observed) will either return a list of nodes that
		produces the observed node or None if we can't extract a self contained
		graph without free variables(inputs of the forward function).
	**/
	static public function collect_producer_nodes(node:Dynamic):Dynamic;
	/**
		standalone_module means it a submodule that is not inlined in
		parent module, and will be quantized separately as one unit.
		
		Returns a quantized standalone module, whether input/output is quantized is
		specified by prepare_custom_config_dict, with
		input_quantized_idxs, output_quantized_idxs, please
		see docs for prepare_fx for details
	**/
	static public function convert(model:Dynamic, ?is_reference:Dynamic, ?convert_custom_config_dict:Dynamic, ?is_standalone_module:Dynamic, ?_remove_qconfig_flag:Dynamic):Dynamic;
	/**
		Converts the equalization operations and updates the other nodes in the
		following way:
		    - Removes the input equalization observers and inserts a mul operator
		      along with an equalization scale node wherever applicable (we do not
		      want to insert a mul operator between connecting linear layers).
		    - Updates the input quantization observers with the scaled input min/max
		      values.
		    - Scales the weights by the current and next equalization scales.
		    - Removes the weight equalization observer node if it exists.
		
		Before (after prepare):
		                                weight values
		                                      |
		                                WeightQuantObs
		                                      |
		                                  WeightEqObs
		                                      |
		    x -> InpQuantObs -> InpEqObs -> linear -> OutQuantObs
		
		After this function:
		                                          scaled weight values
		                                                  |
		   equalization scale                       WeightQuantObs
		          |                                       |
		    x -> mul -> InpQuantObs (scaled min/max) -> linear -> OutQuantObs
		
		After convert:
		   equalization scale                 scaled weight values
		          |                                    |
		    x -> mul -> quantize_per_tensor -> quantized::linear
		
		Note that although the equalization observer appeared after the quantization
		observer after prepare_fx, the mul node appears before the quantization node
		after convert_fx. This is because placing the equalization observer after
		the quantization observer in prepare_fx would allow us to keep the invariant
		that the graph before the current node inserts its observers is not
		modified.
		
		Having the equalization observer before the quantization observer would also
		cause some inconsistences between the ordering of the quantization and
		equalization observers.
		For example, a single linear layer would look like:
		    x -> InpEqObs1 -> InpQuantObs1 -> linear1 -> OutQuantObs1
		But between two connected linear layers, it would look like:
		    linear1 -> OutQuantObs1 -> InpEqObs2 -> linear2 -> OutQuantObs2
	**/
	static public function convert_eq_obs(model:Dynamic, modules:Dynamic, weight_eq_obs_dict:Dynamic):Dynamic;
	/**
		Matches the nodes in the input graph to quantization patterns, and
		outputs the information needed to quantize them in future steps.
		
		Inputs:
		  - graph: an fx.Graph object
		  - modules: a mapping of fully qualified module name to instance,
		      for example, {'foo': ModuleFoo, ...}
		  - patterns: a mapping from a tuple of nodes in reverse order to
		      uninitialized QuantizeHandler subclass.
		
		Outputs a map of
		  node_name ->
		    (node, matched_values, matched_pattern, QuantizeHandler instance,
		     qconfig)
		
		For example, {
		  'relu_1': (relu_1, [relu_1], torch.nn.functional.relu,
		             <CopyNodeQuantizeHandler instance>, QConfig(...)),
		  ...
		}
	**/
	static public function find_matches(graph:Dynamic, modules:Dynamic, patterns:Dynamic, qconfig_map:Dynamic, ?standalone_module_names:Dynamic, ?standalone_module_classes:Dynamic, ?custom_module_classes:Dynamic):Dynamic;
	/**
		Trace back from the weight node util we hit getattr, reconstruct the
		graph module with the traced nodes and run the graph module to pack the
		weight. then replace the original chain of ops with the packed weight.
	**/
	static public function fold_weight(quantized:Dynamic, node_name_to_scope:Dynamic):Dynamic;
	/**
		Get all the unique custom module keys in the custom config dict
		e.g.
		Input:
		custom_config_dict = {
		    "float_to_observed_custom_module_class": {
		       "static": {
		           CustomModule1: ObservedCustomModule
		       },
		       "dynamic": {
		           CustomModule2: DynamicObservedCustomModule
		       },
		       "weight_only": {
		           CustomModule3: WeightOnlyObservedCustomModule
		       },
		    },
		}
		
		Output:
		# extract all the keys in "static", "dynamic" and "weight_only" dict
		[CustomModule1, CustomModule2, CustomModule3]
	**/
	static public function get_custom_module_class_keys(custom_config_dict:Dynamic, custom_config_dict_key:Dynamic):Dynamic;
	static public function get_new_attr_name_with_prefix(prefix:Dynamic):Dynamic;
	/**
		Construct a graph module from extracted producer nodes
		from `collect_producer_nodes` function
		Args:
		  root: the root module for the original graph
		  producer_nodes: a list of nodes we use to construct the graph
		Return:
		  A graph module constructed from the producer nodes
	**/
	static public function graph_module_from_producer_nodes(root:Dynamic, producer_nodes:Dynamic):Dynamic;
	static public function is_activation_post_process(module:Dynamic):Dynamic;
	/**
		Returns True if this node is a node that takes a Tensor as input and output some
		meta information about the Tensor, e.g. shape, size etc.
	**/
	static public function is_get_tensor_info_node(node:Dynamic):Dynamic;
	static public function is_observed_module(module:Dynamic):Dynamic;
	static public function is_observed_standalone_module(module:Dynamic):Dynamic;
	/**
		Lower a quantized reference model (with reference quantized operator patterns)
		to fbgemm
	**/
	static public function lower_to_fbgemm(model:Dynamic):Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_arg(a:Dynamic, fn:Dynamic):Dynamic;
	/**
		Returns true if this node results in an integer, even if some of the args
		are Tensors.
	**/
	static public function node_return_type_is_int(node:Dynamic):Dynamic;
	/**
		Add quantization nodes (eg. quantize_per_tensor/per_channel) for given node to graph
		with the qparams calculated from activation_post_process (obs_module).
		The observer node (obs_node) is used to find the FQN of the user of act_post_process.
		e.g. Given input `node` in `node = self.conv(x)`, insert node:
		`quantized_node = torch.quantize_per_tensor(x, self._scale_0, self._zer_point_0, self._dtype_0)`
		where self._scale_0, self._zero_point_0 and self._dtype_0 are
		calculated from `obs_module`
	**/
	static public function quantize_node(in_node:Dynamic, obs_module:Dynamic, obs_node:Dynamic, modules:Dynamic, quantized_graph:Dynamic, node_name_to_scope:Dynamic, is_input:Dynamic):Dynamic;
	static public function restore_state(observed:Dynamic):Dynamic;
	/**
		Extract the subgraph that produces the weight for dynamic quant
		or weight only quant node and run the subgraph to observe the weight.
		Note that the observers of dynamic quant or weight only quant ops are
		run during the convert step.
	**/
	static public function run_weight_observers(observed:Dynamic):Dynamic;
	/**
		Update all of the observer's equalization scale. For each
		InputEqualizationObserver, we will find the location of the next
		WeightEqualizationObserver, create it, and calculate the equalization scale
		based on the two observers.
		
		We will then return a dictionary mapping operation node names to
		the corresponding WeightEqualizationObservers for that operation.
	**/
	static public function update_obs_for_equalization(model:Dynamic, modules:Dynamic):Dynamic;
}