/* This file is generated, do not edit! */
package theano.tensor.sharedvar;
@:pythonImport("theano.tensor.sharedvar") extern class Sharedvar_Module {
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
	static public var integer_types : Dynamic;
	/**
		This function is only here to keep some pickles loading
		after a failed fix done in August 2011.
		It can be removed after sufficient time has passed.
	**/
	static public function load_shared_variable(val:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		SharedVariable constructor for scalar values. Default: int64 or float64.
		
		Notes
		-----
		We implement this using 0-d tensors for now.
		
		We ignore the borrow parameter as we convert ``value`` to an
		ndarray (this is a new object). This respects the semantic of
		borrow, as it is a hint to Theano that we can reuse it.
	**/
	static public function scalar_constructor(value:Dynamic, ?name:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic, ?borrow:Dynamic, ?target:Dynamic):Dynamic;
	static public function shared_constructor(ctor:Dynamic, ?remove:Dynamic):Dynamic;
	/**
		SharedVariable Constructor for TensorType.
		
		Notes
		-----
		Regarding the inference of the broadcastable pattern...
		The default is to assume that the value might be resized in any
		dimension, so the default broadcastable is ``(False,)*len(value.shape)``.
		The optional `broadcastable` argument will override this default.
	**/
	static public function tensor_constructor(value:Dynamic, ?name:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic, ?borrow:Dynamic, ?broadcastable:Dynamic, ?target:Dynamic):Dynamic;
}