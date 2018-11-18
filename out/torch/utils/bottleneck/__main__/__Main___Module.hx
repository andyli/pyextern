/* This file is generated, do not edit! */
package torch.utils.bottleneck.__main__;
@:pythonImport("torch.utils.bottleneck.__main__") extern class __Main___Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var autograd_prof_summary : Dynamic;
	static public function compiled_with_cuda(sysinfo:Dynamic):Dynamic;
	static public var cprof_summary : Dynamic;
	static public function cpu_time_total(autograd_prof:Dynamic):Dynamic;
	static public var descript : Dynamic;
	static public var env_summary : Dynamic;
	static public function get_env_info():Dynamic;
	static public function main():Dynamic;
	static public function parse_args():Dynamic;
	static public function print_autograd_prof_summary(prof:Dynamic, mode:Dynamic, ?sortby:Dynamic, ?topk:Dynamic):Dynamic;
	static public function print_cprofile_summary(prof:Dynamic, ?sortby:Dynamic, ?topk:Dynamic):Dynamic;
	static public function redirect_argv(new_argv:Dynamic):Dynamic;
	static public function run_autograd_prof(code:Dynamic, globs:Dynamic):Dynamic;
	static public function run_cprofile(code:Dynamic, globs:Dynamic, ?launch_blocking:Dynamic):Dynamic;
	static public function run_env_analysis():Dynamic;
}