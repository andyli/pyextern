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
		 unconnected_gradients: determines the value returned if the target and
		  sources are unconnected. When 'none' the value returned is None wheras when
		  'zero' a zero tensor in the same shape as the sources is returned.
		
		Returns:
		 the gradient wrt each of the sources.
		
		Raises:
		  ValueError: if the arguments are invalid.
		  RuntimeError: if something goes wrong.
	**/
	static public function imperative_grad(tape:Dynamic, target:Dynamic, sources:Dynamic, ?output_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}