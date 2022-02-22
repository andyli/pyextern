/* This file is generated, do not edit! */
package pyarrow.fs;
@:pythonImport("pyarrow.fs") extern class Fs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getattr__(name:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		_copy_files(FileSystem source_fs, unicode source_path, FileSystem destination_fs, unicode destination_path, int64_t chunk_size, bool use_threads)
	**/
	static public function _copy_files(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_copy_files_selector(FileSystem source_fs, FileSelector source_sel, FileSystem destination_fs, unicode destination_base_dir, int64_t chunk_size, bool use_threads)
	**/
	static public function _copy_files_selector(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_filesystem(filesystem:Dynamic, ?use_mmap:Dynamic, ?allow_legacy_filesystem:Dynamic):Dynamic;
	static public function _filesystem_from_str(uri:Dynamic):Dynamic;
	static public function _is_path_like(path:Dynamic):Dynamic;
	static public var _not_imported : Dynamic;
	/**
		Return filesystem/path from path which could be an URI or a plain
		filesystem path.
	**/
	static public function _resolve_filesystem_and_path(path:Dynamic, ?filesystem:Dynamic, ?allow_legacy_filesystem:Dynamic):Dynamic;
	/**
		Convert *path* to a string or unicode path if possible.
	**/
	static public function _stringify_path(path:Dynamic):Dynamic;
	/**
		Copy files between FileSystems.
		
		This functions allows you to recursively copy directories of files from
		one file system to another, such as from S3 to your local machine.
		
		Parameters
		----------
		source : string
		    Source file path or URI to a single file or directory.
		    If a directory, files will be copied recursively from this path.
		destination : string
		    Destination file path or URI. If `source` is a file, `destination`
		    is also interpreted as the destination file (not directory).
		    Directories will be created as necessary.
		source_filesystem : FileSystem, optional
		    Source filesystem, needs to be specified if `source` is not a URI,
		    otherwise inferred.
		destination_filesystem : FileSystem, optional
		    Destination filesystem, needs to be specified if `destination` is not
		    a URI, otherwise inferred.
		chunk_size : int, default 1MB
		    The maximum size of block to read before flushing to the
		    destination file. A larger chunk_size will use more memory while
		    copying but may help accommodate high latency FileSystems.
		use_threads : bool, default True
		    Whether to use multiple threads to accelerate copying.
		
		Examples
		--------
		Copy an S3 bucket's files to a local directory:
		
		>>> copy_files("s3://your-bucket-name", "local-directory")
		
		Using a FileSystem object:
		
		>>> copy_files("your-bucket-name", "local-directory",
		...            source_filesystem=S3FileSystem(...))
	**/
	static public function copy_files(source:Dynamic, destination:Dynamic, ?source_filesystem:Dynamic, ?destination_filesystem:Dynamic, ?chunk_size:Dynamic, ?use_threads:Dynamic):Dynamic;
	/**
		finalize_s3()
	**/
	static public function finalize_s3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		initialize_s3(S3LogLevel log_level=S3LogLevel.Fatal)
		
		Initialize S3 support
		
		Parameters
		----------
		log_level : S3LogLevel
		    level of logging
	**/
	static public function initialize_s3(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		resolve_s3_region(bucket)
		
		Resolve the S3 region of a bucket.
		
		Parameters
		----------
		bucket : str
		    A S3 bucket name
		
		Returns
		-------
		region : str
		    A S3 region name
		
		Examples
		--------
		>>> resolve_s3_region('ursa-labs-taxi-data')
		'us-east-2'
	**/
	static public function resolve_s3_region(args:haxe.extern.Rest<Dynamic>):Dynamic;
}