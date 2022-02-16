/* This file is generated, do not edit! */
package torch.nn;
@:pythonImport("torch.nn") extern class Nn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given kwargs, returns a canonicalized dict of factory kwargs that can be directly passed
		to factory functions like torch.empty, or errors if unrecognized kwargs are present.
		
		This function makes it simple to write code like this::
		
		    class MyModule(nn.Module):
		        def __init__(self, **kwargs):
		            factory_kwargs = torch.nn.factory_kwargs(kwargs)
		            self.weight = Parameter(torch.empty(10, **factory_kwargs))
		
		Why should you use this function instead of just passing `kwargs` along directly?
		
		1. This function does error validation, so if there are unexpected kwargs we will
		immediately report an error, instead of deferring it to the factory call
		2. This function supports a special `factory_kwargs` argument, which can be used to
		explicitly specify a kwarg to be used for factory functions, in the event one of the
		factory kwargs conflicts with an already existing argument in the signature (e.g.
		in the signature ``def f(dtype, **kwargs)``, you can specify ``dtype`` for factory
		functions, as distinct from the dtype argument, by saying
		``f(dtype1, factory_kwargs={"dtype": dtype2})``)
	**/
	static public function factory_kwargs(kwargs:Dynamic):Dynamic;
}