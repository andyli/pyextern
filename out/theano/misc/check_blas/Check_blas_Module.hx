/* This file is generated, do not edit! */
package theano.misc.check_blas;
@:pythonImport("theano.misc.check_blas") extern class Check_blas_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		:param execute: If True, execute a Theano function that should call gemm.
		:param verbose: If True, will print some Theano flags and env variables.
		:param M,N,K: The M,N,K size used by gemm.
		:param iters: The number of calls to gemm to do.
		
		:return: a tuple (execution time,
		                  str that represents the implementation used)
	**/
	static public function execute(?execute:Dynamic, ?verbose:Dynamic, ?M:Dynamic, ?N:Dynamic, ?K:Dynamic, ?iters:Dynamic, ?order:Dynamic):Dynamic;
	static public function jobman_job(state:Dynamic, channel:Dynamic):Dynamic;
	static public var parser : Dynamic;
	static public var print_function : Dynamic;
	static public function test():Dynamic;
}