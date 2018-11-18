/* This file is generated, do not edit! */
package torch.distributions.bernoulli;
@:pythonImport("torch.distributions.bernoulli") extern class Bernoulli_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Function that measures Binary Cross Entropy between target and output
		logits.
		
		See :class:`~torch.nn.BCEWithLogitsLoss` for details.
		
		Args:
		    input: Tensor of arbitrary shape
		    target: Tensor of the same shape as input
		    weight (Tensor, optional): a manual rescaling weight
		        if provided it's repeated to match input tensor shape
		    size_average (bool, optional): Deprecated (see :attr:`reduction`). By default,
		        the losses are averaged over each loss element in the batch. Note that for
		        some losses, there multiple elements per sample. If the field :attr:`size_average`
		        is set to ``False``, the losses are instead summed for each minibatch. Ignored
		        when reduce is ``False``. Default: ``True``
		    reduce (bool, optional): Deprecated (see :attr:`reduction`). By default, the
		        losses are averaged or summed over observations for each minibatch depending
		        on :attr:`size_average`. When :attr:`reduce` is ``False``, returns a loss per
		        batch element instead and ignores :attr:`size_average`. Default: ``True``
		    reduction (string, optional): Specifies the reduction to apply to the output:
		        'none' | 'elementwise_mean' | 'sum'. 'none': no reduction will be applied,
		        'elementwise_mean': the sum of the output will be divided by the number of
		        elements in the output, 'sum': the output will be summed. Note: :attr:`size_average`
		        and :attr:`reduce` are in the process of being deprecated, and in the meantime,
		        specifying either of those two args will override :attr:`reduction`. Default: 'elementwise_mean'
		    pos_weight (Tensor, optional): a weight of positive examples.
		            Must be a vector with length equal to the number of classes.
		
		Examples::
		
		     >>> input = torch.randn(3, requires_grad=True)
		     >>> target = torch.empty(3).random_(2)
		     >>> loss = F.binary_cross_entropy_with_logits(input, target)
		     >>> loss.backward()
	**/
	static public function binary_cross_entropy_with_logits(input:Dynamic, target:Dynamic, ?weight:Dynamic, ?size_average:Dynamic, ?reduce:Dynamic, ?reduction:Dynamic, ?pos_weight:Dynamic):Dynamic;
	/**
		Given a list of values (possibly containing numbers), returns a list where each
		value is broadcasted based on the following rules:
		  - `torch.*Tensor` instances are broadcasted as per the `broadcasting rules
		    <http://pytorch.org/docs/master/notes/broadcasting.html>`_
		  - numbers.Number instances (scalars) are upcast to tensors having
		    the same size and type as the first tensor passed to `values`.  If all the
		    values are scalars, then they are upcasted to Tensors having size
		    `(1,)`.
		
		Args:
		    values (list of `numbers.Number` or `torch.*Tensor`)
		
		Raises:
		    ValueError: if any of the values is not a `numbers.Number` or
		        `torch.*Tensor` instance
	**/
	static public function broadcast_all(?values:python.VarArgs<Dynamic>):Dynamic;
	/**
		Converts a tensor of logits into probabilities. Note that for the
		binary case, each value denotes log odds, whereas for the
		multi-dimensional case, the values along the last dimension denote
		the log probabilities (possibly unnormalized) of the events.
	**/
	static public function logits_to_probs(logits:Dynamic, ?is_binary:Dynamic):Dynamic;
	/**
		Converts a tensor of probabilities into logits. For the binary case,
		this denotes the probability of occurrence of the event indexed by `1`.
		For the multi-dimensional case, the values along the last dimension
		denote the probabilities of occurrence of each of the events.
	**/
	static public function probs_to_logits(probs:Dynamic, ?is_binary:Dynamic):Dynamic;
}