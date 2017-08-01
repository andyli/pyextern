/* This file is generated, do not edit! */
package torch.nn.parallel.data_parallel;
@:pythonImport("torch.nn.parallel.data_parallel", "DataParallel") extern class DataParallel {
	/**
		Call self as a function.
	**/
	public function __call__(?input:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(module:Dynamic, ?device_ids:Dynamic, ?output_device:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(module:Dynamic, ?device_ids:Dynamic, ?output_device:Dynamic, ?dim:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _apply(fn:Dynamic):Dynamic;
	/**
		Adds a child module to the current module.
		
		The module can be accessed as an attribute using the given name.
	**/
	public function add_module(name:Dynamic, module:Dynamic):Dynamic;
	public function apply(fn:Dynamic):Dynamic;
	/**
		Returns an iterator over immediate children modules.
	**/
	public function children():Dynamic;
	/**
		Moves all model parameters and buffers to the CPU.
	**/
	public function cpu(?device_id:Dynamic):Dynamic;
	/**
		Moves all model parameters and buffers to the GPU.
		
		Arguments:
		    device_id (int, optional): if specified, all parameters will be
		        copied to that device
	**/
	public function cuda(?device_id:Dynamic):Dynamic;
	/**
		Casts all parameters and buffers to double datatype.
	**/
	public function double():Dynamic;
	static public var dump_patches : Dynamic;
	/**
		Sets the module in evaluation mode.
		
		This has any effect only on modules such as Dropout or BatchNorm.
	**/
	public function eval():Dynamic;
	/**
		Casts all parameters and buffers to float datatype.
	**/
	public function float():Dynamic;
	/**
		Defines the computation performed at every call.
		
		Should be overriden by all subclasses.
	**/
	public function forward(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function gather(outputs:Dynamic, output_device:Dynamic):Dynamic;
	/**
		Casts all parameters and buffers to half datatype.
	**/
	public function half():Dynamic;
	/**
		Copies parameters and buffers from :attr:`state_dict` into
		this module and its descendants. The keys of :attr:`state_dict` must
		exactly match the keys returned by this module's :func:`state_dict()`
		function.
		
		Arguments:
		    state_dict (dict): A dict containing parameters and
		        persistent buffers.
	**/
	public function load_state_dict(state_dict:Dynamic):Dynamic;
	/**
		Returns an iterator over all modules in the network.
		
		Note:
		    Duplicate modules are returned only once. In the following
		    example, ``l`` will be returned only once.
		
		    >>> l = nn.Linear(2, 2)
		    >>> net = nn.Sequential(l, l)
		    >>> for idx, m in enumerate(net.modules()):
		    >>>     print(idx, '->', m)
		    0 -> Sequential (
		      (0): Linear (2 -> 2)
		      (1): Linear (2 -> 2)
		    )
		    1 -> Linear (2 -> 2)
	**/
	public function modules():Dynamic;
	/**
		Returns an iterator over immediate children modules, yielding both
		the name of the module as well as the module itself.
		
		Example:
		    >>> for name, module in model.named_children():
		    >>>     if name in ['conv4', 'conv5']:
		    >>>         print(module)
	**/
	public function named_children():Dynamic;
	/**
		Returns an iterator over all modules in the network, yielding
		both the name of the module as well as the module itself.
		
		Note:
		    Duplicate modules are returned only once. In the following
		    example, ``l`` will be returned only once.
		
		    >>> l = nn.Linear(2, 2)
		    >>> net = nn.Sequential(l, l)
		    >>> for idx, m in enumerate(net.named_modules()):
		    >>>     print(idx, '->', m)
		    0 -> ('', Sequential (
		      (0): Linear (2 -> 2)
		      (1): Linear (2 -> 2)
		    ))
		    1 -> ('0', Linear (2 -> 2))
	**/
	public function named_modules(?memo:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Returns an iterator over module parameters, yielding both the
		name of the parameter as well as the parameter itself
		
		Example:
		    >>> for name, param in self.named_parameters():
		    >>>    if name in ['bias']:
		    >>>        print(param.size())
	**/
	public function named_parameters(?memo:Dynamic, ?prefix:Dynamic):Dynamic;
	public function parallel_apply(replicas:Dynamic, inputs:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Returns an iterator over module parameters.
		
		This is typically passed to an optimizer.
		
		Example:
		    >>> for param in model.parameters():
		    >>>     print(type(param.data), param.size())
		    <class 'torch.FloatTensor'> (20L,)
		    <class 'torch.FloatTensor'> (20L, 1L, 5L, 5L)
	**/
	public function parameters(?memo:Dynamic):Dynamic;
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
		
		This function returns a handle with a method ``handle.remove()``
		that removes the hook from the module.
	**/
	public function register_backward_hook(hook:Dynamic):Dynamic;
	/**
		Adds a persistent buffer to the module.
		
		This is typically used to register a buffer that should not to be
		considered a model parameter. For example, BatchNorm's ``running_mean``
		is not a parameter, but is part of the persistent state.
		
		Buffers can be accessed as attributes using given names.
		
		Example:
		    >>> self.register_buffer('running_mean', torch.zeros(num_features))
	**/
	public function register_buffer(name:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Registers a forward hook on the module.
		
		The hook will be called every time :func:`forward` computes an output.
		It should have the following signature::
		
		    hook(module, input, output) -> None
		
		The hook should not modify the input or output.
		This function returns a handle with a method ``handle.remove()``
		that removes the hook from the module.
	**/
	public function register_forward_hook(hook:Dynamic):Dynamic;
	/**
		Adds a parameter to the module.
		
		The parameter can be accessed as an attribute using given name.
	**/
	public function register_parameter(name:Dynamic, param:Dynamic):Dynamic;
	public function replicate(module:Dynamic, device_ids:Dynamic):Dynamic;
	public function scatter(inputs:Dynamic, kwargs:Dynamic, device_ids:Dynamic):Dynamic;
	public function share_memory():Dynamic;
	/**
		Returns a dictionary containing a whole state of the module.
		
		Both parameters and persistent buffers (e.g. running averages) are
		included. Keys are corresponding parameter and buffer names.
		
		Example:
		    >>> module.state_dict().keys()
		    ['bias', 'weight']
	**/
	public function state_dict(?destination:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Sets the module in training mode.
		
		This has any effect only on modules such as Dropout or BatchNorm.
	**/
	public function train(?mode:Dynamic):Dynamic;
	public function type(dst_type:Dynamic):Dynamic;
	/**
		Sets gradients of all model parameters to zero.
	**/
	public function zero_grad():Dynamic;
}