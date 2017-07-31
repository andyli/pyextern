/* This file is generated, do not edit! */
package tensorflow.contrib.imperative.imperative_graph;
@:pythonImport("tensorflow.contrib.imperative.imperative_graph") extern class Imperative_graph_Module {
	static public var _PASS_THROUGH_OPS : Dynamic;
	static public var _REF_OPS_WHITELIST : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Sets the `session` property on the typename for the duration of a context.
		
		This allows us to convert a `tf.Tensor` to numpy array by calling run()
		using the `.session` property.
		
		Args:
		  typename: The class to which value attribute should be added.
		  session: Session to be stored.
		
		Yields:
		  None.
	**/
	static public function add_session_attr(typename:Dynamic, session:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}