/* This file is generated, do not edit! */
package tensorflow.python.summary.impl.gcs;
@:pythonImport("tensorflow.python.summary.impl.gcs") extern class Gcs_Module {
	/**
		Raises an OSError if the system isn't set up for Google Cloud Storage.
		
		Raises:
		  OSError: If the system hasn't been set up so that TensorBoard can access
		    Google Cloud Storage.   The error's message contains installation
		    instructions.
	**/
	static public function CheckIsSupported():Dynamic;
	/**
		Copies the contents of gcs_path from byte_offset onwards to local_file.
		
		Args:
		  gcs_path: The path to the GCS object.
		  byte_offset: The byte offset to start appending from.
		  local_file: The file object to write into.
		
		Raises:
		  ValueError: If offset is negative or gcs_path is not a valid GCS path.
		  CalledProcessError: If the gsutil command failed.
	**/
	static public function CopyContents(gcs_path:Dynamic, byte_offset:Dynamic, local_file:Dynamic):Dynamic;
	/**
		Returns true if path exists.
	**/
	static public function Exists(path:Dynamic):Dynamic;
	/**
		Returns true if path exists and is a directory.
	**/
	static public function IsDirectory(path:Dynamic):Dynamic;
	static public function IsGCSPath(path:Dynamic):Dynamic;
	/**
		Lists all files in the given directory.
	**/
	static public function ListDirectory(directory:Dynamic):Dynamic;
	/**
		Walks a directory tree, yielding (dir_path, file_paths) tuples.
		
		For each top |top| and its subdirectories, yields a tuple containing the path
		to the directory and the path to each of the contained files.  Note that
		unlike os.Walk()/gfile.Walk(), this does not list subdirectories and the file
		paths are all absolute.
		
		Args:
		  top: A path to a GCS directory.
		Returns:
		  A list of (dir_path, file_paths) tuples.
	**/
	static public function ListRecursively(top:Dynamic):Dynamic;
	static public var PATH_PREFIX : Dynamic;
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
	static public var print_function : Dynamic;
}