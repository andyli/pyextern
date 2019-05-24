/* This file is generated, do not edit! */
package torch.utils.checkpoint;
@:pythonImport("torch.utils.checkpoint") extern class Checkpoint_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function check_backward_validity(inputs:Dynamic):Dynamic;
	/**
		Checkpoint a model or part of the model
		
		Checkpointing works by trading compute for memory. Rather than storing all
		intermediate activations of the entire computation graph for computing
		backward, the checkpointed part does **not** save intermediate activations,
		and instead recomputes them in backward pass. It can be applied on any part
		of a model.
		
		Specifically, in the forward pass, :attr:`function` will run in
		:func:`torch.no_grad` manner, i.e., not storing the intermediate
		activations. Instead, the forward pass saves the inputs tuple and the
		:attr:`function` parameter. In the backwards pass, the saved inputs and
		:attr:`function` is retreived, and the forward pass is computed on
		:attr:`function` again, now tracking the intermediate activations, and then
		the gradients are calculated using these activation values.
		
		.. warning::
		    Checkpointing doesn't work with :func:`torch.autograd.grad`, but only
		    with :func:`torch.autograd.backward`.
		
		.. warning::
		    If :attr:`function` invocation during backward does anything different
		    than the one during forward, e.g., due to some global variable, the
		    checkpointed version won't be equivalent, and unfortunately it can't be
		    detected.
		
		.. warning:
		    At least one of the inputs needs to have :code:`requires_grad=True` if
		    grads are needed for model inputs, otherwise the checkpointed part of the
		    model won't have gradients.
		
		Args:
		    function: describes what to run in the forward pass of the model or
		        part of the model. It should also know how to handle the inputs
		        passed as the tuple. For example, in LSTM, if user passes
		        ``(activation, hidden)``, :attr:`function` should correctly use the
		        first input as ``activation`` and the second input as ``hidden``
		    args: tuple containing inputs to the :attr:`function`
		
		Returns:
		    Output of running :attr:`function` on :attr:`*args`
	**/
	static public function checkpoint(_function:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		A helper function for checkpointing sequential models.
		
		Sequential models execute a list of modules/functions in order
		(sequentially). Therefore, we can divide such a model in various segments
		and checkpoint each segment. All segments except the last will run in
		:func:`torch.no_grad` manner, i.e., not storing the intermediate
		activations. The inputs of each checkpointed segment will be saved for
		re-running the segment in the backward pass.
		
		See :func:`~torch.utils.checkpoint.checkpoint` on how checkpointing works.
		
		.. warning::
		    Checkpointing doesn't work with :func:`torch.autograd.grad`, but only
		    with :func:`torch.autograd.backward`.
		
		.. warning:
		    At least one of the inputs needs to have :code:`requires_grad=True` if
		    grads are needed for model inputs, otherwise the checkpointed part of the
		    model won't have gradients.
		
		Args:
		    functions: A :class:`torch.nn.Sequential` or the list of modules or
		        functions (comprising the model) to run sequentially.
		    segments: Number of chunks to create in the model
		    inputs: tuple of Tensors that are inputs to :attr:`functions`
		
		Returns:
		    Output of running :attr:`functions` sequentially on :attr:`*inputs`
		
		Example:
		    >>> model = nn.Sequential(...)
		    >>> input_var = checkpoint_sequential(model, chunks, input_var)
	**/
	static public function checkpoint_sequential(functions:Dynamic, segments:Dynamic, ?inputs:python.VarArgs<Dynamic>):Dynamic;
	static public function detach_variable(inputs:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var preserve_rng_state : Dynamic;
	static public var print_function : Dynamic;
	static public var unicode_literals : Dynamic;
}