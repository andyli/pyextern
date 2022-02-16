/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.batchnorm;
@:pythonImport("torch.distributed.pipeline.sync.batchnorm") extern class Batchnorm_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var TModule : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Applies Batch Normalization for each channel across a batch of data.
		
		See :class:`~torch.nn.BatchNorm1d`, :class:`~torch.nn.BatchNorm2d`,
		:class:`~torch.nn.BatchNorm3d` for details.
	**/
	static public function batch_norm(input:Dynamic, running_mean:Dynamic, running_var:Dynamic, ?weight:Dynamic, ?bias:Dynamic, ?training:Dynamic, ?momentum:Dynamic, ?eps:Dynamic):Dynamic;
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
		Whether the current forward propagation is under checkpoint
		recomputation. Use this to prevent duplicated side-effects at forward
		propagation::
		
		    class Counter(nn.Module):
		        def __init__(self):
		            super().__init__()
		            self.counter = 0
		
		        def forward(self, input):
		            if not is_recomputing():
		                self.counter += 1
		            return input
		
		Returns:
		    bool: :data:`True` if it's under checkpoint recomputation.
		
		.. seealso:: :ref:`Detecting Recomputation`
	**/
	static public function is_recomputing():Dynamic;
}