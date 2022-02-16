/* This file is generated, do not edit! */
package torch.nn.utils.init;
@:pythonImport("torch.nn.utils.init") extern class Init_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given a module class object and args / kwargs, instantiates the module without initializing
		parameters / buffers.  This can be useful if initialization is slow or if custom initialization will
		be performed, making the default initialization unnecessary. There are some caveats to this, due to
		the way this function is implemented:
		
		1. The module must accept a `device` arg in its constructor that is passed to any parameters
		or buffers created during construction.
		
		2. The module must not perform any computation on parameters in its constructor except
		initialization (i.e. functions from :mod:`torch.nn.init`).
		
		If these conditions are satisfied, the module can be instantiated with parameter / buffer values
		uninitialized, as if having been created using :func:`torch.empty`.
		
		Args:
		    module_cls: Class object; should be a subclass of :class:`torch.nn.Module`
		    args: args to pass to the module's constructor
		    kwargs: kwargs to pass to the module's constructor
		
		Returns:
		    Instantiated module with uninitialized parameters / buffers
		
		Example::
		
		    >>> import torch
		    >>> m = torch.nn.utils.skip_init(torch.nn.Linear, 5, 1)
		    >>> m.weight
		    Parameter containing:
		    tensor([[0.0000e+00, 1.5846e+29, 7.8307e+00, 2.5250e-29, 1.1210e-44]],
		           requires_grad=True)
		    >>> m2 = torch.nn.utils.skip_init(torch.nn.Linear, in_features=6, out_features=1)
		    >>> m2.weight
		    Parameter containing:
		    tensor([[-1.4677e+24,  4.5915e-41,  1.4013e-45,  0.0000e+00, -1.4677e+24,
		              4.5915e-41]], requires_grad=True)
	**/
	static public function skip_init(module_cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}