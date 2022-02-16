/* This file is generated, do not edit! */
package torch.quantization.fx.prepare;
@:pythonImport("torch.quantization.fx.prepare") extern class Prepare_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Argument(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var CONV_BIAS_ARG_INDEX : Dynamic;
	static public var CONV_OPS_WITH_BIAS : Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_OP_LIST_TO_FUSER_METHOD : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var FUNCTIONAL_OPS_WITH_BIAS : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function MatchResult(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NON_QUANTIZABLE_WEIGHT_OPS : Dynamic;
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _parent_name(target:Dynamic):Dynamic;
	static public function activation_dtype(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the activation needs to be
		quantized to int8 or not, this includes quantizing to quint8, qint8
	**/
	static public function activation_is_int8_quantized(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the activation needs to be
		quantized or not, this includes quantizing to quint8, qint8 and float16
	**/
	static public function activation_is_statically_quantized(qconfig:Dynamic):Dynamic;
	/**
		If we know for sure that all of this node's args have no
		tensors (are primitives), return True.  If we either
		find a tensor or are not sure, return False. Note: this
		function is not exact.
	**/
	static public function all_node_args_have_no_tensors(node:Dynamic, modules:Dynamic, cache:Dynamic):Dynamic;
	/**
		Returns the unique device for a module, or None if no device is found.
		Throws an error if multiple devices are detected.
	**/
	static public function assert_and_get_unique_device(module:Dynamic):Dynamic;
	/**
		Converts submodules in input module to a different module according to `mapping`
		by calling `from_float` method on the target module class. And remove qconfig at the
		end if remove_qconfig is set to True.
		
		Args:
		    `module`: prepared and calibrated module
		    `mapping`: a dictionary that maps from source module type to target
		               module type, can be overwritten to allow swapping user defined
		               Modules
		    `inplace`: carry out model transformations in-place, the original module
		               is mutated
		    `convert_custom_config_dict`: custom configuration dictionary for convert function
		
		.. code-block:: python
		
		   # Example of convert_custom_config_dict:
		   convert_custom_config_dict = {
		       # user will manually define the corresponding quantized
		       # module class which has a from_observed class method that converts
		       # observed custom module to quantized custom module
		       "observed_to_quantized_custom_module_class": {
		           ObservedCustomModule: QuantizedCustomModule
		       }
		   }
	**/
	static public function convert(module:Dynamic, ?mapping:Dynamic, ?inplace:Dynamic, ?remove_qconfig:Dynamic, ?convert_custom_config_dict:Dynamic):Dynamic;
	/**
		Convert dict in qconfig_dict to ordered dict
		    
	**/
	static public function convert_dict_to_ordered_dict(qconfig_dict:Dynamic):Dynamic;
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
	static public function generate_qconfig_map(root:Dynamic, modules:Dynamic, input_graph:Dynamic, qconfig_dict:Dynamic, node_name_to_scope:Dynamic):Dynamic;
	static public function get_combined_dict(default_dict:Dynamic, additional_dict:Dynamic):Dynamic;
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
	static public function get_default_output_activation_post_process_map():Dynamic;
	/**
		Get default module mapping for quantization aware training
		    
	**/
	static public function get_default_qat_module_mappings():Dynamic;
	/**
		Get the backend config dictionary for fbgemm backend
		NOTE: Current api will change in the future, it's just to unblock experimentation for
		new backends, please don't use it right now.
	**/
	static public function get_fbgemm_backend_config_dict():Dynamic;
	/**
		flatten the global, object_type and module_name qconfig
		to the same qconfig_dict so that it can be used by
		propagate_qconfig_ function.
		"module_name_regex" is ignored for now since it's not supported
		in propagate_qconfig_, but it can be fixed later.
		
		For example:
		Input: {
		  "": qconfig,
		  "object_type": [
		    (torch.add, qconfig)
		  ],
		  "module_name": [
		    ("conv", qconfig)
		  ]
		}
		
		Output: {
		  "": qconfig,
		  torch.add: qconfig,
		  "conv": qconfig
		}
	**/
	static public function get_flattened_qconfig_dict(qconfig_dict:Dynamic):Dynamic;
	static public function get_new_attr_name_with_prefix(prefix:Dynamic):Dynamic;
	/**
		returns the qconfig tuple for qconfig:
		(activation_dtype, weight_dtype, activation_compute_dtype)
	**/
	static public function get_qconfig_dtypes(qconfig:Dynamic):Dynamic;
	/**
		Returns the standalone module qconfig_dict and prepare_config_dict
		for `node`, assuming that the module pointed to by `node` is
		a standalone modules.
	**/
	static public function get_standalone_module_configs(node:Dynamic, modules:Dynamic, prepare_custom_config_dict:Dynamic, qconfig:Dynamic):Dynamic;
	/**
		Get the observed/quantized custom module class that we need
		to swap `custom_module` to
		Input:
		    custom_module: input, can be an instance of either a float or observed custom module
		    custom_module_class_mapping: the float to observed or observed to quantized custom module class mapping
		    qconfig: qconfig configured for the custom module
		
		Output:
		    corresponding observed/quantized custom module class for input custom module instance
	**/
	static public function get_swapped_custom_module_class(custom_module:Dynamic, custom_module_class_mapping:Dynamic, qconfig:Dynamic):Dynamic;
	/**
		Returns the expected dtype of the input and output of this node after
		convert. If the value is not None, it represents the dtype of the
		Tensor. If the value is None, it means the value is not a Tensor.
		
		Note: this is for activations only, weight dtypes are not handled here.
		
		TODO(future PR, if needed): explicitly spell out the non-Tensor
		dtypes.
	**/
	static public function get_target_activation_dtype_for_node(node:Dynamic, qconfig:Dynamic, inputs_seen_counter:Dynamic, outputs_seen_counter:Dynamic, input_quantized_idxs:Dynamic, output_quantized_idxs:Dynamic, qhandler:Dynamic, modules:Dynamic, cache_for_no_tensor_check:Dynamic):Dynamic;
	/**
		Attaches `observer` to `model`, and creates a node which calls
		`observer` on the output of `node`.
	**/
	static public function insert_observer(node:Dynamic, observer:Dynamic, model:Dynamic, modules:Dynamic, graph:Dynamic):Dynamic;
	/**
		Inserts observers, using the following high level algorithm:
		
		For each node in the graph:
		  1. determine the target dtype of this node in the quantized graph, and save
		       it for future steps
		  2. determine the target dtype or all args and kwargs of this node
		  3. if any arg or kwarg's target dtype does not match the current node's
		       dtype, insert an observer
		  4. if the current node needs an output observer, insert it
		
		For example:
		
		- starting graph:
		    x0 -> linear -> x1
		
		- observed graph after processing x0:
		    x0(fp32)
		
		- observed graph after processing linear:
		    x0(fp32) -> x0_obs0(int8) -> linear(int8) -> linear_obs0(int8)
		
		- observed graph after processing x1:
		    x0(fp32) -> x0_obs0(int8) -> linear(int8) -> linear_obs0(int8) -> x1
		
		After a node is processed, the naive observer placement is guaranteed to be
		complete for that node and all of its predecessors. There can be future
		passes which optimize the graph by deduplicating observers, etc.
	**/
	static public function insert_observers_for_model(model:Dynamic, modules:Dynamic, matches:Dynamic, qconfig_map:Dynamic, graph:Dynamic, prepare_custom_config_dict:Dynamic, equalization_config_map:Dynamic, input_quantized_idxs:Dynamic, output_quantized_idxs:Dynamic):Dynamic;
	static public function is_activation_post_process(module:Dynamic):Dynamic;
	static public function is_activation_post_process_node(node:Dynamic, modules:Dynamic):Dynamic;
	static public function is_equalization_observer(observer:Dynamic):Dynamic;
	/**
		If `node` needs to be equalized, find the input/weight observers it needs in
		`equalization_qconfig`, creates them, and inserts it into `graph`.
		
		If `node` does not need an equalization observer, returns None.
	**/
	static public function maybe_insert_input_equalization_observers_for_node(node:Dynamic, equalization_qconfig:Dynamic, model:Dynamic, modules:Dynamic, graph:Dynamic, node_name_to_target_dtype:Dynamic, is_branch:Dynamic):Dynamic;
	/**
		Given a `node` and an `arg`, inserts an input observer between
		`node` and `arg` if necessary.
	**/
	static public function maybe_insert_input_observer_for_arg_or_kwarg(node:Dynamic, arg:Dynamic, qconfig:Dynamic, model:Dynamic, modules:Dynamic, graph:Dynamic, node_name_to_target_dtype:Dynamic, qhandler:Dynamic, prepare_custom_config_dict:Dynamic):Dynamic;
	/**
		If needed, inserts observers to the input args and kwargs of `node`.
		Note: modifies `node` inplace.
		
		For example, if cur_node needs an observer after prev_node, we change from
		
		  prev_node -> cur_node
		
		To
		
		  prev_node -> obs -> cur_node
	**/
	static public function maybe_insert_input_observers_for_node(node:Dynamic, qconfig:Dynamic, model:Dynamic, modules:Dynamic, graph:Dynamic, node_name_to_target_dtype:Dynamic, qhandler:Dynamic, prepare_custom_config_dict:Dynamic):Dynamic;
	/**
		If the output needs to be quantized and there are any nodes
		in the output which are not already observed, inserts observers
		for those nodes.
	**/
	static public function maybe_insert_observers_before_graph_output(graph_output_node:Dynamic, output_quantized_idxs:Dynamic, node_name_to_target_dtype:Dynamic, qconfig_map:Dynamic, model:Dynamic, modules:Dynamic, graph:Dynamic):Dynamic;
	/**
		If `node` needs an output observer, creates it, inserts it into `graph`
		and returns it.
		
		If `node` does not need an output observer, returns None.
	**/
	static public function maybe_insert_output_observer_for_node(node:Dynamic, model:Dynamic, modules:Dynamic, graph:Dynamic, matches:Dynamic, node_name_to_target_dtype:Dynamic, matched_pattern:Dynamic, qhandler:Dynamic):Dynamic;
	/**
		Ensures that we share an observer
		for all input arguments as well as the output argument. In detail, given
		a graph of
		
		  x0 -> obs0 -> op -> x2
		              /
		  x1 -> obs1 /
		
		where node obs0 points to observer instance observer0,
		obs1 points to observer1 and obs2 points to observer2, we make nodes obs1
		and ob2 point to observer0.
		Returns: whether the operation succeeded or not
	**/
	static public function maybe_make_input_output_share_observers(node:Dynamic, model:Dynamic, modules:Dynamic):Dynamic;
	/**
		Assigns `target_dtype` to `node`. If `node` is a general tensor shape op
		(see GeneralTensorShapeOpQuantizeHandler in quantization_patterns.py for more details)
		also call this function recursively on
		the first argument, to propagate the dtype to the caller.
	**/
	static public function maybe_propagate_dtype_for_node(node:Dynamic, target_dtype:Dynamic, node_name_to_target_dtype:Dynamic, matches:Dynamic):Dynamic;
	static public function node_arg_is_bias(node:Dynamic, arg:Dynamic):Dynamic;
	static public function node_arg_is_weight(node:Dynamic, arg:Dynamic):Dynamic;
	/**
		Returns indexes of boolean Tensor args
	**/
	static public function node_bool_tensor_arg_indexes(node:Dynamic):Dynamic;
	/**
		Checks if the current node supports equalization
		Currently we only support nn.Linear/F.Linear and nn.Conv/F.conv layers
	**/
	static public function node_supports_equalization(node:Dynamic, modules:Dynamic):Dynamic;
	/**
		standalone_module means it a submodule that is not inlined in
		parent module, and will be quantized separately as one unit.
		
		How the standalone module is observed is specified by `input_quantized_idxs` and
		`output_quantized_idxs` in the prepare_custom_config for the standalone module
		Args:
		    node_name_to_scope: mapping from node name to the scope of the module which contains the node.
		    The scope is a tuple of fully qualified path of the module and the type of the module
		Returns:
		    model(GraphModule): prepared standalone module
		    attributes:
		        _standalone_module_input_quantized_idxs(List[Int]): a list of
		            indexes for the graph input that is expected to be quantized,
		            same as input_quantized_idxs configuration provided
		            for the standalone module
		        _standalone_module_output_quantized_idxs(List[Int]): a list of
		            indexs for the graph output that is quantized
		            same as input_quantized_idxs configuration provided
		            for the standalone module
	**/
	static public function prepare(model:Dynamic, qconfig_dict:Dynamic, node_name_to_scope:Dynamic, ?prepare_custom_config_dict:Dynamic, ?equalization_qconfig_dict:Dynamic, ?backend_config_dict:Dynamic, ?is_standalone_module:Dynamic):Dynamic;
	/**
		Currently we assume that inputs to the graph are either `torch.float` or
		`torch.quint8`, which is not always correct. For ops such as
		`x.masked_fill(mask, value)`, we know that the dtype of  `mask` is a
		`BoolTensor`. Propagate this information throughout the graph.
		
		Note: not all dtypes in the graph will be correct after this pass, but a
		higher percentage of them will be correct. Hopefully in the future we can
		replace this with a better way to reason about dtypes of tensors.
	**/
	static public function propagate_dtypes_for_known_nodes(graph:Dynamic, node_name_to_target_dtype:Dynamic, matches:Dynamic):Dynamic;
	/**
		Propagate qconfig through the module hierarchy and assign `qconfig`
		attribute on each leaf module
		
		Args:
		    module: input module
		    qconfig_dict: dictionary that maps from name or type of submodule to
		        quantization configuration, qconfig applies to all submodules of a
		        given module unless qconfig for the submodules are specified (when
		        the submodule already has qconfig attribute)
		
		Return:
		    None, module is modified inplace with qconfig attached
	**/
	static public function propagate_qconfig_(module:Dynamic, ?qconfig_dict:Dynamic, ?allow_list:Dynamic):Dynamic;
	static public function qat_swap_modules(root:Dynamic, additional_qat_module_mapping:Dynamic):Dynamic;
	static public function qconfig_equals(q1:Dynamic, q2:Dynamic):Dynamic;
	static public function remove_output_observer(node:Dynamic, model:Dynamic, modules:Dynamic):Dynamic;
	/**
		Runs prepare_fx on each standalone module. Note: this does
		not modify the graph, it just replaces the unobserved modules with
		their observed versions.
	**/
	static public function run_prepare_fx_on_standalone_modules(model:Dynamic, modules:Dynamic, matches:Dynamic, prepare_custom_config_dict:Dynamic):Dynamic;
	static public function save_state(observed:Dynamic, qconfig_map:Dynamic, node_name_to_scope:Dynamic, patterns:Dynamic, prepare_custom_config_dict:Dynamic, equalization_qconfig_map:Dynamic):Dynamic;
	static public function swap_custom_module_to_observed(node:Dynamic, qconfig:Dynamic, modules:Dynamic, prepare_custom_config_dict:Dynamic):Dynamic;
	/**
		Update the qconfig_dict to account for fused modules such as LinearReLU.
	**/
	static public function update_qconfig_for_fusion(model:Dynamic, qconfig_dict:Dynamic):Dynamic;
	/**
		Update the qconfig_dict to account for module swaps during QAT.
		During QAT we perform a module swap on the nn.Module types to the corresponding nn.qat.modules types.
	**/
	static public function update_qconfig_for_qat(qconfig_dict:Dynamic, additional_qat_module_mapping:Dynamic):Dynamic;
	static public function validate_backend_config_dict(backend_config_dict:Dynamic):Dynamic;
	static public function weight_dtype(qconfig:Dynamic):Dynamic;
	/**
		Given a qconfig, decide if the weight needs to be
		quantized or not
	**/
	static public function weight_is_quantized(qconfig:Dynamic):Dynamic;
}