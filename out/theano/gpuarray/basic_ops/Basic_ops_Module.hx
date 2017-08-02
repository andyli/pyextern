/* This file is generated, do not edit! */
package theano.gpuarray.basic_ops;
@:pythonImport("theano.gpuarray.basic_ops") extern class Basic_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function alloc_validate_shape(shape:Dynamic):Dynamic;
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
	static public var config : Dynamic;
	static public var division : Dynamic;
	static public function empty_like(_var:Dynamic):Dynamic;
	static public function forward_string_meth(name:Dynamic):Dynamic;
	/**
		Retrive the context associated with a name.
		
		Return the context object mapped to `ref` that was previously
		register through :func:`reg_context`. Trying to get the context
		for an unregistered `ref` will raise a exception.
		
		Parameters
		----------
		name : hashable object
		    Name associated with the context we want (usually a string)
	**/
	static public function get_context(name:Dynamic):Dynamic;
	static public function get_ctype(dtype:Dynamic):Dynamic;
	static public function get_dtype(s:Dynamic):Dynamic;
	static public function gpu_alloc(ctx:Dynamic, ?memset_0:Dynamic):Dynamic;
	static public function gpu_alloc_empty(ctx:Dynamic, dtype:Dynamic):Dynamic;
	static public function gpu_context_type(?name:Dynamic):Dynamic;
	static public function gpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_from_host(ctx:Dynamic):Dynamic;
	static public function gpu_join(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (GradUndefinedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` is mathematically undefined. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not defined.
	**/
	static public function grad_undefined(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	static public function host_from_gpu(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Infer the context name to use from the inputs given
	**/
	static public function infer_context_name(?vars:python.VarArgs<Dynamic>):Dynamic;
	/**
		iter(iterable) -> iterator
		iter(callable, sentinel) -> iterator
		
		Get an iterator from an object.  In the first form, the argument must
		supply its own iterator, or be a sequence.
		In the second form, the callable is called until it returns the sentinel.
	**/
	static public function iterbytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
	static public function write_w(dtype:Dynamic):Dynamic;
}