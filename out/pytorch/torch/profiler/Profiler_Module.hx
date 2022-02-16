/* This file is generated, do not edit! */
package torch.profiler;
@:pythonImport("torch.profiler") extern class Profiler_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		_supported_activities() -> Set[torch._C._autograd.ProfilerActivity]
	**/
	static public function _supported_activities(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kineto_available() -> bool
	**/
	static public function kineto_available(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a callable that can be used as profiler ``schedule`` argument. The profiler will skip
		the first ``skip_first`` steps, then wait for ``wait`` steps, then do the warmup for the next ``warmup`` steps,
		then do the active recording for the next ``active`` steps and then repeat the cycle starting with ``wait`` steps.
		The optional number of cycles is specified with the ``repeat`` parameter, the zero value means that
		the cycles will continue until the profiling is finished.
	**/
	static public function schedule(wait:Dynamic, warmup:Dynamic, active:Dynamic, ?repeat:Dynamic, ?skip_first:Dynamic):Dynamic;
	/**
		Returns a set of supported profiler tracing activities.
		
		Note: profiler uses CUPTI library to trace on-device CUDA kernels.
		In case when CUDA is enabled but CUPTI is not available, passing
		``ProfilerActivity.CUDA`` to profiler results in using the legacy CUDA
		profiling code (same as in the legacy ``torch.autograd.profiler``).
		This, in turn, results in including CUDA time in the profiler table output,
		but not in the JSON trace.
	**/
	static public function supported_activities():Dynamic;
	/**
		Outputs tracing files to directory of ``dir_name``, then that directory can be
		directly delivered to tensorboard as logdir.
		``worker_name`` should be unique for each worker in distributed scenario,
		it will be set to '[hostname]_[pid]' by default.
	**/
	static public function tensorboard_trace_handler(dir_name:Dynamic, ?worker_name:Dynamic, ?use_gzip:Dynamic):Dynamic;
}