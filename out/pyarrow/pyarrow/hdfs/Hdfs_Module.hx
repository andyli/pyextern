/* This file is generated, do not edit! */
package pyarrow.hdfs;
@:pythonImport("pyarrow.hdfs") extern class Hdfs_Module {
	static public var _DEPR_MSG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _connect(?host:Dynamic, ?port:Dynamic, ?user:Dynamic, ?kerb_ticket:Dynamic, ?extra_conf:Dynamic):Dynamic;
	static public function _derive_hadoop_classpath():Dynamic;
	static public function _hadoop_classpath_glob(hadoop_bin:Dynamic):Dynamic;
	static public function _libhdfs_walk_files_dirs(top_path:Dynamic, contents:Dynamic):Dynamic;
	static public function _maybe_set_hadoop_classpath():Dynamic;
	/**
		DEPRECATED: Connect to an HDFS cluster.
		
		All parameters are optional and should only be set if the defaults need
		to be overridden.
		
		Authentication should be automatic if the HDFS cluster uses Kerberos.
		However, if a username is specified, then the ticket cache will likely
		be required.
		
		.. deprecated:: 2.0
		    ``pyarrow.hdfs.connect`` is deprecated,
		    please use ``pyarrow.fs.HadoopFileSystem`` instead.
		
		Parameters
		----------
		host : NameNode. Set to "default" for fs.defaultFS from core-site.xml.
		port : NameNode's port. Set to 0 for default or logical (HA) nodes.
		user : Username when connecting to HDFS; None implies login user.
		kerb_ticket : Path to Kerberos ticket cache.
		extra_conf : dict, default None
		  extra Key/Value pairs for config; Will override any
		  hdfs-site.xml properties
		
		Notes
		-----
		The first time you call this method, it will take longer than usual due
		to JNI spin-up time.
		
		Returns
		-------
		filesystem : HadoopFileSystem
	**/
	static public function connect(?host:Dynamic, ?port:Dynamic, ?user:Dynamic, ?kerb_ticket:Dynamic, ?extra_conf:Dynamic):Dynamic;
	@:native("implements")
	static public function _implements(f:Dynamic):Dynamic;
}