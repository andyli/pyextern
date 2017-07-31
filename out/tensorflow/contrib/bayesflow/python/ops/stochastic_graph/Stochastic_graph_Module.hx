/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.stochastic_graph;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.stochastic_graph") extern class Stochastic_graph_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Surrogate loss for stochastic graphs.
		
		This function will call `loss_fn` on each `StochasticTensor`
		upstream of `sample_losses`, passing the losses that it influenced.
		
		Note that currently `surrogate_loss` does not work with `StochasticTensor`s
		instantiated in `while_loop`s or other control structures.
		
		Args:
		  sample_losses: a list or tuple of final losses. Each loss should be per
		    example in the batch (and possibly per sample); that is, it should have
		    dimensionality of 1 or greater. All losses should have the same shape.
		  stochastic_tensors: a list of `StochasticTensor`s to add loss terms for.
		    If None, defaults to all `StochasticTensor`s in the graph upstream of
		    the `Tensor`s in `sample_losses`.
		  name: the name with which to prepend created ops.
		
		Returns:
		  `Tensor` loss, which is the sum of `sample_losses` and the
		  `loss_fn`s returned by the `StochasticTensor`s.
		
		Raises:
		  TypeError: if `sample_losses` is not a list or tuple, or if its elements
		    are not `Tensor`s.
		  ValueError: if any loss in `sample_losses` does not have dimensionality 1
		    or greater.
	**/
	static public function surrogate_loss(sample_losses:Dynamic, ?stochastic_tensors:Dynamic, ?name:Dynamic):Dynamic;
}