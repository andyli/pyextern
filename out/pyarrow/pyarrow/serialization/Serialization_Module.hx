/* This file is generated, do not edit! */
package pyarrow.serialization;
@:pythonImport("pyarrow.serialization") extern class Serialization_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _deprecate_serialization(name:Dynamic):Dynamic;
	static public function _deserialize_numpy_array_list(data:Dynamic):Dynamic;
	static public function _deserialize_numpy_matrix(data:Dynamic):Dynamic;
	static public function _deserialize_pyarrow_array(buf:Dynamic):Dynamic;
	static public function _deserialize_pyarrow_recordbatch(buf:Dynamic):Dynamic;
	static public function _deserialize_pyarrow_table(buf:Dynamic):Dynamic;
	static public function _load_pickle_from_buffer(data:Dynamic):Dynamic;
	static public function _pickle_to_buffer(x:Dynamic):Dynamic;
	static public function _register_collections_serialization_handlers(serialization_context:Dynamic):Dynamic;
	static public function _register_custom_pandas_handlers(context:Dynamic):Dynamic;
	static public function _register_default_serialization_handlers(serialization_context:Dynamic):Dynamic;
	static public function _register_pydata_sparse_handlers(serialization_context:Dynamic):Dynamic;
	static public function _register_scipy_handlers(serialization_context:Dynamic):Dynamic;
	static public function _serialize_numpy_array_list(obj:Dynamic):Dynamic;
	static public function _serialize_numpy_matrix(obj:Dynamic):Dynamic;
	static public function _serialize_pyarrow_array(array:Dynamic):Dynamic;
	static public function _serialize_pyarrow_recordbatch(batch:Dynamic):Dynamic;
	static public function _serialize_pyarrow_table(table:Dynamic):Dynamic;
	static public function default_serialization_context():Dynamic;
	/**
		Returns a dtype based off the given description.
		
		This is essentially the reverse of `dtype_to_descr()`. It will remove
		the valueless padding fields created by, i.e. simple fields like
		dtype('float32'), and then convert the description to its corresponding
		dtype.
		
		Parameters
		----------
		descr : object
		    The object retrieved by dtype.descr. Can be passed to
		    `numpy.dtype()` in order to replicate the input dtype.
		
		Returns
		-------
		dtype : dtype
		    The dtype constructed by the description.
	**/
	static public function descr_to_dtype(descr:Dynamic):Dynamic;
	/**
		py_buffer(obj)
		
		Construct an Arrow buffer from a Python bytes-like or buffer-like object
		
		Parameters
		----------
		obj : object
		    the object from which the buffer should be constructed.
	**/
	static public function py_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function register_default_serialization_handlers(serialization_context:Dynamic):Dynamic;
	static public function register_torch_serialization_handlers(serialization_context:Dynamic):Dynamic;
}