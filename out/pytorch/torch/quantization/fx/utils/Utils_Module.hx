/* This file is generated, do not edit! */
package torch.quantization.fx.utils;
@:pythonImport("torch.quantization.fx.utils") extern class Utils_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public var FUNCTIONAL_OPS_WITH_BIAS : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NON_QUANTIZABLE_WEIGHT_OPS : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function Type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Given a value of any type, creates a getattr node corresponding to the value and
		registers the value as a buffer to the module.
	**/
	static public function create_getattr_from_value(module:Dynamic, graph:Dynamic, prefix:Dynamic, value:Dynamic):Dynamic;
	/**
		Create getattr nodes in the quantized graph for scale and zero point values.
		The nodes are registered with the root_module of the model.
	**/
	static public function create_qparam_nodes(node_name:Dynamic, scale:Dynamic, zero_point:Dynamic, modules:Dynamic, quantized_graph:Dynamic, node_name_to_scope:Dynamic):Dynamic;
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
	static public function get_linear_prepack_op_for_dtype(dtype:Dynamic):Dynamic;
	static public function get_new_attr_name_with_prefix(prefix:Dynamic):Dynamic;
	static public function get_per_tensor_qparams(activation_post_process:Dynamic):Dynamic;
	static public function get_qconv_op(conv_op:Dynamic, has_relu:Dynamic):Dynamic;
	static public function get_qconv_prepack_op(conv_op:Dynamic):Dynamic;
	/**
		Given an activation_post_process module,
		return node_type(e.g. call_function), quantize op(e.g. quantize_per_tensor) and a dictionary
		of extracted qparams from the module
	**/
	static public function get_quantize_node_info(activation_post_process:Dynamic):Dynamic;
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
	/**
		Returns a printable representation of the ops in the graph of g.
		If shorten is True, tries to abbreviate fields.
	**/
	static public function graph_pretty_str(g:Dynamic, ?shorten:Dynamic):Dynamic;
	static public function is_activation_post_process(module:Dynamic):Dynamic;
	/**
		Returns True if this node is a node that takes a Tensor as input and output some
		meta information about the Tensor, e.g. shape, size etc.
	**/
	static public function is_get_tensor_info_node(node:Dynamic):Dynamic;
	static public function is_per_channel(qscheme:Dynamic):Dynamic;
	static public function is_per_tensor(qscheme:Dynamic):Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_arg(a:Dynamic, fn:Dynamic):Dynamic;
	/**
		Gets the next module that matches what is needed in
		is_target_module_type if it exists
		
		Args:
		    node: The node whose users we want to look at
		    target_module_type: Module type that we want to check
		    target_functional_type: Functional type that we want to check
	**/
	static public function maybe_get_next_module(node:Dynamic, modules:Dynamic, ?target_module_type:Dynamic, ?target_functional_type:Dynamic):Dynamic;
	/**
		Returns indexes of boolean Tensor args
	**/
	static public function node_bool_tensor_arg_indexes(node:Dynamic):Dynamic;
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
}