/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.skip.portal;
@:pythonImport("torch.distributed.pipeline.sync.skip.portal") extern class Portal_Module {
	static public function AbstractStream(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gets the device from CPU or CUDA stream.
	**/
	static public function get_device(stream:Dynamic):Dynamic;
	/**
		Gets a phony. Phony is tensor without space. It is useful to make
		arbitrary dependency in a autograd graph because it doesn't require any
		gradient accumulation.
		
		.. note::
		
		    Phonies for each device are cached. If an autograd function gets a phony
		    internally, the phony must be detached to be returned. Otherwise, the
		    autograd engine will mutate the cached phony in-place::
		
		        class Phonify(torch.autograd.Function):
		            @staticmethod
		            def forward(ctx, input):
		                phony = get_phony(input.device, requires_grad=False)
		                return phony.detach()  # detach() is necessary.
	**/
	static public function get_phony(device:Dynamic, requires_grad:Dynamic):Dynamic;
}