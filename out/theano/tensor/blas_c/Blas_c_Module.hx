/* This file is generated, do not edit! */
package theano.tensor.blas_c;
@:pythonImport("theano.tensor.blas_c") extern class Blas_c_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		C header for the fortran blas interface
	**/
	static public function blas_header_text():Dynamic;
	static public function blas_header_version():Dynamic;
	static public var blas_optdb : Dynamic;
	static public function bool_t(?name:Dynamic):Dynamic;
	static public function cgemv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cgemv_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cger_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function cger_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function check_force_gemv_init():Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	/**
		z <- beta * y + alpha * dot(A, x)
		
		where A is a matrix, y and x are vectors (ergo z is vector)
	**/
	static public function gemv_c_code(y:Dynamic, A:Dynamic, x:Dynamic, z:Dynamic, alpha:Dynamic, beta:Dynamic, fail:Dynamic, ?force_init_beta:Dynamic, ?params:Dynamic):Dynamic;
	static public function gemv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gemv_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ger(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ger_c_code(A:Dynamic, a:Dynamic, x:Dynamic, y:Dynamic, Z:Dynamic, fail:Dynamic, params:Dynamic):Dynamic;
	static public function ger_destructive(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Uses the TopoOptimizer from the input nodes to output nodes of the graph.
	**/
	static public function in2out(?local_opts:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Extract a list of compilation flags from config.blas.ldflags.
		
		Depending on the options, different type of flags will be kept.
		It returns a list of libraries against which an Op's object file
		should be linked to benefit from a BLAS implementation.
		
		Parameters
		----------
		libs : bool, optional
		    Extract flags starting with "-l" (the default is True).
		libs_dir : bool, optional
		    Extract flags starting with "-L" (the default is False).
		include_dir : bool, optional
		    Extract flags starting with "-I" (the default is False).
		flags: bool, optional
		    Extract all the other flags (the default is False).
		
		Returns
		-------
		list of strings
		    Extracted flags.
	**/
	static public function ldflags(?libs:Dynamic, ?flags:Dynamic, ?libs_dir:Dynamic, ?include_dir:Dynamic):Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var make_c_gemv_destructive : Dynamic;
	static public var make_c_ger_destructive : Dynamic;
	static public var optdb : Dynamic;
	static public var print_function : Dynamic;
	static public var use_c_gemv : Dynamic;
	static public var use_c_ger : Dynamic;
}