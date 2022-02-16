/* This file is generated, do not edit! */
package tensorflow.python.framework.load_library;
@:pythonImport("tensorflow.python.framework.load_library") extern class Load_library_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check the file to see if it is a shared object, only using extension.
	**/
	static public function _is_shared_object(filename:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Loads a TensorFlow plugin, containing file system implementation. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.load_library` instead.
		
		Pass `library_filename` to a platform-specific mechanism for dynamically
		loading a library. The rules for determining the exact location of the
		library are platform-specific and are not documented here.
		
		Args:
		  library_filename: Path to the plugin.
		    Relative or absolute filesystem path to a dynamic library file.
		
		Returns:
		  None.
		
		Raises:
		  RuntimeError: when unable to load the library.
	**/
	static public function load_file_system_library(library_filename:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin.
		
		"library_location" can be a path to a specific shared object, or a folder.
		If it is a folder, all shared objects that are named "libtfkernel*" will be
		loaded. When the library is loaded, kernels registered in the library via the
		`REGISTER_*` macros are made available in the TensorFlow process.
		
		Args:
		  library_location: Path to the plugin or the folder of plugins.
		    Relative or absolute filesystem path to a dynamic library file or folder.
		
		Returns:
		  None
		
		Raises:
		  OSError: When the file to be loaded is not found.
		  RuntimeError: when unable to load the library.
	**/
	static public function load_library(library_location:Dynamic):Dynamic;
	/**
		Loads a TensorFlow plugin, containing custom ops and kernels.
		
		Pass "library_filename" to a platform-specific mechanism for dynamically
		loading a library. The rules for determining the exact location of the
		library are platform-specific and are not documented here. When the
		library is loaded, ops and kernels registered in the library via the
		`REGISTER_*` macros are made available in the TensorFlow process. Note
		that ops with the same name as an existing op are rejected and not
		registered with the process.
		
		Args:
		  library_filename: Path to the plugin.
		    Relative or absolute filesystem path to a dynamic library file.
		
		Returns:
		  A python module containing the Python wrappers for Ops defined in
		  the plugin.
		
		Raises:
		  RuntimeError: when unable to load the library or get the python wrappers.
	**/
	static public function load_op_library(library_filename:Dynamic):Dynamic;
	/**
		Loads a TensorFlow PluggableDevice plugin.
		
		"library_location" can be a path to a specific shared object, or a folder.
		If it is a folder, all shared objects will be loaded. when the library is
		loaded, devices/kernels registered in the library via StreamExecutor C API
		and Kernel/Op Registration C API are made available in TensorFlow process.
		
		Args:
		  library_location: Path to the plugin or folder of plugins. Relative or
		    absolute filesystem path to a dynamic library file or folder.
		
		Raises:
		  OSError: When the file to be loaded is not found.
		  RuntimeError: when unable to load the library.
	**/
	static public function load_pluggable_device_library(library_location:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Loads a TensorFlow FileSystem plugin.
		
		Args:
		  plugin_location: Path to the plugin. Relative or absolute filesystem plugin
		    path to a dynamic library file.
		
		Returns:
		  None
		
		Raises:
		  OSError: When the file to be loaded is not found.
		  RuntimeError: when unable to load the library.
	**/
	static public function register_filesystem_plugin(plugin_location:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}