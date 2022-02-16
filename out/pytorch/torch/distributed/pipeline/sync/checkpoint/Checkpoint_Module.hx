/* This file is generated, do not edit! */
package torch.distributed.pipeline.sync.checkpoint;
@:pythonImport("torch.distributed.pipeline.sync.checkpoint") extern class Checkpoint_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Deque(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Generator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function RNGStates(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Recomputed(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Makes a checkpoint with a simple interface like
		:func:`torch.utils.checkpoint.checkpoint`. It's only used to test or debug
		:class:`Checkpoint` and :class:`Recompute` without boilerplate.
	**/
	static public function checkpoint(_function:Dynamic, input:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Makes :func:`is_checkpointing` return :data:`True` within a context.
	**/
	static public function enable_checkpointing():Dynamic;
	/**
		Makes :func:`is_recomputing` return :data:`True` within a context.
	**/
	static public function enable_recomputing():Dynamic;
	/**
		Branches out from an autograd lane of the given tensor.
	**/
	static public function fork(input:Dynamic):Dynamic;
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
	/**
		Merges two autograd lanes.
	**/
	static public function join(input:Dynamic, phony:Dynamic):Dynamic;
	/**
		:meth:`Recompute.backward` restores the random number generator states
		captured by :func:`save_rng_states` within its context.
		
		.. seealso:: :ref:`Referential Transparency`
	**/
	static public function restore_rng_states(device:Dynamic, rng_states:Dynamic):Dynamic;
	/**
		:meth:`Checkpoint.forward` captures the current PyTorch's random number
		generator states at CPU and GPU to reuse in :meth:`Recompute.backward`.
		
		.. seealso:: :ref:`Referential Transparency`
	**/
	static public function save_rng_states(device:Dynamic, rng_states:Dynamic):Dynamic;
	static public var thread_local : Dynamic;
}