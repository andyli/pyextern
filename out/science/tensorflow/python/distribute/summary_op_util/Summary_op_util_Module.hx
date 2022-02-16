/* This file is generated, do not edit! */
package tensorflow.python.distribute.summary_op_util;
@:pythonImport("tensorflow.python.distribute.summary_op_util") extern class Summary_op_util_Module {
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
	static public var print_function : Dynamic;
	/**
		Determines if summary should be skipped.
		
		If using multiple replicas in distributed strategy, skip summaries on all
		replicas except the first one (replica_id=0).
		
		Returns:
		  True if the summary is skipped; False otherwise.
	**/
	static public function skip_summary():Dynamic;
}