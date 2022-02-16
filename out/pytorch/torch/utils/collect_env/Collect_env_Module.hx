/* This file is generated, do not edit! */
package torch.utils.collect_env;
@:pythonImport("torch.utils.collect_env") extern class Collect_env_Module {
	static public var TORCH_AVAILABLE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function check_release_file(run_lambda:Dynamic):Dynamic;
	static public var env_info_fmt : Dynamic;
	static public function get_cachingallocator_config():Dynamic;
	static public function get_clang_version(run_lambda:Dynamic):Dynamic;
	static public function get_cmake_version(run_lambda:Dynamic):Dynamic;
	static public function get_conda_packages(run_lambda:Dynamic):Dynamic;
	/**
		This will return a list of libcudnn.so; it's hard to tell which one is being used
	**/
	static public function get_cudnn_version(run_lambda:Dynamic):Dynamic;
	static public function get_env_info():Dynamic;
	static public function get_gcc_version(run_lambda:Dynamic):Dynamic;
	static public function get_gpu_info(run_lambda:Dynamic):Dynamic;
	static public function get_libc_version():Dynamic;
	static public function get_lsb_version(run_lambda:Dynamic):Dynamic;
	static public function get_mac_version(run_lambda:Dynamic):Dynamic;
	static public function get_nvidia_driver_version(run_lambda:Dynamic):Dynamic;
	static public function get_nvidia_smi():Dynamic;
	static public function get_os(run_lambda:Dynamic):Dynamic;
	/**
		Returns `pip list` output. Note: will also find conda-installed pytorch
		and numpy packages.
	**/
	static public function get_pip_packages(run_lambda:Dynamic):Dynamic;
	static public function get_platform():Dynamic;
	static public function get_pretty_env_info():Dynamic;
	static public function get_python_platform():Dynamic;
	static public function get_running_cuda_version(run_lambda:Dynamic):Dynamic;
	static public function get_windows_version(run_lambda:Dynamic):Dynamic;
	static public function main():Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	static public function pretty_str(envinfo:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns (return-code, stdout, stderr)
	**/
	static public function run(command:Dynamic):Dynamic;
	/**
		Runs command using run_lambda, returns the first regex match if it exists
	**/
	static public function run_and_parse_first_match(run_lambda:Dynamic, command:Dynamic, regex:Dynamic):Dynamic;
	/**
		Runs command using run_lambda; reads and returns entire output if rc is 0
	**/
	static public function run_and_read_all(run_lambda:Dynamic, command:Dynamic):Dynamic;
	/**
		Runs command using run_lambda and returns first line if output is not empty
	**/
	static public function run_and_return_first_line(run_lambda:Dynamic, command:Dynamic):Dynamic;
}