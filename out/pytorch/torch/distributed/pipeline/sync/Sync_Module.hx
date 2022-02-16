/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync;
@:pythonImport("torch.distributed.pipeline.sync") extern class Sync_Module {
	static public var __all__ : Dynamic;
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
		Whether the current forward propagation is under checkpointing.
		
		Returns:
		    bool: :data:`True` if it's under checkpointing.
	**/
	static public function is_checkpointing():Dynamic;
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