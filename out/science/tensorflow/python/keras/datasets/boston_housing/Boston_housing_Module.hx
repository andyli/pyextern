/* This file is generated, do not edit! */
package tensorflow.python.keras.datasets.boston_housing;
@:pythonImport("tensorflow.python.keras.datasets.boston_housing") extern class Boston_housing_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Downloads a file from a URL if it not already in the cache.
		
		By default the file at the url `origin` is downloaded to the
		cache_dir `~/.keras`, placed in the cache_subdir `datasets`,
		and given the filename `fname`. The final location of a file
		`example.txt` would therefore be `~/.keras/datasets/example.txt`.
		
		Files in tar, tar.gz, tar.bz, and zip formats can also be extracted.
		Passing a hash will verify the file after download. The command line
		programs `shasum` and `sha256sum` can compute the hash.
		
		Example:
		
		```python
		path_to_downloaded_file = tf.keras.utils.get_file(
		    "flower_photos",
		    "https://storage.googleapis.com/download.tensorflow.org/example_images/flower_photos.tgz",
		    untar=True)
		```
		
		Args:
		    fname: Name of the file. If an absolute path `/path/to/file.txt` is
		        specified the file will be saved at that location.
		    origin: Original URL of the file.
		    untar: Deprecated in favor of `extract` argument.
		        boolean, whether the file should be decompressed
		    md5_hash: Deprecated in favor of `file_hash` argument.
		        md5 hash of the file for verification
		    file_hash: The expected hash string of the file after download.
		        The sha256 and md5 hash algorithms are both supported.
		    cache_subdir: Subdirectory under the Keras cache dir where the file is
		        saved. If an absolute path `/path/to/folder` is
		        specified the file will be saved at that location.
		    hash_algorithm: Select the hash algorithm to verify the file.
		        options are `'md5'`, `'sha256'`, and `'auto'`.
		        The default 'auto' detects the hash algorithm in use.
		    extract: True tries extracting the file as an Archive, like tar or zip.
		    archive_format: Archive format to try for extracting the file.
		        Options are `'auto'`, `'tar'`, `'zip'`, and `None`.
		        `'tar'` includes tar, tar.gz, and tar.bz files.
		        The default `'auto'` corresponds to `['tar', 'zip']`.
		        None or an empty list will return no matches found.
		    cache_dir: Location to store cached files, when None it
		        defaults to the default directory `~/.keras/`.
		
		Returns:
		    Path to the downloaded file
	**/
	static public function get_file(fname:Dynamic, origin:Dynamic, ?untar:Dynamic, ?md5_hash:Dynamic, ?file_hash:Dynamic, ?cache_subdir:Dynamic, ?hash_algorithm:Dynamic, ?extract:Dynamic, ?archive_format:Dynamic, ?cache_dir:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Loads the Boston Housing dataset.
		
		This is a dataset taken from the StatLib library which is maintained at
		Carnegie Mellon University.
		
		Samples contain 13 attributes of houses at different locations around the
		Boston suburbs in the late 1970s. Targets are the median values of
		the houses at a location (in k$).
		
		The attributes themselves are defined in the
		[StatLib website](http://lib.stat.cmu.edu/datasets/boston).
		
		Args:
		  path: path where to cache the dataset locally
		      (relative to `~/.keras/datasets`).
		  test_split: fraction of the data to reserve as test set.
		  seed: Random seed for shuffling the data
		      before computing the test split.
		
		Returns:
		  Tuple of Numpy arrays: `(x_train, y_train), (x_test, y_test)`.
		
		**x_train, x_test**: numpy arrays with shape `(num_samples, 13)`
		  containing either the training samples (for x_train),
		  or test samples (for y_train).
		
		**y_train, y_test**: numpy arrays of shape `(num_samples,)` containing the
		  target scalars. The targets are float scalars typically between 10 and
		  50 that represent the home prices in k$.
	**/
	static public function load_data(?path:Dynamic, ?test_split:Dynamic, ?seed:Dynamic):Dynamic;
}