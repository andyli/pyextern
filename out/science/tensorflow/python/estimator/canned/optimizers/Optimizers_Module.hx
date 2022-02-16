/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.optimizers;
@:pythonImport("tensorflow.python.estimator.canned.optimizers") extern class Optimizers_Module {
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var _LEARNING_RATE : Dynamic;
	static public var _OPTIMIZER_CLS_NAMES : Dynamic;
	static public var _OPTIMIZER_CLS_NAMES_V2 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _optimizer_has_default_learning_rate(opt:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns an optimizer instance.
		
		Supports the following types for the given `opt`:
		* An `Optimizer` instance: Returns the given `opt`.
		* A string: Creates an `Optimizer` subclass with the given `learning_rate`.
		  Supported strings:
		  * 'Adagrad': Returns an `AdagradOptimizer`.
		  * 'Adam': Returns an `AdamOptimizer`.
		  * 'Ftrl': Returns an `FtrlOptimizer`.
		  * 'RMSProp': Returns an `RMSPropOptimizer`.
		  * 'SGD': Returns a `GradientDescentOptimizer`.
		
		Args:
		  opt: An `Optimizer` instance, or string, as discussed above.
		  learning_rate: A float. Only used if `opt` is a string.
		
		Returns:
		  An `Optimizer` instance.
		
		Raises:
		  ValueError: If `opt` is an unsupported string.
		  ValueError: If `opt` is a supported string but `learning_rate` was not
		    specified.
		  ValueError: If `opt` is none of the above types.
	**/
	static public function get_optimizer_instance(opt:Dynamic, ?learning_rate:Dynamic):Dynamic;
	/**
		Returns an optimizer_v2.OptimizerV2 instance.
		
		Supports the following types for the given `opt`:
		* An `optimizer_v2.OptimizerV2` instance: Returns the given `opt`.
		* A string: Creates an `optimizer_v2.OptimizerV2` subclass with the given
		`learning_rate`.
		  Supported strings:
		  * 'Adagrad': Returns an tf.keras.optimizers.Adagrad.
		  * 'Adam': Returns an tf.keras.optimizers.Adam.
		  * 'Ftrl': Returns an tf.keras.optimizers.Ftrl.
		  * 'RMSProp': Returns an tf.keras.optimizers.RMSProp.
		  * 'SGD': Returns a tf.keras.optimizers.SGD.
		
		Args:
		  opt: An `tf.keras.optimizers.Optimizer` instance, or string, as discussed
		    above.
		  learning_rate: A float. Only used if `opt` is a string. If None, and opt is
		    string, it will use the default learning_rate of the optimizer.
		
		Returns:
		  An `tf.keras.optimizers.Optimizer` instance.
		
		Raises:
		  ValueError: If `opt` is an unsupported string.
		  ValueError: If `opt` is a supported string but `learning_rate` was not
		    specified.
		  ValueError: If `opt` is none of the above types.
	**/
	static public function get_optimizer_instance_v2(opt:Dynamic, ?learning_rate:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}