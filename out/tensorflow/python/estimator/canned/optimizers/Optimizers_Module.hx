/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.optimizers;
@:pythonImport("tensorflow.python.estimator.canned.optimizers") extern class Optimizers_Module {
	static public var _OPTIMIZER_CLS_NAMES : Dynamic;
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
	static public var print_function : Dynamic;
}