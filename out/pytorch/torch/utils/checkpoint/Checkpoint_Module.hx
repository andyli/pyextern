/* This file is generated, do not edit! */
package torch.utils.checkpoint;
@:pythonImport("torch.utils.checkpoint") extern class Checkpoint_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		:attr:`function` is retrieved, and the forward pass is computed on
		:attr:`function` again, now tracking the intermediate activations, and then
		the gradients are calculated using these activation values.
		
		The output of :attr:`function` can contain non-Tensor values and gradient
		recording is only performed for the Tensor values. Note that if the output
		consists of nested structures (ex: custom objects, lists, dicts etc.)
		consisting of Tensors, these Tensors nested in custom structures will not
		be considered as part of autograd.
		
		.. warning::
		    Checkpointing currently only supports :func:`torch.autograd.backward`
		    and only if its `inputs` argument is not passed. :func:`torch.autograd.grad`
		    is not supported.
		
		.. warning::
		    If :attr:`function` invocation during backward does anything different
		    than the one during forward, e.g., due to some global variable, the
		    checkpointed version won't be equivalent, and unfortunately it can't be
		    detected.
		
		.. warning::
		    If checkpointed segment contains tensors detached from the computational
		    graph by `detach()` or `torch.no_grad()`, the backward pass will raise an
		    error. This is because `checkpoint` makes all the outputs require
		    gradients which causes issues when a tensor is defined to have no
		    gradient in the model. To circumvent this, detach the tensors outside of
		    the `checkpoint` function.
		
		.. warning::
		    At least one of the inputs needs to have :code:`requires_grad=True` if
		    grads are needed for model inputs, otherwise the checkpointed part of the
		    model won't have gradients. At least one of the outputs needs to have
		    :code:`requires_grad=True` as well.
		
		Args:
		    function: describes what to run in the forward pass of the model or
		        part of the model. It should also know how to handle the inputs
		        passed as the tuple. For example, in LSTM, if user passes
		        ``(activation, hidden)``, :attr:`function` should correctly use the
		        first input as ``activation`` and the second input as ``hidden``
		    preserve_rng_state(bool, optional, default=True):  Omit stashing and restoring
		        the RNG state during each checkpoint.
		    args: tuple containing inputs to the :attr:`function`
		
		Returns:
		    Output of running :attr:`function` on :attr:`*args`
	**/
	static public function checkpoint(_function:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    Checkpointing currently only supports :func:`torch.autograd.backward`
		    and only if its `inputs` argument is not passed. :func:`torch.autograd.grad`
		    is not supported.
		
		.. warning:
		    At least one of the inputs needs to have :code:`requires_grad=True` if
		    grads are needed for model inputs, otherwise the checkpointed part of the
		    model won't have gradients.
		
		.. warning:
		    Since PyTorch 1.4, it allows only one Tensor as the input and
		    intermediate outputs, just like :class:`torch.nn.Sequential`.
		
		Args:
		    functions: A :class:`torch.nn.Sequential` or the list of modules or
		        functions (comprising the model) to run sequentially.
		    segments: Number of chunks to create in the model
		    input: A Tensor that is input to :attr:`functions`
		    preserve_rng_state(bool, optional, default=True):  Omit stashing and restoring
		        the RNG state during each checkpoint.
		
		Returns:
		    Output of running :attr:`functions` sequentially on :attr:`*inputs`
		
		Example:
		    >>> model = nn.Sequential(...)
		    >>> input_var = checkpoint_sequential(model, chunks, input_var)
	**/
	static public function checkpoint_sequential(functions:Dynamic, segments:Dynamic, input:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function detach_variable(inputs:Dynamic):Dynamic;
	static public function get_device_states(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function set_device_states(devices:Dynamic, states:Dynamic):Dynamic;
}