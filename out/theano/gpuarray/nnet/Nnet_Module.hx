/* This file is generated, do not edit! */
package theano.gpuarray.nnet;
@:pythonImport("theano.gpuarray.nnet") extern class Nnet_Module {
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
		This will attempt to convert `x` into a variable on the GPU.
		
		It can take either a value of another variable.  If `x` is already
		suitable, it will be returned as-is.
		
		Parameters
		----------
		x
		    Object to convert
		context_name : str or None
		    target context name for the result
	**/
	static public function as_gpuarray_variable(x:Dynamic, context_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function gpu_crossentropy_softmax_1hot_with_bias_dx(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_crossentropy_softmax_argmax_1hot_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_softmax(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_softmax_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpuarray_helper_inc_dir():Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
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