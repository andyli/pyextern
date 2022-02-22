/* This file is generated, do not edit! */
package pyarrow.filesystem;
@:pythonImport("pyarrow.filesystem") extern class Filesystem_Module {
	static public var _DEPR_MSG : Dynamic;
	static public var _FS_DEPR_MSG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public function _ensure_filesystem(fs:Dynamic):Dynamic;
	static public function _is_path_like(path:Dynamic):Dynamic;
	static public function _sanitize_s3(path:Dynamic):Dynamic;
	/**
		Convert *path* to a string or unicode path if possible.
	**/
	static public function _stringify_path(path:Dynamic):Dynamic;
	@:native("implements")
	static public function _implements(f:Dynamic):Dynamic;
	/**
		Join two or more pathname components, inserting '/' as needed.
		If any component is an absolute path, all previous path components
		will be discarded.  An empty last part will result in a path that
		ends with a separator.
	**/
	static public function pjoin(a:Dynamic, ?p:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return filesystem from path which could be an HDFS URI, a local URI,
		or a plain filesystem path.
	**/
	static public function resolve_filesystem_and_path(where:Dynamic, ?filesystem:Dynamic):Dynamic;
}