/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.hybrid.python.ops.training_ops;
@:pythonImport("tensorflow.contrib.tensor_forest.hybrid.python.ops.training_ops") extern class Training_ops_Module {
	/**
		Load training ops library and return the loaded module.
	**/
	static public function Load():Dynamic;
	static public var TRAINING_OPS_FILE : Dynamic;
	/**
		The gradient of RoutingFunction.
		
		Args:
		  op: The RoutingFunction op.
		  grad: Gradient with respect to the output of the RoutingFunction op.
		
		Returns:
		  Gradients with respect to the input of the RoutingFunction op.
	**/
	static public function _KFeatureRoutingFunctionGradient(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The gradient of RoutingFunction.
		
		Args:
		  op: The RoutingFunction op.
		  grad: Gradient with respect to the output of the RoutingFunction op.
		
		Returns:
		  Gradients with respect to the input of the RoutingFunction op.
	**/
	static public function _RoutingFunctionGradient(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The gradient of RoutingFunction.
		
		Args:
		  op: The RoutingFunction op.
		  routing_grad: Gradient with respect to the output of the RoutingFunction op.
		
		Returns:
		  Gradients with respect to the input of the RoutingFunction op.
	**/
	static public function _StochasticHardRoutingFunctionGradient(op:Dynamic, routing_grad:Dynamic, unused_path_grad:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _ops_lock : Dynamic;
	static public var _training_ops : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}