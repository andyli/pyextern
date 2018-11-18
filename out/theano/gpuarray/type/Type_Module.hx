/* This file is generated, do not edit! */
package theano.gpuarray.type;
@:pythonImport("theano.gpuarray.type") extern class Type_Module {
	static public var EQ_MAP : Dynamic;
	static public function GpuArray_pickler(cnda:Dynamic):Dynamic;
	static public function GpuArray_unpickler(npa:Dynamic, ctx_name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _context_reg : Dynamic;
	static public function _name_for_ctx(ctx:Dynamic):Dynamic;
	static public function _unreg_context(name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function compare(a:Dynamic, op:Dynamic, b:Dynamic, ?broadcast:Dynamic, ?convert_f16:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	static public function elemwise2(a:Dynamic, op:Dynamic, b:Dynamic, ary:Dynamic, ?odtype:Dynamic, ?oper:Dynamic, ?op_tmpl:Dynamic, ?broadcast:Dynamic, ?convert_f16:Dynamic):Dynamic;
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
	static public function gpu_context_type(?name:Dynamic):Dynamic;
	/**
		Is the following data supported on the GPU?
		
		Currently, only complex aren't supported.
		
		Parameters
		----------
		data : numpy.ndarray or TensorVariable
		       (it must have dtype and ndim parameter)
	**/
	static public function gpu_supported(data:Dynamic):Dynamic;
	/**
		SharedVariable constructor for GpuArrayType.
		
		See :func:`theano.shared`.
		
		:target: default None
		    The device target. As None is a valid value and we need to
		    differentiate from the parameter notset and None, we use a
		    notset object.
	**/
	static public function gpuarray_shared_constructor(value:Dynamic, ?name:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic, ?borrow:Dynamic, ?broadcastable:Dynamic, ?target:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an iterable of all the registered context names.
	**/
	static public function list_contexts():Dynamic;
	/**
		Do we want to move this computation to the GPU?
		
		Currently, we don't move complex and scalar.
		
		Parameters
		----------
		data : numpy.ndarray or TensorVariable
		       (it must have dtype and ndim parameter)
	**/
	static public function move_to_gpu(data:Dynamic):Dynamic;
	static public var notset : Dynamic;
	static public var print_function : Dynamic;
	/**
		Register a context by mapping it to a name.
		
		The context must be of type `GpuContext` and the name can be
		anything hashable (but is usually a string). Only one context can
		be registered per name and the second registration for a given
		name will raise an error.
		
		Parameters
		----------
		name : hashable object
		    Name to associate the context with (usually a string)
		ctx : GpuContext
		    Context instance
	**/
	static public function reg_context(name:Dynamic, ctx:Dynamic):Dynamic;
	static public function values_eq_approx(a:Dynamic, b:Dynamic, ?allow_remove_inf:Dynamic, ?allow_remove_nan:Dynamic, ?rtol:Dynamic, ?atol:Dynamic):Dynamic;
	static public function values_eq_approx_remove_inf(a:Dynamic, b:Dynamic):Dynamic;
	static public function values_eq_approx_remove_inf_nan(a:Dynamic, b:Dynamic):Dynamic;
	static public function values_eq_approx_remove_nan(a:Dynamic, b:Dynamic):Dynamic;
}