/* This file is generated, do not edit! */
package theano.gof;
@:pythonImport("theano.gof") extern class Gof_Module {
	/**
		Variant on WrapLinker that runs a series of wrapper functions instead of
		just one.
	**/
	static public function WrapLinkerMany(linkers:Dynamic, wrappers:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function generic(?name:Dynamic):Dynamic;
	static public function hashtype(self:Dynamic):Dynamic;
	/**
		Decorator for FromFunctionOptimizer.
	**/
	static public function inplace_optimizer(f:Dynamic):Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var ops_with_inner_function : Dynamic;
	/**
		Decorator for FromFunctionOptimizer.
	**/
	static public function optimizer(f:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Utility function that returns the leaves of a search through
		consecutive view_map()s.
		
		WRITEME
	**/
	static public function view_roots(r:Dynamic):Dynamic;
}