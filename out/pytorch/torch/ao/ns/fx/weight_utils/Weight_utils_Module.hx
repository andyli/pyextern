/* This file is generated, do not edit! */
package torch.ao.ns.fx.weight_utils;
@:pythonImport("torch.ao.ns.fx.weight_utils") extern class Weight_utils_Module {
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
	static public function NSSingleResultType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function extract_weight_from_node(node:Dynamic, gm:Dynamic, ?op_to_type_to_weight_extraction_fn:Dynamic):Dynamic;
	static public function get_conv_fun_weight(node:Dynamic, gm:Dynamic):Dynamic;
	static public function get_conv_mod_weight(mod:Dynamic):Dynamic;
	static public function get_linear_fun_weight(node:Dynamic, gm:Dynamic):Dynamic;
	static public function get_linear_mod_weight(mod:Dynamic):Dynamic;
	static public function get_lstm_mod_weights(mod:Dynamic):Dynamic;
	static public function get_lstm_weight(mod:Dynamic):Dynamic;
	static public function get_op_to_type_to_weight_extraction_fn():Dynamic;
	static public function get_qconv_fun_weight(node:Dynamic, gm:Dynamic):Dynamic;
	static public function get_qlinear_fun_weight(node:Dynamic, gm:Dynamic):Dynamic;
	static public function get_qlstm_weight(mod:Dynamic):Dynamic;
	/**
		Returns a string representation of the type of the function or module
		pointed to by this node, or '' for other node types.
	**/
	static public function get_target_type_str(node:Dynamic, gm:Dynamic):Dynamic;
	/**
		Given an obj and a fqn such as "foo.bar.baz", returns gm.foo.bar.baz.
	**/
	static public function getattr_from_fqn(obj:Dynamic, fqn:Dynamic):Dynamic;
	static public function mod_0_weight_detach(mod:Dynamic):Dynamic;
	static public function mod_weight_bias_0(mod:Dynamic):Dynamic;
	static public function mod_weight_detach(mod:Dynamic):Dynamic;
	/**
		If node is not an observer, returns it.  If node is an observer,
		navigates up the graph and returns the first parent which is not an
		observer.  For example,
		
		graph: (node_non_obs), node = node_non_obs : returns node_non_obs
		graph: (node_non_obs -> obs0), node = obs0 : returns node_non_obs
		graph: (node_non_obs -> obs0 -> fq0), node = fq0 : returns node_non_obs
	**/
	static public function return_first_non_observer_node(node:Dynamic, gm:Dynamic):Dynamic;
}