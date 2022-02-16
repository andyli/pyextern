/* This file is generated, do not edit! */
package tensorflow.python.keras.datasets.cifar100;
@:pythonImport("tensorflow.python.keras.datasets.cifar100") extern class Cifar100_Module {
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
		Internal utility for parsing CIFAR data.
		
		Args:
		    fpath: path the file to parse.
		    label_key: key for label data in the retrieve
		        dictionary.
		
		Returns:
		    A tuple `(data, labels)`.
	**/
	static public function load_batch(fpath:Dynamic, ?label_key:Dynamic):Dynamic;
	/**
		Loads the CIFAR100 dataset.
		
		This is a dataset of 50,000 32x32 color training images and
		10,000 test images, labeled over 100 fine-grained classes that are
		grouped into 20 coarse-grained classes. See more info at the
		[CIFAR homepage](https://www.cs.toronto.edu/~kriz/cifar.html).
		
		Args:
		  label_mode: one of "fine", "coarse". If it is "fine" the category labels
		    are the fine-grained labels, if it is "coarse" the output labels are the
		    coarse-grained superclasses.
		
		Returns:
		  Tuple of NumPy arrays: `(x_train, y_train), (x_test, y_test)`.
		
		**x_train**: uint8 NumPy array of grayscale image data with shapes
		  `(50000, 32, 32, 3)`, containing the training data. Pixel values range
		  from 0 to 255.
		
		**y_train**: uint8 NumPy array of labels (integers in range 0-99)
		  with shape `(50000, 1)` for the training data.
		
		**x_test**: uint8 NumPy array of grayscale image data with shapes
		  (10000, 32, 32, 3), containing the test data. Pixel values range
		  from 0 to 255.
		
		**y_test**: uint8 NumPy array of labels (integers in range 0-99)
		  with shape `(10000, 1)` for the test data.
		
		Example:
		
		```python
		(x_train, y_train), (x_test, y_test) = keras.datasets.cifar100.load_data()
		assert x_train.shape == (50000, 32, 32, 3)
		assert x_test.shape == (10000, 32, 32, 3)
		assert y_train.shape == (50000, 1)
		assert y_test.shape == (10000, 1)
		```
	**/
	static public function load_data(?label_mode:Dynamic):Dynamic;
}