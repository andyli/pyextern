/* This file is generated, do not edit! */
package torch.nn.parallel.distributed_cpu;
@:pythonImport("torch.nn.parallel.distributed_cpu", "DistributedDataParallelCPU") extern class DistributedDataParallelCPU {
	/**
		Call self as a function.
	**/
	public function __call__(?input:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	public function __getattr__(name:Dynamic):Dynamic;
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
	public function ___init__(module:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(module:Dynamic):Void;
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
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _apply(fn:Dynamic):Dynamic;
	public function _get_name():Dynamic;
	/**
		Copies parameters and buffers from :attr:`state_dict` into only
		this module, but not its descendants. This is called on every submodule
		in :meth:`~torch.nn.Module.load_state_dict`. Metadata saved for this
		module in input :attr:`state_dict` is provided as :attr`local_metadata`.
		For state dicts without metadata, :attr`local_metadata` is empty.
		Subclasses can achieve class-specific backward compatible loading using
		the version number at `local_metadata.get("version", None)`.
		
		.. note::
		    :attr:`state_dict` is not the same object as the input
		    :attr:`state_dict` to :meth:`~torch.nn.Module.load_state_dict`. So
		    it can be modified.
		
		Arguments:
		    state_dict (dict): a dict containing parameters and
		        persistent buffers.
		    prefix (str): the prefix for parameters and buffers used in this
		        module
		    local_metadata (dict): a dict containing the metadata for this moodule.
		        See
		    strict (bool): whether to strictly enforce that the keys in
		        :attr:`state_dict` with :attr:`prefix` match the names of
		        parameters and buffers in this module
		    missing_keys (list of str): if ``strict=False``, add missing keys to
		        this list
		    unexpected_keys (list of str): if ``strict=False``, add unexpected
		        keys to this list
		    error_msgs (list of str): error messages should be added to this
		        list, and will be reported together in
		        :meth:`~torch.nn.Module.load_state_dict`
	**/
	public function _load_from_state_dict(state_dict:Dynamic, prefix:Dynamic, local_metadata:Dynamic, strict:Dynamic, missing_keys:Dynamic, unexpected_keys:Dynamic, error_msgs:Dynamic):Dynamic;
	/**
		Helper method for yielding various names + members of modules.
	**/
	public function _named_members(get_members_fn:Dynamic, ?prefix:Dynamic, ?recurse:Dynamic):Dynamic;
	/**
		These hooks will be called with arguments: `state_dict`, `prefix`,
		`local_metadata`, `strict`, `missing_keys`, `unexpected_keys`,
		`error_msgs`, before loading `state_dict` into `self`. These arguments
		are exactly the same as those of `_load_from_state_dict`.
	**/
	public function _register_load_state_dict_pre_hook(hook:Dynamic):Dynamic;
	/**
		These hooks will be called with arguments: `self`, `state_dict`,
		`prefix`, `local_metadata`, after the `state_dict` of `self` is set.
		Note that only parameters and buffers of `self` or its children are
		guaranteed to exist in `state_dict`. The hooks may modify `state_dict`
		inplace or return a new one.
	**/
	public function _register_state_dict_hook(hook:Dynamic):Dynamic;
	public function _slow_forward(?input:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _tracing_name(tracing_state:Dynamic):Dynamic;
	static public var _version : Dynamic;
	/**
		Adds a child module to the current module.
		
		The module can be accessed as an attribute using the given name.
		
		Args:
		    name (string): name of the child module. The child module can be
		        accessed from this module using the given name
		    parameter (Module): child module to be added to the module.
	**/
	public function add_module(name:Dynamic, module:Dynamic):Dynamic;
	/**
		Applies ``fn`` recursively to every submodule (as returned by ``.children()``)
		as well as self. Typical use includes initializing the parameters of a model
		(see also :ref:`torch-nn-init`).
		
		Args:
		    fn (:class:`Module` -> None): function to be applied to each submodule
		
		Returns:
		    Module: self
		
		Example::
		
		    >>> def init_weights(m):
		            print(m)
		            if type(m) == nn.Linear:
		                m.weight.data.fill_(1.0)
		                print(m.weight)
		
		    >>> net = nn.Sequential(nn.Linear(2, 2), nn.Linear(2, 2))
		    >>> net.apply(init_weights)
		    Linear(in_features=2, out_features=2, bias=True)
		    Parameter containing:
		    tensor([[ 1.,  1.],
		            [ 1.,  1.]])
		    Linear(in_features=2, out_features=2, bias=True)
		    Parameter containing:
		    tensor([[ 1.,  1.],
		            [ 1.,  1.]])
		    Sequential(
		      (0): Linear(in_features=2, out_features=2, bias=True)
		      (1): Linear(in_features=2, out_features=2, bias=True)
		    )
		    Sequential(
		      (0): Linear(in_features=2, out_features=2, bias=True)
		      (1): Linear(in_features=2, out_features=2, bias=True)
		    )
	**/
	public function apply(fn:Dynamic):Dynamic;
	/**
		Returns an iterator over module buffers.
		
		Args:
		    recurse (bool): if True, then yields buffers of this module
		        and all submodules. Otherwise, yields only buffers that
		        are direct members of this module.
		
		Yields:
		    torch.Tensor: module buffer
		
		Example::
		
		    >>> for buf in model.buffers():
		    >>>     print(type(buf.data), buf.size())
		    <class 'torch.FloatTensor'> (20L,)
		    <class 'torch.FloatTensor'> (20L, 1L, 5L, 5L)
	**/
	public function buffers(?recurse:Dynamic):Dynamic;
	/**
		Returns an iterator over immediate children modules.
		
		Yields:
		    Module: a child module
	**/
	public function children():Dynamic;
	/**
		Moves all model parameters and buffers to the CPU.
		
		Returns:
		    Module: self
	**/
	public function cpu():Dynamic;
	/**
		Moves all model parameters and buffers to the GPU.
		
		This also makes associated parameters and buffers different objects. So
		it should be called before constructing optimizer if the module will
		live on GPU while being optimized.
		
		Arguments:
		    device (int, optional): if specified, all parameters will be
		        copied to that device
		
		Returns:
		    Module: self
	**/
	public function cuda(?device:Dynamic):Dynamic;
	/**
		Casts all floating point parameters and buffers to ``double`` datatype.
		
		Returns:
		    Module: self
	**/
	public function double():Dynamic;
	static public var dump_patches : Dynamic;
	/**
		Sets the module in evaluation mode.
		
		This has any effect only on certain modules. See documentations of
		particular modules for details of their behaviors in training/evaluation
		mode, if they are affected, e.g. :class:`Dropout`, :class:`BatchNorm`,
		etc.
	**/
	public function eval():Dynamic;
	/**
		Set the extra representation of the module
		
		To print customized extra information, you should reimplement
		this method in your own modules. Both single-line and multi-line
		strings are acceptable.
	**/
	public function extra_repr():Dynamic;
	/**
		Casts all floating point parameters and buffers to float datatype.
		
		Returns:
		    Module: self
	**/
	public function float():Dynamic;
	/**
		Defines the computation performed at every call.
		
		Should be overridden by all subclasses.
		
		.. note::
		    Although the recipe for forward pass needs to be defined within
		    this function, one should call the :class:`Module` instance afterwards
		    instead of this since the former takes care of running the
		    registered hooks while the latter silently ignores them.
	**/
	public function forward(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Casts all floating point parameters and buffers to ``half`` datatype.
		
		Returns:
		    Module: self
	**/
	public function half():Dynamic;
	/**
		Copies parameters and buffers from :attr:`state_dict` into
		this module and its descendants. If :attr:`strict` is ``True``, then
		the keys of :attr:`state_dict` must exactly match the keys returned
		by this module's :meth:`~torch.nn.Module.state_dict` function.
		
		Arguments:
		    state_dict (dict): a dict containing parameters and
		        persistent buffers.
		    strict (bool, optional): whether to strictly enforce that the keys
		        in :attr:`state_dict` match the keys returned by this module's
		        :meth:`~torch.nn.Module.state_dict` function. Default: ``True``
	**/
	public function load_state_dict(state_dict:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Returns an iterator over all modules in the network.
		
		Yields:
		    Module: a module in the network
		
		Note:
		    Duplicate modules are returned only once. In the following
		    example, ``l`` will be returned only once.
		
		Example::
		
		    >>> l = nn.Linear(2, 2)
		    >>> net = nn.Sequential(l, l)
		    >>> for idx, m in enumerate(net.modules()):
		            print(idx, '->', m)
		
		    0 -> Sequential (
		      (0): Linear (2 -> 2)
		      (1): Linear (2 -> 2)
		    )
		    1 -> Linear (2 -> 2)
	**/
	public function modules():Dynamic;
	/**
		Returns an iterator over module buffers, yielding both the
		name of the buffer as well as the buffer itself.
		
		Args:
		    prefix (str): prefix to prepend to all buffer names.
		    recurse (bool): if True, then yields buffers of this module
		        and all submodules. Otherwise, yields only buffers that
		        are direct members of this module.
		
		Yields:
		    (string, torch.Tensor): Tuple containing the name and buffer
		
		Example::
		
		    >>> for name, buf in self.named_buffers():
		    >>>    if name in ['running_var']:
		    >>>        print(buf.size())
	**/
	public function named_buffers(?prefix:Dynamic, ?recurse:Dynamic):Dynamic;
	/**
		Returns an iterator over immediate children modules, yielding both
		the name of the module as well as the module itself.
		
		Yields:
		    (string, Module): Tuple containing a name and child module
		
		Example::
		
		    >>> for name, module in model.named_children():
		    >>>     if name in ['conv4', 'conv5']:
		    >>>         print(module)
	**/
	public function named_children():Dynamic;
	/**
		Returns an iterator over all modules in the network, yielding
		both the name of the module as well as the module itself.
		
		Yields:
		    (string, Module): Tuple of name and module
		
		Note:
		    Duplicate modules are returned only once. In the following
		    example, ``l`` will be returned only once.
		
		Example::
		
		    >>> l = nn.Linear(2, 2)
		    >>> net = nn.Sequential(l, l)
		    >>> for idx, m in enumerate(net.named_modules()):
		            print(idx, '->', m)
		
		    0 -> ('', Sequential (
		      (0): Linear (2 -> 2)
		      (1): Linear (2 -> 2)
		    ))
		    1 -> ('0', Linear (2 -> 2))
	**/
	public function named_modules(?memo:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Returns an iterator over module parameters, yielding both the
		name of the parameter as well as the parameter itself.
		
		Args:
		    prefix (str): prefix to prepend to all parameter names.
		    recurse (bool): if True, then yields parameters of this module
		        and all submodules. Otherwise, yields only parameters that
		        are direct members of this module.
		
		Yields:
		    (string, Parameter): Tuple containing the name and parameter
		
		Example::
		
		    >>> for name, param in self.named_parameters():
		    >>>    if name in ['bias']:
		    >>>        print(param.size())
	**/
	public function named_parameters(?prefix:Dynamic, ?recurse:Dynamic):Dynamic;
	/**
		Returns an iterator over module parameters.
		
		This is typically passed to an optimizer.
		
		Args:
		    recurse (bool): if True, then yields parameters of this module
		        and all submodules. Otherwise, yields only parameters that
		        are direct members of this module.
		
		Yields:
		    Parameter: module parameter
		
		Example::
		
		    >>> for param in model.parameters():
		    >>>     print(type(param.data), param.size())
		    <class 'torch.FloatTensor'> (20L,)
		    <class 'torch.FloatTensor'> (20L, 1L, 5L, 5L)
	**/
	public function parameters(?recurse:Dynamic):Dynamic;
	/**
		Registers a backward hook on the module.
		
		The hook will be called every time the gradients with respect to module
		inputs are computed. The hook should have the following signature::
		
		    hook(module, grad_input, grad_output) -> Tensor or None
		
		The :attr:`grad_input` and :attr:`grad_output` may be tuples if the
		module has multiple inputs or outputs. The hook should not modify its
		arguments, but it can optionally return a new gradient with respect to
		input that will be used in place of :attr:`grad_input` in subsequent
		computations.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
		
		.. warning ::
		
		    The current implementation will not have the presented behavior
		    for complex :class:`Module` that perform many operations.
		    In some failure cases, :attr:`grad_input` and :attr:`grad_output` will only
		    contain the gradients for a subset of the inputs and outputs.
		    For such :class:`Module`, you should use :func:`torch.Tensor.register_hook`
		    directly on a specific input or output to get the required gradients.
	**/
	public function register_backward_hook(hook:Dynamic):Dynamic;
	/**
		Adds a persistent buffer to the module.
		
		This is typically used to register a buffer that should not to be
		considered a model parameter. For example, BatchNorm's ``running_mean``
		is not a parameter, but is part of the persistent state.
		
		Buffers can be accessed as attributes using given names.
		
		Args:
		    name (string): name of the buffer. The buffer can be accessed
		        from this module using the given name
		    tensor (Tensor): buffer to be registered.
		
		Example::
		
		    >>> self.register_buffer('running_mean', torch.zeros(num_features))
	**/
	public function register_buffer(name:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Registers a forward hook on the module.
		
		The hook will be called every time after :func:`forward` has computed an output.
		It should have the following signature::
		
		    hook(module, input, output) -> None
		
		The hook should not modify the input or output.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
	**/
	public function register_forward_hook(hook:Dynamic):Dynamic;
	/**
		Registers a forward pre-hook on the module.
		
		The hook will be called every time before :func:`forward` is invoked.
		It should have the following signature::
		
		    hook(module, input) -> None
		
		The hook should not modify the input.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
	**/
	public function register_forward_pre_hook(hook:Dynamic):Dynamic;
	/**
		Adds a parameter to the module.
		
		The parameter can be accessed as an attribute using given name.
		
		Args:
		    name (string): name of the parameter. The parameter can be accessed
		        from this module using the given name
		    parameter (Parameter): parameter to be added to the module.
	**/
	public function register_parameter(name:Dynamic, param:Dynamic):Dynamic;
	public function share_memory():Dynamic;
	/**
		Returns a dictionary containing a whole state of the module.
		
		Both parameters and persistent buffers (e.g. running averages) are
		included. Keys are corresponding parameter and buffer names.
		
		Returns:
		    dict:
		        a dictionary containing a whole state of the module
		
		Example::
		
		    >>> module.state_dict().keys()
		    ['bias', 'weight']
	**/
	public function state_dict(?destination:Dynamic, ?prefix:Dynamic, ?keep_vars:Dynamic):Dynamic;
	public function sync_parameters():Dynamic;
	/**
		Moves and/or casts the parameters and buffers.
		
		This can be called as
		
		.. function:: to(device=None, dtype=None, non_blocking=False)
		
		.. function:: to(dtype, non_blocking=False)
		
		.. function:: to(tensor, non_blocking=False)
		
		Its signature is similar to :meth:`torch.Tensor.to`, but only accepts
		floating point desired :attr:`dtype` s. In addition, this method will
		only cast the floating point parameters and buffers to :attr:`dtype`
		(if given). The integral parameters and buffers will be moved
		:attr:`device`, if that is given, but with dtypes unchanged. When
		:attr:`non_blocking` is set, it tries to convert/move asynchronously
		with respect to the host if possible, e.g., moving CPU Tensors with
		pinned memory to CUDA devices.
		
		See below for examples.
		
		.. note::
		    This method modifies the module in-place.
		
		Args:
		    device (:class:`torch.device`): the desired device of the parameters
		        and buffers in this module
		    dtype (:class:`torch.dtype`): the desired floating point type of
		        the floating point parameters and buffers in this module
		    tensor (torch.Tensor): Tensor whose dtype and device are the desired
		        dtype and device for all parameters and buffers in this module
		
		Returns:
		    Module: self
		
		Example::
		
		    >>> linear = nn.Linear(2, 2)
		    >>> linear.weight
		    Parameter containing:
		    tensor([[ 0.1913, -0.3420],
		            [-0.5113, -0.2325]])
		    >>> linear.to(torch.double)
		    Linear(in_features=2, out_features=2, bias=True)
		    >>> linear.weight
		    Parameter containing:
		    tensor([[ 0.1913, -0.3420],
		            [-0.5113, -0.2325]], dtype=torch.float64)
		    >>> gpu1 = torch.device("cuda:1")
		    >>> linear.to(gpu1, dtype=torch.half, non_blocking=True)
		    Linear(in_features=2, out_features=2, bias=True)
		    >>> linear.weight
		    Parameter containing:
		    tensor([[ 0.1914, -0.3420],
		            [-0.5112, -0.2324]], dtype=torch.float16, device='cuda:1')
		    >>> cpu = torch.device("cpu")
		    >>> linear.to(cpu)
		    Linear(in_features=2, out_features=2, bias=True)
		    >>> linear.weight
		    Parameter containing:
		    tensor([[ 0.1914, -0.3420],
		            [-0.5112, -0.2324]], dtype=torch.float16)
	**/
	public function to(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets the module in training mode.
		
		This has any effect only on certain modules. See documentations of
		particular modules for details of their behaviors in training/evaluation
		mode, if they are affected, e.g. :class:`Dropout`, :class:`BatchNorm`,
		etc.
		
		Returns:
		    Module: self
	**/
	public function train(?mode:Dynamic):Dynamic;
	/**
		Casts all parameters and buffers to :attr:`dst_type`.
		
		Arguments:
		    dst_type (type or string): the desired type
		
		Returns:
		    Module: self
	**/
	public function type(dst_type:Dynamic):Dynamic;
	/**
		Sets gradients of all model parameters to zero.
	**/
	public function zero_grad():Dynamic;
}