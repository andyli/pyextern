/* This file is generated, do not edit! */
package tensorflow.python.distribute.tpu_util;
@:pythonImport("tensorflow.python.distribute.tpu_util") extern class Tpu_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the TPUReplicateContext, which exists inside a tpu.rewrite().
	**/
	static public function enclosing_tpu_context():Dynamic;
	/**
		Returns the TPUReplicateContext which exists inside a tpu.rewrite(), and its associated graph.
	**/
	static public function enclosing_tpu_context_and_graph():Dynamic;
	/**
		Returns a context manager that skips current enclosing context if there is any.
	**/
	static public function outside_or_skip_tpu_context():Dynamic;
}