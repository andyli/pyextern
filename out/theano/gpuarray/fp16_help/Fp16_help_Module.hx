/* This file is generated, do not edit! */
package theano.gpuarray.fp16_help;
@:pythonImport("theano.gpuarray.fp16_help") extern class Fp16_help_Module {
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
		Return the function name to load data.
		
		This should be used like this::
		
		    code = '%s(ival)' % (load_w(input_type),)
	**/
	static public function load_w(dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the data type for working memory.
	**/
	static public function work_dtype(dtype:Dynamic):Dynamic;
	/**
		Return the function name to write data.
		
		This should be used like this::
		
		    code = 'res = %s(oval)' % (write_w(output_type),)
	**/
	static public function write_w(dtype:Dynamic):Dynamic;
}