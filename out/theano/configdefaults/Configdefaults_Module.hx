/* This file is generated, do not edit! */
package theano.configdefaults;
@:pythonImport("theano.configdefaults") extern class Configdefaults_Module {
	/**
		Add a new variable to theano.config
		
		:type name: string for form "[section0.[section1.[etc]]].option"
		:param name: the full name for this configuration variable.
		
		:type doc: string
		:param doc: What does this variable specify?
		
		:type configparam: ConfigParam instance
		:param configparam: an object for getting and setting this configuration
		    parameter
		
		:type root: object
		:param root: used for recursive calls -- do not provide an argument for
		    this parameter.
		
		:type in_c_key: boolean
		:param in_c_key: If True, then whenever this config option changes, the
		key associated to compiled C modules also changes, i.e. it may trigger a
		compilation of these modules (this compilation will only be partial if it
		turns out that the generated C code is unchanged). Set this option to False
		only if you are confident this option should not affect C code compilation.
		
		:returns: None
	**/
	static public function AddConfigVar(name:Dynamic, doc:Dynamic, configparam:Dynamic, ?root:Dynamic, ?in_c_key:Dynamic):Dynamic;
	static public function BoolParam(_default:Dynamic, ?is_valid:Dynamic, ?allow_override:Dynamic):Dynamic;
	static public function FloatParam(_default:Dynamic, ?is_valid:Dynamic, ?allow_override:Dynamic):Dynamic;
	static public function IntParam(_default:Dynamic, ?is_valid:Dynamic, ?allow_override:Dynamic):Dynamic;
	static public var SUPPORTED_DNN_CONV_ALGO_BWD_DATA : Dynamic;
	static public var SUPPORTED_DNN_CONV_ALGO_BWD_FILTER : Dynamic;
	static public var SUPPORTED_DNN_CONV_ALGO_FWD : Dynamic;
	static public var SUPPORTED_DNN_CONV_ALGO_RUNTIME : Dynamic;
	static public var SUPPORTED_DNN_CONV_PRECISION : Dynamic;
	static public function StrParam(_default:Dynamic, ?is_valid:Dynamic, ?allow_override:Dynamic):Dynamic;
	static public var THEANO_FLAGS_DICT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var _logger : Dynamic;
	static public function _timeout_default():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Calls subprocess_Popen and discards the output, returning only the
		exit code.
	**/
	static public function call_subprocess_Popen(command:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
	static public function check_mkl_openmp():Dynamic;
	static public var compiledir_format_dict : Dynamic;
	static public var compiledir_format_keys : Dynamic;
	static public var config : Dynamic;
	static public var count : Dynamic;
	/**
		Returns the number of CPUs in the system
	**/
	static public function cpuCount():Dynamic;
	static public var default_base_compiledir : Dynamic;
	static public function default_blas_ldflags():Dynamic;
	static public function default_compiledir():Dynamic;
	static public var default_compiledir_format : Dynamic;
	static public function default_compiledirname():Dynamic;
	static public function default_cuda_include():Dynamic;
	static public function default_dnn_base_path():Dynamic;
	static public function default_dnn_bin_path():Dynamic;
	static public function default_dnn_inc_path():Dynamic;
	static public function default_dnn_lib_path():Dynamic;
	static public var default_openmp : Dynamic;
	static public function deprecated_gpuarray_sync(val:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function filter_base_compiledir(path:Dynamic):Dynamic;
	static public function filter_compiledir(path:Dynamic):Dynamic;
	static public function filter_mode(val:Dynamic):Dynamic;
	static public function filter_vm_lazy(val:Dynamic):Dynamic;
	static public function floatX_convert(s:Dynamic):Dynamic;
	static public var gcc_version_str : Dynamic;
	static public function get_cuda_root():Dynamic;
	/**
		Return location of the user's home directory.
	**/
	static public function get_home_dir():Dynamic;
	static public function good_seed_param(seed:Dynamic):Dynamic;
	static public function is_valid_check_preallocated_output_param(param:Dynamic):Dynamic;
	/**
		Return 32 for 32bit arch, 64 for 64bit arch.
		
		By "architecture", we mean the size of memory pointers (size_t in C),
		*not* the size of long int, as it can be different.
	**/
	static public function local_bitwidth():Dynamic;
	/**
		Unfortunately, Conda offers to make itself the default Python
		and those who use it that way will probably not activate envs
		correctly meaning e.g. mingw-w64 g++ may not be on their PATH.
		
		This function ensures that, if `newpath` is an absolute path,
		and it is not already in os.environ[var] it gets added to the
		front.
		
		The reason we check first is because Windows environment vars
		are limited to 8191 characters and it is easy to hit that.
		
		`var` will typically be 'PATH'. 
	**/
	static public function maybe_add_to_os_environ_pathlist(_var:Dynamic, newpath:Dynamic):Dynamic;
	/**
		Calls subprocess_Popen, returning the output, error and exit code
		in a tuple.
	**/
	static public function output_subprocess_Popen(command:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the bit width of Python int (C long int).
		
		Note that it can be different from the size of a memory pointer.
	**/
	static public function python_int_bitwidth():Dynamic;
	static public var rc : Dynamic;
	/**
		Make sure the user is not attempting to use dnn.conv.algo_bwd`.
	**/
	static public function safe_no_dnn_algo_bwd(algo:Dynamic):Dynamic;
	/**
		Make sure the user is not attempting to use dnn.conv.workmem`.
	**/
	static public function safe_no_dnn_workmem(workmem:Dynamic):Dynamic;
	/**
		Make sure the user is not attempting to use dnn.conv.workmem_bwd`.
	**/
	static public function safe_no_dnn_workmem_bwd(workmem:Dynamic):Dynamic;
	/**
		Return a safe shorter version of platform.platform().
		
		The old default Theano compiledir used platform.platform in
		it. This use the platform.version() as a substring. This is too
		specific as it contain the full kernel number and package
		version. This cause the compiledir to change each time there is a
		new linux kernel update. This function remove the part of platform
		that are too precise.
		
		If we have something else then expected, we do nothing. So this
		should be safe on other OS.
		
		Some example if we use platform.platform() direction. On the same
		OS, with just some kernel updates.
		
		compiledir_Linux-2.6.32-504.el6.x86_64-x86_64-with-redhat-6.6-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-431.29.2.el6.x86_64-x86_64-with-redhat-6.5-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-431.23.3.el6.x86_64-x86_64-with-redhat-6.5-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-431.20.3.el6.x86_64-x86_64-with-redhat-6.5-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-431.17.1.el6.x86_64-x86_64-with-redhat-6.5-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-431.11.2.el6.x86_64-x86_64-with-redhat-6.5-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-431.el6.x86_64-x86_64-with-redhat-6.5-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-358.23.2.el6.x86_64-x86_64-with-redhat-6.4-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-358.6.2.el6.x86_64-x86_64-with-redhat-6.4-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-358.6.1.el6.x86_64-x86_64-with-redhat-6.4-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-358.2.1.el6.x86_64-x86_64-with-redhat-6.4-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-358.el6.x86_64-x86_64-with-redhat-6.4-Santiago-x86_64-2.6.6-64
		compiledir_Linux-2.6.32-358.el6.x86_64-x86_64-with-redhat-6.4-Santiago-x86_64-2.6.6
		compiledir_Linux-2.6.32-279.14.1.el6.x86_64-x86_64-with-redhat-6.4-Santiago-x86_64-2.6.6
		compiledir_Linux-2.6.32-279.14.1.el6.x86_64-x86_64-with-redhat-6.3-Santiago-x86_64-2.6.6
		compiledir_Linux-2.6.32-279.5.2.el6.x86_64-x86_64-with-redhat-6.3-Santiago-x86_64-2.6.6
		compiledir_Linux-2.6.32-220.13.1.el6.x86_64-x86_64-with-redhat-6.3-Santiago-x86_64-2.6.6
		compiledir_Linux-2.6.32-220.13.1.el6.x86_64-x86_64-with-redhat-6.2-Santiago-x86_64-2.6.6
		compiledir_Linux-2.6.32-220.7.1.el6.x86_64-x86_64-with-redhat-6.2-Santiago-x86_64-2.6.6
		compiledir_Linux-2.6.32-220.4.1.el6.x86_64-x86_64-with-redhat-6.2-Santiago-x86_64-2.6.6
		
		We suppose the version are ``X.Y[.*]-(digit)*(anything)*``. We keep ``X.Y``
		and don't keep less important digit in the part before ``-`` and we remove
		the leading digit after the first ``-``.
		
		If the information don't fit that pattern, we do not modify platform.
	**/
	static public function short_platform(?r:Dynamic, ?p:Dynamic):Dynamic;
	/**
		Take version as a dot-separated string, return a tuple of int
	**/
	static public function split_version(version:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	static public function try_blas_flag(flags:Dynamic):Dynamic;
	@:native("var")
	static public var _var : Dynamic;
	/**
		We only support clang++ as otherwise we hit strange g++/OSX bugs.
	**/
	static public function warn_cxx(val:Dynamic):Dynamic;
	/**
		Return True iff we should warn about bugs fixed after a given version.
	**/
	static public function warn_default(version:Dynamic):Dynamic;
}