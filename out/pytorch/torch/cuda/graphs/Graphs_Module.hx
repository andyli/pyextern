/* This file is generated, do not edit! */
package torch.cuda.graphs;
@:pythonImport("torch.cuda.graphs") extern class Graphs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _dummy_type(name:Dynamic):Dynamic;
	/**
		Returns an opaque token representing the id of a graph memory pool.
		See :ref:`Graph memory management<graph-memory-management>`.
		
		.. warning::
		    This API is in beta and may change in future releases.
	**/
	static public function graph_pool_handle():Dynamic;
	/**
		Accepts callables (functions or :class:`nn.Module<torch.nn.Module>`\ s)
		and returns graphed versions.
		
		Each graphed callable's forward pass runs its source callable's
		forward CUDA work as a CUDA graph inside a single autograd node.
		
		The graphed callable's forward pass also appends
		a backward node to the autograd graph. During backward, this node runs the
		callable's backward work as a CUDA graph.
		
		Therefore, each graphed callable should be a drop-in replacement for its source callable
		in an autograd-enabled training loop.
		
		See :ref:`Partial-network capture<partial-network-capture>` for detailed use and constraints.
		
		If you pass a tuple of several callables, their captures will use the same memory pool.
		See :ref:`Graph memory management<graph-memory-management>` for when this is appropriate.
		
		Arguments:
		    callables (torch.nn.Module or Python function, or tuple of these): Callable or callables to graph.
		        See :ref:`Graph memory management<graph-memory-management>` for when passing a tuple of callables
		        is appropriate.  If you pass a tuple of callables, their order in the tuple must be the same order
		        they'll run in the live workload.
		    sample_args (tuple of Tensors, or tuple of tuples of Tensors): Samples args for each callable.
		        If a single callable was passed, ``sample_args`` must be a single tuple of argument Tensors.
		        If a tuple of callables was passed, ``sample_args`` must be tuple of tuples of argument Tensors.
		
		.. note::
		    The ``requires_grad`` state of each Tensor in ``sample_args`` must match the state
		    that's expected for the corresponding real input in the training loop.
		
		.. warning::
		    This API is in beta and may change in future releases.
		
		.. warning::
		    ``sample_args`` for each callable must be a tuple of Tensors. Other types and keyword args
		    are not allowed.
		
		.. warning::
		    Returned callables do not support higher order differentiation (e.g., double backward).
		
		.. warning::
		    In any :class:`~torch.nn.Module` passed to :func:`~make_graphed_callables`, only parameters
		    may be trainable. Buffers must have ``requires_grad=False``.
		
		.. warning::
		    After you pass a :class:`torch.nn.Module` through :func:`~make_graphed_callables`,
		    you may not add or remove any of that Module's parameters or buffers.
		
		.. warning::
		    :class:`torch.nn.Module`\s passed to :func:`~torch.cuda.make_graphed_callables` must not have module hooks
		    registered on them at the time they are passed. However, registering hooks on modules *after* passing them
		    through :func:`~torch.cuda.make_graphed_callables` is allowed.
		
		.. warning::
		    When running a graphed callable, you must pass its arguments in the same order and format
		    they appeared in that callable's ``sample_args``.
		
		.. warning::
		    All Tensor outputs of graphed callables must require grad.
	**/
	static public function make_graphed_callables(callables:Dynamic, sample_args:Dynamic):Dynamic;
}