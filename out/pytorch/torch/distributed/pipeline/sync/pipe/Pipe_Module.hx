/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.pipe;
@:pythonImport("torch.distributed.pipeline.sync.pipe") extern class Pipe_Module {
	static public function AbstractStream(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Device(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Devices(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MOVING_DENIED : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public function TensorOrTensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Tensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _assemble_partition(modules:Dynamic):Dynamic;
	/**
		Expands a message with recommendation to :mod:`torchpipe.balance`.
	**/
	static public function _recommend_auto_balance(message:Dynamic):Dynamic;
	/**
		Validates all parameters in the Module have the same device and returns
		the appropriate device.
		
		Args:
		    An ``nn.Module`` to process.
		
		Returns:
		    ``torch.Device`` for the entire module.
		
		Raises:
		    ValueError:
		        If devices for ``nn.Module`` parameters are not all same.
	**/
	static public function _retrieve_device(module:Dynamic):Dynamic;
	static public function _split_module(modules:Dynamic):Dynamic;
	static public function _verify_module(module:Dynamic):Dynamic;
	static public function _verify_splitting(module:Dynamic, partitions:Dynamic, devices:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Inspects the skip connection layout in the given partitions.
	**/
	static public function inspect_skip_layout(partitions:Dynamic):Dynamic;
	/**
		Creates a new stream for either CPU or CUDA device.
	**/
	static public function new_stream(device:Dynamic):Dynamic;
	/**
		Verifies if the underlying skippable modules satisfy integrity.
		
		Every skip tensor must have only one pair of `stash` and `pop`. If there
		are one or more unmatched pairs, it will raise :exc:`TypeError` with the
		detailed messages.
		
		Here are a few failure cases. :func:`verify_skippables` will report failure
		for these cases::
		
		    # Layer1 stashes "1to3".
		    # Layer3 pops "1to3".
		
		    nn.Sequential(Layer1(), Layer2())
		    #               └──── ?
		
		    nn.Sequential(Layer2(), Layer3())
		    #                   ? ────┘
		
		    nn.Sequential(Layer1(), Layer2(), Layer3(), Layer3())
		    #               └───────────────────┘       ^^^^^^
		
		    nn.Sequential(Layer1(), Layer1(), Layer2(), Layer3())
		    #             ^^^^^^      └───────────────────┘
		
		To use the same name for multiple skip tensors, they must be isolated by
		different namespaces. See :meth:`isolate()
		<torchpipe.skip.skippable.Skippable.isolate>`.
		
		Raises:
		    TypeError:
		        one or more pairs of `stash` and `pop` are not matched.
	**/
	static public function verify_skippables(module:Dynamic):Dynamic;
}