/* This file is generated, do not edit! */
package torch.distributed.nn.functional;
@:pythonImport("torch.distributed.nn.functional", "_AllReduce") extern class _AllReduce {
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Function metaclass.
		
		This metaclass sets up the following properties:
		    _backward_cls: The Function class corresponding to the differentiated
		        version of this function (which is generated on the fly by this
		        metaclass).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, attrs:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _backward_cls(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _raw_saved_tensors : Dynamic;
	static public function _register_hook(backward_hooks:Dynamic, hook:Dynamic):Dynamic;
	public function _register_hook_dict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function apply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Defines a formula for differentiating the operation with backward mode
		automatic differentiation.
		
		This function is to be overridden by all subclasses.
		
		It must accept a context :attr:`ctx` as the first argument, followed by
		as many outputs as the :func:`forward` returned (None will be passed in
		for non tensor outputs of the forward function),
		and it should return as many tensors, as there were inputs to
		:func:`forward`. Each argument is the gradient w.r.t the given output,
		and each returned value should be the gradient w.r.t. the
		corresponding input. If an input is not a Tensor or is a Tensor not
		requiring grads, you can just pass None as a gradient for that input.
		
		The context can be used to retrieve tensors saved during the forward
		pass. It also has an attribute :attr:`ctx.needs_input_grad` as a tuple
		of booleans representing whether each input needs gradient. E.g.,
		:func:`backward` will have ``ctx.needs_input_grad[0] = True`` if the
		first input to :func:`forward` needs gradient computated w.r.t. the
		output.
	**/
	static public function backward(ctx:Dynamic, grad_output:Dynamic):Dynamic;
	public var dirty_tensors : Dynamic;
	/**
		Performs the operation.
		
		This function is to be overridden by all subclasses.
		
		It must accept a context ctx as the first argument, followed by any
		number of arguments (tensors or other types).
		
		The context can be used to store arbitrary data that can be then
		retrieved during the backward pass.
	**/
	static public function forward(ctx:Dynamic, op:Dynamic, group:Dynamic, tensor:Dynamic):Dynamic;
	static public var is_traceable : Dynamic;
	/**
		Defines a formula for differentiating the operation with forward mode
		automatic differentiation.
		This function is to be overridden by all subclasses.
		It must accept a context :attr:`ctx` as the first argument, followed by
		as many inputs as the :func:`forward` got (None will be passed in
		for non tensor inputs of the forward function),
		and it should return as many tensors as there were outputs to
		:func:`forward`. Each argument is the gradient w.r.t the given input,
		and each returned value should be the gradient w.r.t. the
		corresponding output. If an output is not a Tensor or the function is not
		differentiable with respect to that output, you can just pass None as a
		gradient for that input.
		
		You can use the :attr:`ctx` object to pass any value from the forward to this
		functions.
	**/
	static public function jvp(ctx:Dynamic, ?grad_inputs:python.VarArgs<Dynamic>):Dynamic;
	/**
		Marks given tensors as modified in an in-place operation.
		
		**This should be called at most once, only from inside the**
		:func:`forward` **method, and all arguments should be inputs.**
		
		Every tensor that's been modified in-place in a call to :func:`forward`
		should be given to this function, to ensure correctness of our checks.
		It doesn't matter whether the function is called before or after
		modification.
		
		Examples::
		    >>> class Inplace(Function):
		    >>>     @staticmethod
		    >>>     def forward(ctx, x):
		    >>>         x_npy = x.numpy() # x_npy shares storage with x
		    >>>         x_npy += 1
		    >>>         ctx.mark_dirty(x)
		    >>>         return x
		    >>>
		    >>>     @staticmethod
		    >>>     @once_differentiable
		    >>>     def backward(ctx, grad_output):
		    >>>         return grad_output
		    >>>
		    >>> a = torch.tensor(1., requires_grad=True, dtype=torch.double).clone()
		    >>> b = a * a
		    >>> Inplace.apply(a)  # This would lead to wrong gradients!
		    >>>                   # but the engine would not know unless we mark_dirty
		    >>> b.backward() # RuntimeError: one of the variables needed for gradient
		    >>>              # computation has been modified by an inplace operation
	**/
	public function mark_dirty(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Marks outputs as non-differentiable.
		
		**This should be called at most once, only from inside the**
		:func:`forward` **method, and all arguments should be tensor outputs.**
		
		This will mark outputs as not requiring gradients, increasing the
		efficiency of backward computation. You still need to accept a gradient
		for each output in :meth:`~Function.backward`, but it's always going to
		be a zero tensor with the same shape as the shape of a corresponding
		output.
		
		This is used e.g. for indices returned from a sort. See example::
		    >>> class Func(Function):
		    >>>     @staticmethod
		    >>>     def forward(ctx, x):
		    >>>         sorted, idx = x.sort()
		    >>>         ctx.mark_non_differentiable(idx)
		    >>>         ctx.save_for_backward(x, idx)
		    >>>         return sorted, idx
		    >>>
		    >>>     @staticmethod
		    >>>     @once_differentiable
		    >>>     def backward(ctx, g1, g2):  # still need to accept g2
		    >>>         x, idx = ctx.saved_tensors
		    >>>         grad_input = torch.zeros_like(x)
		    >>>         grad_input.index_add_(0, idx, g1)
		    >>>         return grad_input
	**/
	public function mark_non_differentiable(?args:python.VarArgs<Dynamic>):Dynamic;
	public function mark_shared_storage(?pairs:python.VarArgs<Dynamic>):Dynamic;
	public var materialize_grads : Dynamic;
	public var metadata : Dynamic;
	public function name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var needs_input_grad : Dynamic;
	public var next_functions : Dynamic;
	public var non_differentiable : Dynamic;
	public function register_hook(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var requires_grad : Dynamic;
	/**
		Saves given tensors for a future call to :func:`~Function.backward`.
		
		**This should be called at most once, and only from inside the**
		:func:`forward` **method. This should only be called with input or
		output tensors**
		
		In :func:`backward`, saved tensors can be accessed through the :attr:`saved_tensors`
		attribute. Before returning them to the user, a check is made to ensure
		they weren't used in any in-place operation that modified their content.
		
		Arguments can also be ``None``. This is a no-op.
		
		See :ref:`extending-autograd` for more details on how to use this method.
		
		Example::
		    >>> class Func(Function):
		    >>>     @staticmethod
		    >>>     def forward(ctx, x: torch.Tensor, y: torch.Tensor, z: int):
		    >>>         w = x * y * z
		    >>>         out = x * y + y * z + w
		    >>>         ctx.save_for_backward(x, y, out)
		    >>>         ctx.z = z  # z is not a tensor
		    >>>         ctx.w = w  # w is neither input nor output
		    >>>         return out
		    >>>
		    >>>     @staticmethod
		    >>>     def backward(ctx, grad_out):
		    >>>         x, y, out = ctx.saved_tensors
		    >>>         z = ctx.z
		    >>>         gx = grad_out * (y + y * z)
		    >>>         gy = grad_out * (x + z + x * z)
		    >>>         gz = None
		    >>>         return gx, gy, gz
		    >>>
		    >>> a = torch.tensor(1., requires_grad=True, dtype=torch.double)
		    >>> b = torch.tensor(2., requires_grad=True, dtype=torch.double)
		    >>> c = 4
		    >>> d = Func.apply(a, b, c)
	**/
	public function save_for_backward(?tensors:python.VarArgs<Dynamic>):Dynamic;
	public var saved_tensors : Dynamic;
	public var saved_variables : Dynamic;
	/**
		Sets whether to materialize output grad tensors. Default is ``True``.
		
		**This should be called only from inside the** :func:`forward` **method**
		
		If ``True``, undefined output grad tensors will be expanded to tensors full
		of zeros prior to calling the :func:`backward` method.
		
		Example::
		    >>> class SimpleFunc(Function):
		    >>>     @staticmethod
		    >>>     def forward(ctx, x):
		    >>>         return x.clone(), x.clone()
		    >>>
		    >>>     @staticmethod
		    >>>     @once_differentiable
		    >>>     def backward(ctx, g1, g2):
		    >>>         return g1 + g2  # No check for None necessary
		    >>>
		    >>> # We modify SimpleFunc to handle non-materialized grad outputs
		    >>> class Func(Function):
		    >>>     @staticmethod
		    >>>     def forward(ctx, x):
		    >>>         ctx.set_materialize_grads(False)
		    >>>         ctx.save_for_backward(x)
		    >>>         return x.clone(), x.clone()
		    >>>
		    >>>     @staticmethod
		    >>>     @once_differentiable
		    >>>     def backward(ctx, g1, g2):
		    >>>         x, = ctx.saved_tensors
		    >>>         grad_input = torch.zeros_like(x)
		    >>>         if g1 is not None:  # We must check for None now
		    >>>             grad_input += g1
		    >>>         if g2 is not None:
		    >>>             grad_input += g2
		    >>>         return grad_input
		    >>>
		    >>> a = torch.tensor(1., requires_grad=True)
		    >>> b, _ = Func.apply(a)  # induces g2 to be undefined
	**/
	public function set_materialize_grads(value:Dynamic):Dynamic;
	public var to_save : Dynamic;
	/**
		Defines a formula for differentiating the operation with backward mode
		automatic differentiation.
		
		This function is to be overridden by all subclasses.
		
		It must accept a context :attr:`ctx` as the first argument, followed by
		as many outputs as the :func:`forward` returned (None will be passed in
		for non tensor outputs of the forward function),
		and it should return as many tensors, as there were inputs to
		:func:`forward`. Each argument is the gradient w.r.t the given output,
		and each returned value should be the gradient w.r.t. the
		corresponding input. If an input is not a Tensor or is a Tensor not
		requiring grads, you can just pass None as a gradient for that input.
		
		The context can be used to retrieve tensors saved during the forward
		pass. It also has an attribute :attr:`ctx.needs_input_grad` as a tuple
		of booleans representing whether each input needs gradient. E.g.,
		:func:`backward` will have ``ctx.needs_input_grad[0] = True`` if the
		first input to :func:`forward` needs gradient computated w.r.t. the
		output.
	**/
	static public function vjp(ctx:Dynamic, ?grad_outputs:python.VarArgs<Dynamic>):Dynamic;
}