/* This file is generated, do not edit! */
package keras.applications.imagenet_utils;
@:pythonImport("keras.applications.imagenet_utils") extern class Imagenet_utils_Module {
	static public var CLASS_INDEX : Dynamic;
	static public var CLASS_INDEX_PATH : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Internal utility to compute/validate an ImageNet model's input shape.
		
		# Arguments
		    input_shape: either None (will return the default network input shape),
		        or a user-provided shape to be validated.
		    default_size: default input width/height for the model.
		    min_size: minimum input width/height accepted by the model.
		    data_format: image data format to use.
		    include_top: whether the model is expected to
		        be linked to a classifier via a Flatten layer.
		
		# Returns
		    An integer shape tuple (may include None entries).
		
		# Raises
		    ValueError: in case of invalid argument values.
	**/
	static public function _obtain_input_shape(input_shape:Dynamic, default_size:Dynamic, min_size:Dynamic, data_format:Dynamic, include_top:Dynamic):Dynamic;
	/**
		Decodes the prediction of an ImageNet model.
		
		# Arguments
		    preds: Numpy tensor encoding a batch of predictions.
		    top: integer, how many top-guesses to return.
		
		# Returns
		    A list of lists of top class prediction tuples
		    `(class_name, class_description, score)`.
		    One list of tuples per sample in batch input.
		
		# Raises
		    ValueError: in case of invalid shape of the `pred` array
		        (must be 2D).
	**/
	static public function decode_predictions(preds:Dynamic, ?top:Dynamic):Dynamic;
	/**
		Downloads a file from a URL if it not already in the cache.
		
		By default the file at the url `origin` is downloaded to the
		cache_dir `~/.keras`, placed in the cache_subdir `datasets`,
		and given the filename `fname`. The final location of a file
		`example.txt` would therefore be `~/.keras/datasets/example.txt`.
		
		Files in tar, tar.gz, tar.bz, and zip formats can also be extracted.
		Passing a hash will verify the file after download. The command line
		programs `shasum` and `sha256sum` can compute the hash.
		
		# Arguments
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
		        defaults to the [Keras Directory](/faq/#where-is-the-keras-configuration-filed-stored).
		
		# Returns
		    Path to the downloaded file
	**/
	static public function get_file(fname:Dynamic, origin:Dynamic, ?untar:Dynamic, ?md5_hash:Dynamic, ?file_hash:Dynamic, ?cache_subdir:Dynamic, ?hash_algorithm:Dynamic, ?extract:Dynamic, ?archive_format:Dynamic, ?cache_dir:Dynamic):Dynamic;
	/**
		Preprocesses a tensor encoding a batch of images.
		
		# Arguments
		    x: input Numpy tensor, 4D.
		    data_format: data format of the image tensor.
		
		# Returns
		    Preprocessed tensor.
	**/
	static public function preprocess_input(x:Dynamic, ?data_format:Dynamic):Dynamic;
}