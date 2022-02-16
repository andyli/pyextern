/* This file is generated, do not edit! */
package tensorflow.compat.v2.compat.v2.keras.regularizers;
@:pythonImport("tensorflow.compat.v2.compat.v2.keras.regularizers") extern class Regularizers_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Retrieve a regularizer instance from a config or identifier.
	**/
	static public function get(identifier:Dynamic):Dynamic;
	/**
		Create a regularizer that applies both L1 and L2 penalties.
		
		The L1 regularization penalty is computed as:
		`loss = l1 * reduce_sum(abs(x))`
		
		The L2 regularization penalty is computed as:
		`loss = l2 * reduce_sum(square(x))`
		
		Args:
		    l1: Float; L1 regularization factor.
		    l2: Float; L2 regularization factor.
		
		Returns:
		  An L1L2 Regularizer with the given regularization factors.
	**/
	static public function l1_l2(?l1:Dynamic, ?l2:Dynamic):Dynamic;
	static public function serialize(regularizer:Dynamic):Dynamic;
}