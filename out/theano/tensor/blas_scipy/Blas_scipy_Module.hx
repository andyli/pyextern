/* This file is generated, do not edit! */
package theano.tensor.blas_scipy;
@:pythonImport("theano.tensor.blas_scipy") extern class Blas_scipy_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _blas_ger_fns : Dynamic;
	static public var absolute_import : Dynamic;
	static public var blas_optdb : Dynamic;
	static public var division : Dynamic;
	static public function ger(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ger_destructive(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var have_fblas : Dynamic;
	/**
		Uses the TopoOptimizer from the input nodes to output nodes of the graph.
	**/
	static public function in2out(?local_opts:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var make_ger_destructive : Dynamic;
	static public function make_scipy_blas_destructive(fgraph:Dynamic):Dynamic;
	static public var optdb : Dynamic;
	static public var print_function : Dynamic;
	static public function scipy_ger_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function scipy_ger_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function use_scipy_blas(fgraph:Dynamic):Dynamic;
	static public var use_scipy_ger : Dynamic;
}