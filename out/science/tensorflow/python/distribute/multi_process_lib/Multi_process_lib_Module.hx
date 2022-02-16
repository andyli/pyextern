/* This file is generated, do not edit! */
package tensorflow.python.distribute.multi_process_lib;
@:pythonImport("tensorflow.python.distribute.multi_process_lib") extern class Multi_process_lib_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		If spawned process, run requested spawn task and exit. Else a no-op.
	**/
	static public function _if_spawn_run_and_exit():Dynamic;
	static public function _is_enabled():Dynamic;
	/**
		Set the path to the executable for spawned processes.
		
		This utility searches for the binary the parent process is using, and sets
		the executable of multiprocessing's context accordingly.
		
		Raises:
		  RuntimeError: If the binary path cannot be determined.
	**/
	static public function _set_spawn_exe_path():Dynamic;
	static public var _test_main_called : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns whether the module is initialized.
	**/
	static public function initialized():Dynamic;
	/**
		Returns whether the test is run under OSS.
	**/
	static public function is_oss():Dynamic;
	static public var multiprocessing : Dynamic;
	static public var print_function : Dynamic;
	/**
		Main function to be called within `__main__` of a test file.
	**/
	static public function test_main():Dynamic;
}