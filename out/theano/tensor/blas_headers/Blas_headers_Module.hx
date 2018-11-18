/* This file is generated, do not edit! */
package theano.tensor.blas_headers;
@:pythonImport("theano.tensor.blas_headers") extern class Blas_headers_Module {
	static public function ____gemm_code(check_ab:Dynamic, a_init:Dynamic, b_init:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		C header for the fortran blas interface
	**/
	static public function blas_header_text():Dynamic;
	static public function blas_header_version():Dynamic;
	/**
		C header for the cblas interface.
	**/
	static public function cblas_header_text():Dynamic;
	static public var config : Dynamic;
	/**
		Try to detect a bug in the default BLAS in MacOS.
		
		The problem in Theano has been reported in gh-1240,
		the underlying bug has been confirmed in
		http://www.macresearch.org/lapackblas-fortran-106#comment-17227.
		
		This function tries to compile code triggering that bug,
		and, if necessary, an attempted fix.
		
		Three attributes of this function will be set:
		    - detect_macos_sdot_bug.tested will be set to True
		      when this function is called.
		    - detect_macos_sdot_bug.present will be set to True if the bug is
		      detected. Its value is returned by the function
		    - detect_macos_sdot_bug.fix_works will be set to True if the fix was
		      attempted, and succeeded.
	**/
	static public function detect_macos_sdot_bug():Dynamic;
	/**
		Returns the directory component of a pathname
	**/
	static public function dirname(p:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		C header for MKL threads interface
	**/
	static public function mkl_threads_text():Dynamic;
	/**
		C header for OpenBLAS threads interface
	**/
	static public function openblas_threads_text():Dynamic;
	static public var print_function : Dynamic;
}