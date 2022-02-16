/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.preprocessing.preprocessing_stage;
@:pythonImport("tensorflow.python.keras.layers.preprocessing.preprocessing_stage") extern class Preprocessing_stage_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Unzip dataset into a list of single element datasets.
		
		Args:
		  ds: A Dataset object.
		
		Returns:
		  A list of Dataset object, each correspond to one of the `element_spec` of
		  the input Dataset object.
		
		Example:
		
		>>> ds1 = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> ds2 = tf.data.Dataset.from_tensor_slices([4, 5, 6])
		>>> ds_zipped_tuple = tf.data.Dataset.zip((ds1, ds2))
		>>> ds_unzipped_tuple = _unzip_dataset(ds_zipped_tuple)
		>>> ds_zipped_dict = tf.data.Dataset.zip({'ds1': ds1, 'ds2': ds2})
		>>> ds_unzipped_dict = _unzip_dataset(ds_zipped_dict)
		
		Then the two elements of `ds_unzipped_tuple` and `ds_unzipped_dict` are both
		the same as `ds1` and `ds2`.
	**/
	static public function _unzip_dataset(ds:Dynamic):Dynamic;
}