/* This file is generated, do not edit! */
package theano.gpuarray.cudnn_defs;
@:pythonImport("theano.gpuarray.cudnn_defs") extern class Cudnn_defs_Module {
	static public var DOUBLE : Dynamic;
	static public var DOUBLE_CONFIG : Dynamic;
	static public var FLOAT : Dynamic;
	static public var FLOAT_CONFIG : Dynamic;
	static public var HALF : Dynamic;
	static public var PSEUDO_HALF_CONFIG : Dynamic;
	static public var TRUE_HALF_CONFIG : Dynamic;
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
		Return cuDNN definitions to be used by Theano for the given cuDNN version.
		
		``cudnn_version`` must be None or an integer
		(typically the version returned by :func:`theano.gpuarray.dnn.version`).
		if None, return definitions for the  most recent supported cuDNN version.
	**/
	static public function get_definitions(?cudnn_version:Dynamic):Dynamic;
	static public function is_double_config(dtype:Dynamic, precision:Dynamic):Dynamic;
	static public function is_float_config(dtype:Dynamic, precision:Dynamic):Dynamic;
	static public function is_pseudo_half_config(dtype:Dynamic, precision:Dynamic):Dynamic;
	static public function is_true_half_config(dtype:Dynamic, precision:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}