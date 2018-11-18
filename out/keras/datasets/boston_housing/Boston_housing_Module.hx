/* This file is generated, do not edit! */
package keras.datasets.boston_housing;
@:pythonImport("keras.datasets.boston_housing") extern class Boston_housing_Module {
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
		Loads the Boston Housing dataset.
		
		# Arguments
		    path: path where to cache the dataset locally
		        (relative to ~/.keras/datasets).
		    test_split: fraction of the data to reserve as test set.
		    seed: Random seed for shuffling the data
		        before computing the test split.
		
		# Returns
		    Tuple of Numpy arrays: `(x_train, y_train), (x_test, y_test)`.
	**/
	static public function load_data(?path:Dynamic, ?test_split:Dynamic, ?seed:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}