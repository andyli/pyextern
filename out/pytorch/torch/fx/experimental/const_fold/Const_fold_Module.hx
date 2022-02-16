/* This file is generated, do not edit! */
package torch.fx.experimental.const_fold;
@:pythonImport("torch.fx.experimental.const_fold") extern class Const_fold_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper to convert x into a one item tuple if it's not a tuple already.
	**/
	static public function _make_tuple(x:Dynamic):Dynamic;
	/**
		Looks through `module` for any nodes that have all constant attribute inputs
		and separates them out into their own constant subgraph, and returns a
		FoldedGraphModule which runs that constant subgraph on the first run to set
		attributes on the module prior to running the non-constant portion of the
		graph.
	**/
	static public function split_const_subgraphs(module:Dynamic):Dynamic;
	/**
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function split_module(m:Dynamic, root_m:Dynamic, split_callback:Dynamic):Dynamic;
}