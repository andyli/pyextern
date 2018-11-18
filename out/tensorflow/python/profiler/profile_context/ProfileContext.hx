/* This file is generated, do not edit! */
package tensorflow.python.profiler.profile_context;
@:pythonImport("tensorflow.python.profiler.profile_context", "ProfileContext") extern class ProfileContext {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exec_type:Dynamic, exec_value:Dynamic, exec_tb:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(profile_dir:Dynamic, ?trace_steps:Dynamic, ?dump_steps:Dynamic, ?enabled:Dynamic, ?debug:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(profile_dir:Dynamic, ?trace_steps:Dynamic, ?dump_steps:Dynamic, ?enabled:Dynamic, ?debug:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _dump_file(pb:Dynamic, basename:Dynamic):Dynamic;
	public function _is_fast_path(step:Dynamic):Dynamic;
	/**
		Maybe dump the profile file.
	**/
	public function _maybe_dump(step:Dynamic):Dynamic;
	public function _new_step():Dynamic;
	public function _profile_candidates():Dynamic;
	/**
		Whether should do tracing at current step.
	**/
	public function _should_trace(step:Dynamic, graph:Dynamic, fetches:Dynamic):Dynamic;
	/**
		Traces and profiles at some session run steps.
		
		Args:
		  cmd: The profiling commands. (i.e. scope, op, python, graph)
		  options: The profiling options.
		  profile_steps: A list/set of integers. The profiling command and options
		      will be run automatically at these integer steps. Each step is
		      a session.run.
	**/
	public function add_auto_profiling(cmd:Dynamic, options:Dynamic, profile_steps:Dynamic):Dynamic;
	/**
		Enable tracing and dump profiles at next step.
	**/
	public function dump_next_step():Dynamic;
	/**
		Returns profiling results for each step at which `cmd` was run.
		
		Args:
		  cmd: string, profiling command used in an `add_auto_profiling` call.
		
		Returns:
		  dict[int: (MultiGraphNodeProto | GraphNodeProto)]. Keys are steps at which
		  the profiling command was run. Values are the outputs of profiling.
		  For "code" and "op" commands this will be a `MultiGraphNodeProto`, for
		  "scope" and "graph" commands this will be a `GraphNodeProto.
		
		Raises:
		  ValueError: if `cmd` was never run (either because no session.run call was
		  made or because there was no `add_auto_profiling` call with the specified
		  `cmd`.
	**/
	public function get_profiles(cmd:Dynamic):Dynamic;
	/**
		Returns the current profiler object.
	**/
	public var profiler : Dynamic;
	/**
		Enables tracing and adds traces to profiler at next step.
	**/
	public function trace_next_step():Dynamic;
}