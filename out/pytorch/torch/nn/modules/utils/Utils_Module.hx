/* This file is generated, do not edit! */
package torch.nn.modules.utils;
@:pythonImport("torch.nn.modules.utils") extern class Utils_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _list_with_default(out_size:Dynamic, defaults:Dynamic):Dynamic;
	static public function _ntuple(n:Dynamic):Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _quadruple(x:Dynamic):Dynamic;
	/**
		Reverse the order of `t` and repeat each element for `n` times.
		
		This can be used to translate padding arg used by Conv and Pooling modules
		to the ones used by `F.pad`.
	**/
	static public function _reverse_repeat_tuple(t:Dynamic, n:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	/**
		Strip the prefix in state_dict in place, if any.
		
		..note::
		    Given a `state_dict` from a DP/DDP model, a local model can load it by applying
		    `consume_prefix_in_state_dict_if_present(state_dict, "module.")` before calling
		    :meth:`torch.nn.Module.load_state_dict`.
		
		Args:
		    state_dict (OrderedDict): a state-dict to be loaded to the model.
		    prefix (str): prefix.
	**/
	static public function consume_prefix_in_state_dict_if_present(state_dict:Dynamic, prefix:Dynamic):Dynamic;
}