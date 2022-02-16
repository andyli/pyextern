/* This file is generated, do not edit! */
package tensorflow.python.keras.distribute.sidecar_evaluator;
@:pythonImport("tensorflow.python.keras.distribute.sidecar_evaluator") extern class Sidecar_evaluator_Module {
	static public var _ITERATIONS_UNINITIALIZED : Dynamic;
	static public var _PRINT_EVAL_STEP_EVERY_SEC : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Lists all the attributes in a checkpoint.
		
		Checkpoint keys are paths in a checkpoint graph, and attribute is the first
		element in the path. e.g. with a checkpoint key
		"optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE", optimizer is the attribute. The
		attribute is also used to save/restore a variable in a checkpoint,
		e.g. tf.train.Checkpoint(optimizer=optimizer, model=model).
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  Set of attributes in a checkpoint.
	**/
	static public function list_checkpoint_attributes(ckpt_dir_or_file:Dynamic):Dynamic;
}