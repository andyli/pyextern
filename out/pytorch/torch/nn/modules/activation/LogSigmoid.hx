/* This file is generated, do not edit! */
package torch.nn.modules.activation;
@:pythonImport("torch.nn.modules.activation", "LogSigmoid") extern class LogSigmoid {
	static public var T_destination : Dynamic;
	static public var __annotations__ : Dynamic;
	public function __call__(?input:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initializes internal Module state, shared by both nn.Module and ScriptModule.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initializes internal Module state, shared by both nn.Module and ScriptModule.
	**/
	public function new():Void;
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
	public function __setstate__(state:Dynamic):Dynamic;
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
	public function _apply(fn:Dynamic):Dynamic;
	public function _call_impl(?input:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the backward hooks for use in the call function.
		It returns two lists, one with the full backward hooks and one with the non-full
		backward hooks.
	**/
	public function _get_backward_hooks():Dynamic;
	public function _get_name():Dynamic;
	/**
		Copies parameters and buffers from :attr:`state_dict` into only
		this module, but not its descendants. This is called on every submodule
		in :meth:`~torch.nn.Module.load_state_dict`. Metadata saved for this
		module in input :attr:`state_dict` is provided as :attr:`local_metadata`.
		For state dicts without metadata, :attr:`local_metadata` is empty.
		Subclasses can achieve class-specific backward compatible loading using
		the version number at `local_metadata.get("version", None)`.
		
		.. note::
		    :attr:`state_dict` is not the same object as the input
		    :attr:`state_dict` to :meth:`~torch.nn.Module.load_state_dict`. So
		    it can be modified.
		
		Args:
		    state_dict (dict): a dict containing parameters and
		        persistent buffers.
		    prefix (str): the prefix for parameters and buffers used in this
		        module
		    local_metadata (dict): a dict containing the metadata for this module.
		        See
		    strict (bool): whether to strictly enforce that the keys in
		        :attr:`state_dict` with :attr:`prefix` match the names of
		        parameters and buffers in this module
		    missing_keys (list of str): if ``strict=True``, add missing keys to
		        this list
		    unexpected_keys (list of str): if ``strict=True``, add unexpected
		        keys to this list
		    error_msgs (list of str): error messages should be added to this
		        list, and will be reported together in
		        :meth:`~torch.nn.Module.load_state_dict`
	**/
	public function _load_from_state_dict(state_dict:Dynamic, prefix:Dynamic, local_metadata:Dynamic, strict:Dynamic, missing_keys:Dynamic, unexpected_keys:Dynamic, error_msgs:Dynamic):Dynamic;
	public function _maybe_warn_non_full_backward_hook(inputs:Dynamic, result:Dynamic, grad_fn:Dynamic):Dynamic;
	/**
		Helper method for yielding various names + members of modules.
	**/
	public function _named_members(get_members_fn:Dynamic, ?prefix:Dynamic, ?recurse:Dynamic):Dynamic;
	/**
		These hooks will be called with arguments: `state_dict`, `prefix`,
		`local_metadata`, `strict`, `missing_keys`, `unexpected_keys`,
		`error_msgs`, before loading `state_dict` into `self`. These arguments
		are exactly the same as those of `_load_from_state_dict`.
		
		If ``with_module`` is ``True``, then the first argument to the hook is
		an instance of the module.
		
		Arguments:
		    hook (Callable): Callable hook that will be invoked before
		        loading the state dict.
		    with_module (bool, optional): Whether or not to pass the module
		        instance to the hook as the first parameter.
	**/
	public function _register_load_state_dict_pre_hook(hook:Dynamic, ?with_module:Dynamic):Dynamic;
	/**
		These hooks will be called with arguments: `self`, `state_dict`,
		`prefix`, `local_metadata`, after the `state_dict` of `self` is set.
		Note that only parameters and buffers of `self` or its children are
		guaranteed to exist in `state_dict`. The hooks may modify `state_dict`
		inplace or return a new one.
	**/
	public function _register_state_dict_hook(hook:Dynamic):Dynamic;
	public function _replicate_for_data_parallel():Dynamic;
	/**
		Saves module state to `destination` dictionary, containing a state
		of the module, but not its descendants. This is called on every
		submodule in :meth:`~torch.nn.Module.state_dict`.
		
		In rare cases, subclasses can achieve class-specific behavior by
		overriding this method with custom logic.
		
		Args:
		    destination (dict): a dict where state will be stored
		    prefix (str): the prefix for parameters and buffers used in this
		        module
	**/
	public function _save_to_state_dict(destination:Dynamic, prefix:Dynamic, keep_vars:Dynamic):Dynamic;
	public function _slow_forward(?input:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _version : Dynamic;
	/**
		Adds a child module to the current module.
		
		The module can be accessed as an attribute using the given name.
		
		Args:
		    name (string): name of the child module. The child module can be
		        accessed from this module using the given name
		    module (Module): child module to be added to the module.
	**/
	public function add_module(name:Dynamic, module:Dynamic):Dynamic;
	/**
		Applies ``fn`` recursively to every submodule (as returned by ``.children()``)
		as well as self. Typical use includes initializing the parameters of a model
		(see also :ref:`nn-init-doc`).
		
		Args:
		    fn (:class:`Module` -> None): function to be applied to each submodule
		
		Returns:
		    Module: self
		
		Example::
		
		    >>> @torch.no_grad()
		    >>> def init_weights(m):
		    >>>     print(m)
		    >>>     if type(m) == nn.Linear:
		    >>>         m.weight.fill_(1.0)
		    >>>         print(m.weight)
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
		Casts all floating point parameters and buffers to ``bfloat16`` datatype.
		
		.. note::
		    This method modifies the module in-place.
		
		Returns:
		    Module: self
	**/
	public function bfloat16():Dynamic;
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
		    >>>     print(type(buf), buf.size())
		    <class 'torch.Tensor'> (20L,)
		    <class 'torch.Tensor'> (20L, 1L, 5L, 5L)
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
		
		.. note::
		    This method modifies the module in-place.
		
		Returns:
		    Module: self
	**/
	public function cpu():Dynamic;
	/**
		Moves all model parameters and buffers to the GPU.
		
		This also makes associated parameters and buffers different objects. So
		it should be called before constructing optimizer if the module will
		live on GPU while being optimized.
		
		.. note::
		    This method modifies the module in-place.
		
		Args:
		    device (int, optional): if specified, all parameters will be
		        copied to that device
		
		Returns:
		    Module: self
	**/
	public function cuda(?device:Dynamic):Dynamic;
	/**
		Casts all floating point parameters and buffers to ``double`` datatype.
		
		.. note::
		    This method modifies the module in-place.
		
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
		
		This is equivalent with :meth:`self.train(False) <torch.nn.Module.train>`.
		
		See :ref:`locally-disable-grad-doc` for a comparison between
		`.eval()` and several similar mechanisms that may be confused with it.
		
		Returns:
		    Module: self
	**/
	public function eval():Dynamic;
	/**
		Set the extra representation of the module
		
		To print customized extra information, you should re-implement
		this method in your own modules. Both single-line and multi-line
		strings are acceptable.
	**/
	public function extra_repr():Dynamic;
	/**
		Casts all floating point parameters and buffers to ``float`` datatype.
		
		.. note::
		    This method modifies the module in-place.
		
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
	public function forward(input:Dynamic):Dynamic;
	/**
		Returns the buffer given by ``target`` if it exists,
		otherwise throws an error.
		
		See the docstring for ``get_submodule`` for a more detailed
		explanation of this method's functionality as well as how to
		correctly specify ``target``.
		
		Args:
		    target: The fully-qualified string name of the buffer
		        to look for. (See ``get_submodule`` for how to specify a
		        fully-qualified string.)
		
		Returns:
		    torch.Tensor: The buffer referenced by ``target``
		
		Raises:
		    AttributeError: If the target string references an invalid
		        path or resolves to something that is not a
		        buffer
	**/
	public function get_buffer(target:Dynamic):Dynamic;
	/**
		Returns any extra state to include in the module's state_dict.
		Implement this and a corresponding :func:`set_extra_state` for your module
		if you need to store extra state. This function is called when building the
		module's `state_dict()`.
		
		Note that extra state should be pickleable to ensure working serialization
		of the state_dict. We only provide provide backwards compatibility guarantees
		for serializing Tensors; other objects may break backwards compatibility if
		their serialized pickled form changes.
		
		Returns:
		    object: Any extra state to store in the module's state_dict
	**/
	public function get_extra_state():Dynamic;
	/**
		Returns the parameter given by ``target`` if it exists,
		otherwise throws an error.
		
		See the docstring for ``get_submodule`` for a more detailed
		explanation of this method's functionality as well as how to
		correctly specify ``target``.
		
		Args:
		    target: The fully-qualified string name of the Parameter
		        to look for. (See ``get_submodule`` for how to specify a
		        fully-qualified string.)
		
		Returns:
		    torch.nn.Parameter: The Parameter referenced by ``target``
		
		Raises:
		    AttributeError: If the target string references an invalid
		        path or resolves to something that is not an
		        ``nn.Parameter``
	**/
	public function get_parameter(target:Dynamic):Dynamic;
	/**
		Returns the submodule given by ``target`` if it exists,
		otherwise throws an error.
		
		For example, let's say you have an ``nn.Module`` ``A`` that
		looks like this:
		
		.. code-block::text
		
		    A(
		        (net_b): Module(
		            (net_c): Module(
		                (conv): Conv2d(16, 33, kernel_size=(3, 3), stride=(2, 2))
		            )
		            (linear): Linear(in_features=100, out_features=200, bias=True)
		        )
		    )
		
		(The diagram shows an ``nn.Module`` ``A``. ``A`` has a nested
		submodule ``net_b``, which itself has two submodules ``net_c``
		and ``linear``. ``net_c`` then has a submodule ``conv``.)
		
		To check whether or not we have the ``linear`` submodule, we
		would call ``get_submodule("net_b.linear")``. To check whether
		we have the ``conv`` submodule, we would call
		``get_submodule("net_b.net_c.conv")``.
		
		The runtime of ``get_submodule`` is bounded by the degree
		of module nesting in ``target``. A query against
		``named_modules`` achieves the same result, but it is O(N) in
		the number of transitive modules. So, for a simple check to see
		if some submodule exists, ``get_submodule`` should always be
		used.
		
		Args:
		    target: The fully-qualified string name of the submodule
		        to look for. (See above example for how to specify a
		        fully-qualified string.)
		
		Returns:
		    torch.nn.Module: The submodule referenced by ``target``
		
		Raises:
		    AttributeError: If the target string references an invalid
		        path or resolves to something that is not an
		        ``nn.Module``
	**/
	public function get_submodule(target:Dynamic):Dynamic;
	/**
		Casts all floating point parameters and buffers to ``half`` datatype.
		
		.. note::
		    This method modifies the module in-place.
		
		Returns:
		    Module: self
	**/
	public function half():Dynamic;
	/**
		Copies parameters and buffers from :attr:`state_dict` into
		this module and its descendants. If :attr:`strict` is ``True``, then
		the keys of :attr:`state_dict` must exactly match the keys returned
		by this module's :meth:`~torch.nn.Module.state_dict` function.
		
		Args:
		    state_dict (dict): a dict containing parameters and
		        persistent buffers.
		    strict (bool, optional): whether to strictly enforce that the keys
		        in :attr:`state_dict` match the keys returned by this module's
		        :meth:`~torch.nn.Module.state_dict` function. Default: ``True``
		
		Returns:
		    ``NamedTuple`` with ``missing_keys`` and ``unexpected_keys`` fields:
		        * **missing_keys** is a list of str containing the missing keys
		        * **unexpected_keys** is a list of str containing the unexpected keys
		
		Note:
		    If a parameter or buffer is registered as ``None`` and its corresponding key
		    exists in :attr:`state_dict`, :meth:`load_state_dict` will raise a
		    ``RuntimeError``.
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
		
		    0 -> Sequential(
		      (0): Linear(in_features=2, out_features=2, bias=True)
		      (1): Linear(in_features=2, out_features=2, bias=True)
		    )
		    1 -> Linear(in_features=2, out_features=2, bias=True)
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
		
		Args:
		    memo: a memo to store the set of modules already added to the result
		    prefix: a prefix that will be added to the name of the module
		    remove_duplicate: whether to remove the duplicated module instances in the result
		    or not
		
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
		
		    0 -> ('', Sequential(
		      (0): Linear(in_features=2, out_features=2, bias=True)
		      (1): Linear(in_features=2, out_features=2, bias=True)
		    ))
		    1 -> ('0', Linear(in_features=2, out_features=2, bias=True))
	**/
	public function named_modules(?memo:Dynamic, ?prefix:Dynamic, ?remove_duplicate:Dynamic):Dynamic;
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
		    >>>     print(type(param), param.size())
		    <class 'torch.Tensor'> (20L,)
		    <class 'torch.Tensor'> (20L, 1L, 5L, 5L)
	**/
	public function parameters(?recurse:Dynamic):Dynamic;
	/**
		Registers a backward hook on the module.
		
		This function is deprecated in favor of :meth:`~torch.nn.Module.register_full_backward_hook` and
		the behavior of this function will change in future versions.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
	**/
	public function register_backward_hook(hook:Dynamic):Dynamic;
	/**
		Adds a buffer to the module.
		
		This is typically used to register a buffer that should not to be
		considered a model parameter. For example, BatchNorm's ``running_mean``
		is not a parameter, but is part of the module's state. Buffers, by
		default, are persistent and will be saved alongside parameters. This
		behavior can be changed by setting :attr:`persistent` to ``False``. The
		only difference between a persistent buffer and a non-persistent buffer
		is that the latter will not be a part of this module's
		:attr:`state_dict`.
		
		Buffers can be accessed as attributes using given names.
		
		Args:
		    name (string): name of the buffer. The buffer can be accessed
		        from this module using the given name
		    tensor (Tensor or None): buffer to be registered. If ``None``, then operations
		        that run on buffers, such as :attr:`cuda`, are ignored. If ``None``,
		        the buffer is **not** included in the module's :attr:`state_dict`.
		    persistent (bool): whether the buffer is part of this module's
		        :attr:`state_dict`.
		
		Example::
		
		    >>> self.register_buffer('running_mean', torch.zeros(num_features))
	**/
	public function register_buffer(name:Dynamic, tensor:Dynamic, ?persistent:Dynamic):Dynamic;
	/**
		Registers a forward hook on the module.
		
		The hook will be called every time after :func:`forward` has computed an output.
		It should have the following signature::
		
		    hook(module, input, output) -> None or modified output
		
		The input contains only the positional arguments given to the module.
		Keyword arguments won't be passed to the hooks and only to the ``forward``.
		The hook can modify the output. It can modify the input inplace but
		it will not have effect on forward since this is called after
		:func:`forward` is called.
		
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
		
		    hook(module, input) -> None or modified input
		
		The input contains only the positional arguments given to the module.
		Keyword arguments won't be passed to the hooks and only to the ``forward``.
		The hook can modify the input. User can either return a tuple or a
		single modified value in the hook. We will wrap the value into a tuple
		if a single value is returned(unless that value is already a tuple).
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
	**/
	public function register_forward_pre_hook(hook:Dynamic):Dynamic;
	/**
		Registers a backward hook on the module.
		
		The hook will be called every time the gradients with respect to module
		inputs are computed. The hook should have the following signature::
		
		    hook(module, grad_input, grad_output) -> tuple(Tensor) or None
		
		The :attr:`grad_input` and :attr:`grad_output` are tuples that contain the gradients
		with respect to the inputs and outputs respectively. The hook should
		not modify its arguments, but it can optionally return a new gradient with
		respect to the input that will be used in place of :attr:`grad_input` in
		subsequent computations. :attr:`grad_input` will only correspond to the inputs given
		as positional arguments and all kwarg arguments are ignored. Entries
		in :attr:`grad_input` and :attr:`grad_output` will be ``None`` for all non-Tensor
		arguments.
		
		For technical reasons, when this hook is applied to a Module, its forward function will
		receive a view of each Tensor passed to the Module. Similarly the caller will receive a view
		of each Tensor returned by the Module's forward function.
		
		.. warning ::
		    Modifying inputs or outputs inplace is not allowed when using backward hooks and
		    will raise an error.
		
		Returns:
		    :class:`torch.utils.hooks.RemovableHandle`:
		        a handle that can be used to remove the added hook by calling
		        ``handle.remove()``
	**/
	public function register_full_backward_hook(hook:Dynamic):Dynamic;
	/**
		Adds a parameter to the module.
		
		The parameter can be accessed as an attribute using given name.
		
		Args:
		    name (string): name of the parameter. The parameter can be accessed
		        from this module using the given name
		    param (Parameter or None): parameter to be added to the module. If
		        ``None``, then operations that run on parameters, such as :attr:`cuda`,
		        are ignored. If ``None``, the parameter is **not** included in the
		        module's :attr:`state_dict`.
	**/
	public function register_parameter(name:Dynamic, param:Dynamic):Dynamic;
	/**
		Change if autograd should record operations on parameters in this
		module.
		
		This method sets the parameters' :attr:`requires_grad` attributes
		in-place.
		
		This method is helpful for freezing part of the module for finetuning
		or training parts of a model individually (e.g., GAN training).
		
		See :ref:`locally-disable-grad-doc` for a comparison between
		`.requires_grad_()` and several similar mechanisms that may be confused with it.
		
		Args:
		    requires_grad (bool): whether autograd should record operations on
		                          parameters in this module. Default: ``True``.
		
		Returns:
		    Module: self
	**/
	public function requires_grad_(?requires_grad:Dynamic):Dynamic;
	/**
		This function is called from :func:`load_state_dict` to handle any extra state
		found within the `state_dict`. Implement this function and a corresponding
		:func:`get_extra_state` for your module if you need to store extra state within its
		`state_dict`.
		
		Args:
		    state (dict): Extra state from the `state_dict`
	**/
	public function set_extra_state(state:Dynamic):Dynamic;
	/**
		See :meth:`torch.Tensor.share_memory_`
	**/
	public function share_memory():Dynamic;
	/**
		Returns a dictionary containing a whole state of the module.
		
		Both parameters and persistent buffers (e.g. running averages) are
		included. Keys are corresponding parameter and buffer names.
		Parameters and buffers set to ``None`` are not included.
		
		Returns:
		    dict:
		        a dictionary containing a whole state of the module
		
		Example::
		
		    >>> module.state_dict().keys()
		    ['bias', 'weight']
	**/
	public function state_dict(?destination:Dynamic, ?prefix:Dynamic, ?keep_vars:Dynamic):Dynamic;
	/**
		Moves and/or casts the parameters and buffers.
		
		This can be called as
		
		.. function:: to(device=None, dtype=None, non_blocking=False)
		   :noindex:
		
		.. function:: to(dtype, non_blocking=False)
		   :noindex:
		
		.. function:: to(tensor, non_blocking=False)
		   :noindex:
		
		.. function:: to(memory_format=torch.channels_last)
		   :noindex:
		
		Its signature is similar to :meth:`torch.Tensor.to`, but only accepts
		floating point or complex :attr:`dtype`\ s. In addition, this method will
		only cast the floating point or complex parameters and buffers to :attr:`dtype`
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
		    dtype (:class:`torch.dtype`): the desired floating point or complex dtype of
		        the parameters and buffers in this module
		    tensor (torch.Tensor): Tensor whose dtype and device are the desired
		        dtype and device for all parameters and buffers in this module
		    memory_format (:class:`torch.memory_format`): the desired memory
		        format for 4D parameters and buffers in this module (keyword
		        only argument)
		
		Returns:
		    Module: self
		
		Examples::
		
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
		
		    >>> linear = nn.Linear(2, 2, bias=None).to(torch.cdouble)
		    >>> linear.weight
		    Parameter containing:
		    tensor([[ 0.3741+0.j,  0.2382+0.j],
		            [ 0.5593+0.j, -0.4443+0.j]], dtype=torch.complex128)
		    >>> linear(torch.ones(3, 2, dtype=torch.cdouble))
		    tensor([[0.6122+0.j, 0.1150+0.j],
		            [0.6122+0.j, 0.1150+0.j],
		            [0.6122+0.j, 0.1150+0.j]], dtype=torch.complex128)
	**/
	public function to(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Moves the parameters and buffers to the specified device without copying storage.
		
		Args:
		    device (:class:`torch.device`): The desired device of the parameters
		        and buffers in this module.
		
		Returns:
		    Module: self
	**/
	public function to_empty(device:Dynamic):Dynamic;
	/**
		Sets the module in training mode.
		
		This has any effect only on certain modules. See documentations of
		particular modules for details of their behaviors in training/evaluation
		mode, if they are affected, e.g. :class:`Dropout`, :class:`BatchNorm`,
		etc.
		
		Args:
		    mode (bool): whether to set training mode (``True``) or evaluation
		                 mode (``False``). Default: ``True``.
		
		Returns:
		    Module: self
	**/
	public function train(?mode:Dynamic):Dynamic;
	/**
		Casts all parameters and buffers to :attr:`dst_type`.
		
		.. note::
		    This method modifies the module in-place.
		
		Args:
		    dst_type (type or string): the desired type
		
		Returns:
		    Module: self
	**/
	public function type(dst_type:Dynamic):Dynamic;
	/**
		Moves all model parameters and buffers to the XPU.
		
		This also makes associated parameters and buffers different objects. So
		it should be called before constructing optimizer if the module will
		live on XPU while being optimized.
		
		.. note::
		    This method modifies the module in-place.
		
		Arguments:
		    device (int, optional): if specified, all parameters will be
		        copied to that device
		
		Returns:
		    Module: self
	**/
	public function xpu(?device:Dynamic):Dynamic;
	/**
		Sets gradients of all model parameters to zero. See similar function
		under :class:`torch.optim.Optimizer` for more context.
		
		Args:
		    set_to_none (bool): instead of setting to zero, set the grads to None.
		        See :meth:`torch.optim.Optimizer.zero_grad` for details.
	**/
	public function zero_grad(?set_to_none:Dynamic):Dynamic;
}