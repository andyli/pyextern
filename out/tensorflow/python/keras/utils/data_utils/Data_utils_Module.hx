/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.data_utils;
@:pythonImport("tensorflow.python.keras.utils.data_utils") extern class Data_utils_Module {
	static public var _SEQUENCE_COUNTER : Dynamic;
	static public var _SHARED_SEQUENCES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Extracts an archive if it matches tar, tar.gz, tar.bz, or zip formats.
		
		Arguments:
		    file_path: path to the archive file
		    path: path to extract the archive file
		    archive_format: Archive format to try for extracting the file.
		        Options are 'auto', 'tar', 'zip', and None.
		        'tar' includes tar, tar.gz, and tar.bz files.
		        The default 'auto' is ['tar', 'zip'].
		        None or an empty list will return no matches found.
		
		Returns:
		    True if a match was found and an archive extraction was completed,
		    False otherwise.
	**/
	static public function _extract_archive(file_path:Dynamic, ?path:Dynamic, ?archive_format:Dynamic):Dynamic;
	/**
		Calculates a file sha256 or md5 hash.
		
		Example:
		
		```python
		    >>> from keras.data_utils import _hash_file
		    >>> _hash_file('/path/to/file.zip')
		    'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
		```
		
		Arguments:
		    fpath: path to the file being validated
		    algorithm: hash algorithm, one of 'auto', 'sha256', or 'md5'.
		        The default 'auto' detects the hash algorithm in use.
		    chunk_size: Bytes to read at a time, important for large files.
		
		Returns:
		    The file hash
	**/
	static public function _hash_file(fpath:Dynamic, ?algorithm:Dynamic, ?chunk_size:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		A decorator indicating abstract methods.
		
		Requires that the metaclass is ABCMeta or derived from it.  A
		class that has a metaclass derived from ABCMeta cannot be
		instantiated unless all of its abstract methods are overridden.
		The abstract methods can be called using any of the normal
		'super' call mechanisms.
		
		Usage:
		
		    class C(metaclass=ABCMeta):
		        @abstractmethod
		        def my_abstract_method(self, ...):
		            ...
	**/
	static public function abstractmethod(funcobj:Dynamic):Dynamic;
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
		Get the value from the Sequence `uid` at index `i`.
		
		To allow multiple Sequences to be used at the same time, we use `uid` to
		get a specific one. A single Sequence would cause the validation to
		overwrite the training Sequence.
		
		Arguments:
		    uid: int, Sequence identifier
		    i: index
		
		Returns:
		    The value at index `i`.
	**/
	static public function get_index(uid:Dynamic, i:Dynamic):Dynamic;
	static public function init_pool(seqs:Dynamic):Dynamic;
	static public function init_pool_generator(gens:Dynamic, ?random_seed:Dynamic):Dynamic;
	/**
		Check if `x` is a Keras generator type.
	**/
	static public function is_generator_or_sequence(x:Dynamic):Dynamic;
	/**
		Iterates indefinitely over a Sequence.
		
		Arguments:
		  seq: Sequence instance.
		
		Yields:
		  Batches of data from the Sequence.
	**/
	static public function iter_sequence_infinite(seq:Dynamic):Dynamic;
	/**
		Gets the next value from the generator `uid`.
		
		To allow multiple generators to be used at the same time, we use `uid` to
		get a specific one. A single generator would cause the validation to
		overwrite the training generator.
		
		Arguments:
		    uid: int, generator identifier
		
		Returns:
		    The next value of generator `uid`.
	**/
	static public function next_sample(uid:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Open the URL url, which can be either a string or a Request object.
		
		*data* must be an object specifying additional data to be sent to
		the server, or None if no such data is needed.  See Request for
		details.
		
		urllib.request module uses HTTP/1.1 and includes a "Connection:close"
		header in its HTTP requests.
		
		The optional *timeout* parameter specifies a timeout in seconds for
		blocking operations like the connection attempt (if not specified, the
		global default timeout setting will be used). This only works for HTTP,
		HTTPS and FTP connections.
		
		If *context* is specified, it must be a ssl.SSLContext instance describing
		the various SSL options. See HTTPSConnection for more details.
		
		The optional *cafile* and *capath* parameters specify a set of trusted CA
		certificates for HTTPS requests. cafile should point to a single file
		containing a bundle of CA certificates, whereas capath should point to a
		directory of hashed certificate files. More information can be found in
		ssl.SSLContext.load_verify_locations().
		
		The *cadefault* parameter is ignored.
		
		This function always returns an object which can work as a context
		manager and has methods such as
		
		* geturl() - return the URL of the resource retrieved, commonly used to
		  determine if a redirect was followed
		
		* info() - return the meta-information of the page, such as headers, in the
		  form of an email.message_from_string() instance (see Quick Reference to
		  HTTP Headers)
		
		* getcode() - return the HTTP status code of the response.  Raises URLError
		  on errors.
		
		For HTTP and HTTPS URLs, this function returns a http.client.HTTPResponse
		object slightly modified. In addition to the three new methods above, the
		msg attribute contains the same information as the reason attribute ---
		the reason phrase returned by the server --- instead of the response
		headers as it is specified in the documentation for HTTPResponse.
		
		For FTP, file, and data URLs and requests explicitly handled by legacy
		URLopener and FancyURLopener classes, this function returns a
		urllib.response.addinfourl object.
		
		Note that None may be returned if no handler handles the request (though
		the default installed global OpenerDirector uses UnknownHandler to ensure
		this never happens).
		
		In addition, if proxy settings are detected (for example, when a *_proxy
		environment variable like http_proxy is set), ProxyHandler is default
		installed and makes sure the requests are handled through the proxy.
	**/
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Retrieve a URL into a temporary location on disk.
		
		Requires a URL argument. If a filename is passed, it is used as
		the temporary file location. The reporthook argument should be
		a callable that accepts a block number, a read size, and the
		total file size of the URL target. The data argument should be
		valid URL encoded data.
		
		If a filename is passed and the URL points to a local resource,
		the result is a copy from local file to new file.
		
		Returns a tuple containing the path to the newly created
		data file as well as the resulting HTTPMessage object.
	**/
	static public function urlretrieve(url:Dynamic, ?filename:Dynamic, ?reporthook:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Validates a file against a sha256 or md5 hash.
		
		Arguments:
		    fpath: path to the file being validated
		    file_hash:  The expected hash string of the file.
		        The sha256 and md5 hash algorithms are both supported.
		    algorithm: Hash algorithm, one of 'auto', 'sha256', or 'md5'.
		        The default 'auto' detects the hash algorithm in use.
		    chunk_size: Bytes to read at a time, important for large files.
		
		Returns:
		    Whether the file is valid
	**/
	static public function validate_file(fpath:Dynamic, file_hash:Dynamic, ?algorithm:Dynamic, ?chunk_size:Dynamic):Dynamic;
}