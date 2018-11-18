/* This file is generated, do not edit! */
package tensorflow.python.eager.imperative_grad;
@:pythonImport("tensorflow.python.eager.imperative_grad") extern class Imperative_grad_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Computes gradients from the imperatively defined tape on top of the stack.
		
		Works by filtering the tape, computing how many downstream usages are of each
		tensor and entry, and repeatedly applying backward functions until we have
		gradients for all sources.
		
		Args:
		 tape: the gradient tape which stores the trace.
		 target: either a Tensor or list of Tensors to be differentiated.
		 sources: list of Tensors for which we want gradients
		 output_gradients: if not None, a list of gradient provided for each Target,
		  or None if we are to use the target's computed downstream gradient.
		
		Returns:
		 the gradient wrt each of the sources.
		
		Raises:
		  RuntimeError: if something goes wrong.
		  ValueError: if there is no sequence of differentiable operations connecting
		   a source and any target Tensor. This can happen either if the target is
		   not computed based on the source, if the tracing was set up incorrectly,
		   or if only non-differentiable functions of the source were used in the
		   computation of target.
	**/
	static public function imperative_grad(tape:Dynamic, target:Dynamic, sources:Dynamic, ?output_gradients:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}