/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.utils;
@:pythonImport("tensorflow.contrib.keras.python.keras.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts all convolution kernels in a model from Theano to TensorFlow.
		
		Also works from TensorFlow to Theano.
		
		Arguments:
		    model: target model for the conversion.
	**/
	static public function convert_all_kernels_in_model(model:Dynamic):Dynamic;
	/**
		Provides a scope that changes to `_GLOBAL_CUSTOM_OBJECTS` cannot escape.
		
		Convenience wrapper for `CustomObjectScope`.
		Code within a `with` statement will be able to access custom objects
		by name. Changes to global custom objects persist
		within the enclosing `with` statement. At end of the `with` statement,
		global custom objects are reverted to state
		at beginning of the `with` statement.
		
		Example:
		
		Consider a custom object `MyObject`
		
		```python
		    with custom_object_scope({"MyObject":MyObject}):
		        layer = Dense(..., W_regularizer="MyObject")
		        # save, load, etc. will recognize custom object by name
		```
		
		Arguments:
		    *args: Variable length list of dictionaries of name,
		        class pairs to add to custom objects.
		
		Returns:
		    Object of type `CustomObjectScope`.
	**/
	static public function custom_object_scope(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Retrieves a live reference to the global dictionary of custom objects.
		
		Updating and clearing custom objects using `custom_object_scope`
		is preferred, but `get_custom_objects` can
		be used to directly access `_GLOBAL_CUSTOM_OBJECTS`.
		
		Example:
		
		```python
		    get_custom_objects().clear()
		    get_custom_objects()["MyObject"] = MyObject
		```
		
		Returns:
		    Global dictionary of names to classes (`_GLOBAL_CUSTOM_OBJECTS`).
	**/
	static public function get_custom_objects():Dynamic;
	/**
		Downloads a file from a URL if it not already in the cache.
		
		By default the file at the url `origin` is downloaded to the
		cache_dir `~/.keras`, placed in the cache_subdir `datasets`,
		and given the filename `fname`. The final location of a file
		`example.txt` would therefore be `~/.keras/datasets/example.txt`.
		
		Files in tar, tar.gz, tar.bz, and zip formats can also be extracted.
		Passing a hash will verify the file after download. The command line
		programs `shasum` and `sha256sum` can compute the hash.
		
		Arguments:
		    fname: Name of the file. If an absolute path `/path/to/file.txt` is
		        specified the file will be saved at that location.
		    origin: Original URL of the file.
		    untar: Deprecated in favor of 'extract'.
		        boolean, whether the file should be decompressed
		    md5_hash: Deprecated in favor of 'file_hash'.
		        md5 hash of the file for verification
		    file_hash: The expected hash string of the file after download.
		        The sha256 and md5 hash algorithms are both supported.
		    cache_subdir: Subdirectory under the Keras cache dir where the file is
		        saved. If an absolute path `/path/to/folder` is
		        specified the file will be saved at that location.
		    hash_algorithm: Select the hash algorithm to verify the file.
		        options are 'md5', 'sha256', and 'auto'.
		        The default 'auto' detects the hash algorithm in use.
		    extract: True tries extracting the file as an Archive, like tar or zip.
		    archive_format: Archive format to try for extracting the file.
		        Options are 'auto', 'tar', 'zip', and None.
		        'tar' includes tar, tar.gz, and tar.bz files.
		        The default 'auto' is ['tar', 'zip'].
		        None or an empty list will return no matches found.
		    cache_dir: Location to store cached files, when None it
		        defaults to the [Keras
		          Directory](/faq/#where-is-the-keras-configuration-filed-stored).
		
		Returns:
		    Path to the downloaded file
	**/
	static public function get_file(fname:Dynamic, origin:Dynamic, ?untar:Dynamic, ?md5_hash:Dynamic, ?file_hash:Dynamic, ?cache_subdir:Dynamic, ?hash_algorithm:Dynamic, ?extract:Dynamic, ?archive_format:Dynamic, ?cache_dir:Dynamic):Dynamic;
	/**
		Normalizes a Numpy array.
		
		Arguments:
		    x: Numpy array to normalize.
		    axis: axis along which to normalize.
		    order: Normalization order (e.g. 2 for L2 norm).
		
		Returns:
		    A normalized copy of the array.
	**/
	static public function normalize(x:Dynamic, ?axis:Dynamic, ?order:Dynamic):Dynamic;
	static public function plot_model(model:Dynamic, ?to_file:Dynamic, ?show_shapes:Dynamic, ?show_layer_names:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	/**
		Converts a class vector (integers) to binary class matrix.
		
		E.g. for use with categorical_crossentropy.
		
		Arguments:
		    y: class vector to be converted into a matrix
		        (integers from 0 to num_classes).
		    num_classes: total number of classes.
		
		Returns:
		    A binary matrix representation of the input.
	**/
	static public function to_categorical(y:Dynamic, ?num_classes:Dynamic):Dynamic;
}