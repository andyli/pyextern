/* This file is generated, do not edit! */
package tensorflow.python.training.py_checkpoint_reader;
@:pythonImport("tensorflow.python.training.py_checkpoint_reader") extern class Py_checkpoint_reader_Module {
	/**
		A function that returns a CheckPointReader.
		
		Args:
		  filepattern: The filename.
		
		Returns:
		  A CheckpointReader object.
	**/
	static public function NewCheckpointReader(filepattern:Dynamic):Dynamic;
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
		Translate the tensor_slice_reader.cc errors.
	**/
	static public function error_translator(e:Dynamic):Dynamic;
	/**
		Get the tensor from the Checkpoint object.
	**/
	static public function get_tensor(self:Dynamic, tensor_str:Dynamic):Dynamic;
	static public function get_variable_to_dtype_map(self:Dynamic):Dynamic;
	static public function has_tensor(self:Dynamic, tensor_str:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}