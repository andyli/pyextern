/* This file is generated, do not edit! */
package theano.sandbox.cuda.basic_ops;
@:pythonImport("theano.sandbox.cuda.basic_ops", "GpuSplit") extern class GpuSplit {
	public function L_op(inputs:Dynamic, outputs:Dynamic, output_grads:Dynamic):Dynamic;
	/**
		This method is primarily used by tensor.Rop
		
		Suppose the op outputs
		
		[ f_1(inputs), ..., f_n(inputs) ]
		
		Parameters
		----------
		inputs : a Variable or list of Variables
		eval_points
		    A Variable or list of Variables with the same length as inputs.
		    Each element of eval_points specifies the value of the corresponding
		    input at the point where the R op is to be evaluated.
		
		Returns
		-------
		list of n elements
		    rval[i] should be Rop(f=f_i(inputs),
		                          wrt=inputs,
		                          eval_points=eval_points)
	**/
	public function R_op(inputs:Dynamic, eval_points:Dynamic):Dynamic;
	public function _HideC__hide():Dynamic;
	/**
		Optional: return some or all output[s] of `make_node`.
		
		It is called by code such as:
		
		.. python::
		
		   x = tensor.matrix()
		
		   # tensor.exp is an Op instance, calls
		   # Op.__call__(self=<instance of exp>, inputs=(x,))
		   y = tensor.exp(x)
		
		This class implements a convenience function (for graph-building) which
		uses `default_output`, but subclasses are free to override this function
		and ignore `default_output`.
		
		Parameters
		----------
		inputs
		    The Op's inputs, forwarded to the call to `make_node()`.
		kwargs
		    Additional keyword arguments to be forwarded to
		    `make_node()` *except* for optional argument `return_list` (which
		    defaults to False). If `return_list` is True, then the returned
		    value is always a list. Otherwise it is either a single Variable
		    when the output of `make_node()` contains a single element, or this
		    output (unchanged) when it contains multiple elements.
	**/
	public function __call__(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(name:Dynamic, bases:Dynamic, dct:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(len_splits:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(len_splits:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __props__ : Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Extract test value from variable v.
		Raises AttributeError if there is none.
		
		For a Constant, the test value is v.value.
		For a Shared variable, it is the internal value.
		For another Variable, it is the content of v.tag.test_value.
	**/
	static public function _get_test_value(v:Dynamic):Dynamic;
	/**
		Tuple of properties of all attributes
	**/
	public function _props():Dynamic;
	/**
		This return a dict of all ``__props__`` key-> value.
		
		This is useful in optimization to swap op that should have the
		same props. This help detect error that the new op have at
		least all the original props.
	**/
	public function _props_dict():Dynamic;
	/**
		Add tag.trace to an node or variable.
		
		The argument is returned after being affected (inplace).
		
		Parameters
		----------
		thing
		    The object where we add .tag.trace.
		user_line
		    The max number of user line to keep.
		
		Notes
		-----
		We alse use config.traceback.limit for the maximum number of stack level
		we look.
	**/
	public function add_tag_trace(?user_line:Dynamic):Dynamic;
	public function c_cleanup_code_struct():Dynamic;
	public function c_code():Dynamic;
	public function c_code_cache_version():Dynamic;
	public function c_code_cache_version_apply(node:Dynamic):Dynamic;
	public function c_code_cleanup():Dynamic;
	public function c_compile_args():Dynamic;
	public function c_header_dirs():Dynamic;
	public function c_headers():Dynamic;
	public function c_init_code():Dynamic;
	public function c_init_code_apply():Dynamic;
	public function c_init_code_struct():Dynamic;
	public function c_lib_dirs():Dynamic;
	public function c_libraries():Dynamic;
	public function c_no_compile_args():Dynamic;
	public function c_support_code():Dynamic;
	public function c_support_code_apply():Dynamic;
	public function c_support_code_struct():Dynamic;
	static public var default_output : Dynamic;
	/**
		This allows each op to determine if it wants to be constant
		folded when all its inputs are constant. This allows it to
		choose where it puts its memory/speed trade-off. Also, it
		could make things faster as constants can't be used for inplace
		operations (see *IncSubtensor).
	**/
	public function do_constant_folding(node:Dynamic):Dynamic;
	/**
		Join the gradients along the axis that was used to split x.
	**/
	public function grad(inputs:Dynamic, g_outputs:Dynamic):Dynamic;
	public function infer_shape(node:Dynamic, in_shapes:Dynamic):Dynamic;
	static public var len_splits : Dynamic;
	/**
		Like make_thunk, but will only try to make a C thunk.
		
		        
	**/
	public function make_c_thunk(node:Dynamic, storage_map:Dynamic, compute_map:Dynamic, no_recycling:Dynamic):Dynamic;
	/**
		WRITEME
	**/
	public function make_node(x:Dynamic, axis:Dynamic, splits:Dynamic):Dynamic;
	/**
		Like make_thunk() but only makes python thunks.
	**/
	public function make_py_thunk(node:Dynamic, storage_map:Dynamic, compute_map:Dynamic, no_recycling:Dynamic, ?debug:Dynamic):Dynamic;
	/**
		This function must return a thunk, that is a zero-arguments
		function that encapsulates the computation to be performed
		by this op on the arguments of the node.
		
		Parameters
		----------
		node
		    Something previously returned by self.make_node.
		storage_map
		    dict variable -> one-element-list where a computed
		    value for this variable may be found.
		compute_map
		    dict variable -> one-element-list where a boolean
		    value will be found. The boolean indicates whether the
		    variable's storage_map container contains a valid value (True)
		    or if it has not been computed yet (False).
		no_recycling
		    List of variables for which it is forbidden to reuse memory
		    allocated by a previous call.
		impl
		    Currently, None, 'c' or 'py'. If 'c' or 'py' we will only try
		    that version of the code.
		
		Notes
		-----
		If the thunk consults the storage_map on every call, it is safe
		for it to ignore the no_recycling argument, because elements of the
		no_recycling list will have a value of None in the storage map.  If
		the thunk can potentially cache return values (like CLinker does),
		then it must not do so for variables in the no_recycling list.
		
		self.prepare_node(node, ...) is always called. If we try 'c' and it
		fail and we try again 'py', prepare_node will be called twice.
	**/
	public function make_thunk(node:Dynamic, storage_map:Dynamic, compute_map:Dynamic, no_recycling:Dynamic, ?impl:Dynamic):Dynamic;
	/**
		WRITEME
	**/
	public function perform(node:Dynamic, inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Make any special modifications that the Op needs before doing
		make_thunk().
		
		This can modify the node inplace and should return nothing.
		
		It can be called multiple time with different impl. It is the
		op responsability to don't re-prepare the node when it isn't
		good to do so.
	**/
	public function prepare_node(node:Dynamic, storage_map:Dynamic, compute_map:Dynamic, impl:Dynamic):Dynamic;
}