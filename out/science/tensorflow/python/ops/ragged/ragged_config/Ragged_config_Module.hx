/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_config;
@:pythonImport("tensorflow.python.ops.ragged.ragged_config") extern class Ragged_config_Module {
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
		Whether incompatible row-partitioning dtypes should be auto-converted.
		
		If true, then operations that combine RaggedTensors but have different
		row-partitioning tensor dtypes will be automatically cast to a
		compatible dtype (`tf.int64`).  If false, then such operations will result
		in an error.
		
		Returns:
		  `bool`
	**/
	static public function auto_cast_partition_dtype():Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}