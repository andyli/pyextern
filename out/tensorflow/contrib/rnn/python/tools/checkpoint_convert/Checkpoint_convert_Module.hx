/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.tools.checkpoint_convert;
@:pythonImport("tensorflow.contrib.rnn.python.tools.checkpoint_convert") extern class Checkpoint_convert_Module {
	static public var RNN_NAME_REPLACEMENTS : Dynamic;
	static public var _RNN_SHARDED_NAME_REPLACEMENTS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _rnn_name_replacement(var_name:Dynamic):Dynamic;
	static public function _rnn_name_replacement_sharded(var_name:Dynamic):Dynamic;
	/**
		Split shareded variables.
		
		Args:
		  name_shape_map: A dict from variable name to variable shape.
		
		Returns:
		  not_sharded: Names of the non-sharded variables.
		  sharded: Names of the sharded variables.
	**/
	static public function _split_sharded_vars(name_shape_map:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Migrates the names of variables within a checkpoint.
		
		Args:
		  checkpoint_from_path: Path to source checkpoint to be read in.
		  checkpoint_to_path: Path to checkpoint to be written out.
		  write_v1_checkpoint: Whether the output checkpoint will be in V1 format.
		
		Returns:
		  A dictionary that maps the new variable names to the Variable objects.
		  A dictionary that maps the old variable names to the new variable names.
	**/
	static public function convert_names(checkpoint_from_path:Dynamic, checkpoint_to_path:Dynamic, ?write_v1_checkpoint:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function main(_:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}