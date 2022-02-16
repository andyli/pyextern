/* This file is generated, do not edit! */
package tensorflow.compat.v1.config.threading;
@:pythonImport("tensorflow.compat.v1.config.threading") extern class Threading_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get number of threads used for parallelism between independent operations.
		
		Determines the number of threads used by independent non-blocking operations.
		0 means the system picks an appropriate number.
		
		Returns:
		  Number of parallel threads
	**/
	static public function get_inter_op_parallelism_threads():Dynamic;
	/**
		Get number of threads used within an individual op for parallelism.
		
		Certain operations like matrix multiplication and reductions can utilize
		parallel threads for speed ups. A value of 0 means the system picks an
		appropriate number.
		
		Returns:
		  Number of parallel threads
	**/
	static public function get_intra_op_parallelism_threads():Dynamic;
	/**
		Set number of threads used for parallelism between independent operations.
		
		Determines the number of threads used by independent non-blocking operations.
		0 means the system picks an appropriate number.
		
		Args:
		  num_threads: Number of parallel threads
	**/
	static public function set_inter_op_parallelism_threads(num_threads:Dynamic):Dynamic;
	/**
		Set number of threads used within an individual op for parallelism.
		
		Certain operations like matrix multiplication and reductions can utilize
		parallel threads for speed ups. A value of 0 means the system picks an
		appropriate number.
		
		Args:
		  num_threads: Number of parallel threads
	**/
	static public function set_intra_op_parallelism_threads(num_threads:Dynamic):Dynamic;
}