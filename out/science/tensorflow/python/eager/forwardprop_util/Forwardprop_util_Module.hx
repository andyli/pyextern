/* This file is generated, do not edit! */
package tensorflow.python.eager.forwardprop_util;
@:pythonImport("tensorflow.python.eager.forwardprop_util") extern class Forwardprop_util_Module {
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
		Packs forward accumulator state into a TangentInfo tuple.
		
		Args:
		  tensors: A flat list of Tensors to pack forward accumulator state for.
		
		Returns:
		  A tuple of (indices, tangents):
		    indices: A sequence of sequences of two-element tuples. Each forward
		      accumulator is represented as a sequence of tuples with (primal_index,
		      jvp_index). Both integers index into the concatenated `tensors + jvps`
		      array.
		    tangents: A flat list of Tensors. Best interpreted as a sequence to be
		      appended to `tensors`.
	**/
	static public function pack_tangents(tensors:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Temporarily push or pop transient state for accumulators in the active set.
		
		Allows an accumulator which is currently processing an operation to
		temporarily reset its state. This is useful when building forwardprop versions
		of functions, where an accumulator will trigger function building and then
		must process captured symbolic tensors while building it. Without pushing and
		popping, accumulators ignore operations executed as a direct result of their
		own jvp computations.
		
		Yields:
		  None (used for its side effect).
	**/
	static public function push_forwardprop_state():Dynamic;
}