/* This file is generated, do not edit! */
package tensorflow.python.saved_model.utils_impl;
@:pythonImport("tensorflow.python.saved_model.utils_impl") extern class Utils_impl_Module {
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
		Utility function to build TensorInfo proto.
		
		Args:
		  tensor: Tensor or SparseTensor whose name, dtype and shape are used to
		      build the TensorInfo. For SparseTensors, the names of the three
		      constitutent Tensors are used.
		
		Returns:
		  A TensorInfo protocol buffer constructed based on the supplied argument.
	**/
	static public function build_tensor_info(tensor:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return path to asset directory in the SavedModel.
	**/
	static public function get_assets_dir(export_dir:Dynamic):Dynamic;
	/**
		Return assets sub-directory, or create one if it doesn't exist.
	**/
	static public function get_or_create_assets_dir(export_dir:Dynamic):Dynamic;
	/**
		Return variables sub-directory, or create one if it doesn't exist.
	**/
	static public function get_or_create_variables_dir(export_dir:Dynamic):Dynamic;
	/**
		Returns the Tensor or SparseTensor described by a TensorInfo proto.
		
		Args:
		  tensor_info: A TensorInfo proto describing a Tensor or SparseTensor.
		  graph: The tf.Graph in which tensors are looked up. If None, the
		      current default graph is used.
		  import_scope: If not None, names in `tensor_info` are prefixed with this
		      string before lookup.
		
		Returns:
		  The Tensor or SparseTensor in `graph` described by `tensor_info`.
		
		Raises:
		  KeyError: If `tensor_info` does not correspond to a tensor in `graph`.
		  ValueError: If `tensor_info` is malformed.
	**/
	static public function get_tensor_from_tensor_info(tensor_info:Dynamic, ?graph:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Return variables sub-directory in the SavedModel.
	**/
	static public function get_variables_dir(export_dir:Dynamic):Dynamic;
	/**
		Return the variables path, used as the prefix for checkpoint files.
	**/
	static public function get_variables_path(export_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}