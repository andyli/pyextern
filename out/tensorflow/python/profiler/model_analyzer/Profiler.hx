/* This file is generated, do not edit! */
package tensorflow.python.profiler.model_analyzer;
@:pythonImport("tensorflow.python.profiler.model_analyzer", "Profiler") extern class Profiler {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		Constructor.
		
		Args:
		  graph: tf.Graph. If None and eager execution is not enabled, use
		      default graph.
		  op_log: optional. tensorflow::tfprof::OpLogProto proto. Used to define
		      extra op types.
	**/
	@:native("__init__")
	public function ___init__(?graph:Dynamic, ?op_log:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  graph: tf.Graph. If None and eager execution is not enabled, use
		      default graph.
		  op_log: optional. tensorflow::tfprof::OpLogProto proto. Used to define
		      extra op types.
	**/
	public function new(?graph:Dynamic, ?op_log:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Writes the profile to a file.
	**/
	public function _write_profile(filename:Dynamic):Dynamic;
	/**
		Add statistics of a step.
		
		Args:
		  step: int, An id used to group one or more different `run_meta` together.
		      When profiling with the profile_xxx APIs, user can use the `step`
		      id in the `options` to profile these `run_meta` together.
		  run_meta: RunMetadata proto that contains statistics of a session run.
	**/
	public function add_step(step:Dynamic, run_meta:Dynamic):Dynamic;
	/**
		Automatically detect problems and generate reports.
		
		Args:
		  options: A dict of options. See ALL_ADVICE example above.
		Returns:
		  A Advise proto that conains the reports from all checkers.
	**/
	public function advise(options:Dynamic):Dynamic;
	/**
		Profile the statistics of graph nodes, organized by dataflow graph.
		
		Args:
		  options: A dict of options. See core/profiler/g3doc/options.md.
		Returns:
		  a GraphNodeProto that records the results.
	**/
	public function profile_graph(options:Dynamic):Dynamic;
	/**
		Profile the statistics of graph nodes, organized by name scope.
		
		Args:
		  options: A dict of options. See core/profiler/g3doc/options.md.
		Returns:
		  a GraphNodeProto that records the results.
	**/
	public function profile_name_scope(options:Dynamic):Dynamic;
	/**
		Profile the statistics of the Operation types (e.g. MatMul, Conv2D).
		
		Args:
		  options: A dict of options. See core/profiler/g3doc/options.md.
		Returns:
		  a MultiGraphNodeProto that records the results.
	**/
	public function profile_operations(options:Dynamic):Dynamic;
	/**
		Profile the statistics of the Python codes.
		
		  By default, it shows the call stack from root. To avoid
		  redundant output, you may use options to filter as below
		    options['show_name_regexes'] = ['.*my_code.py.*']
		
		Args:
		  options: A dict of options. See core/profiler/g3doc/options.md.
		Returns:
		  a MultiGraphNodeProto that records the results.
	**/
	public function profile_python(options:Dynamic):Dynamic;
	/**
		Serialize the ProfileProto to a binary string.
		
		  Users can write it to file for offline analysis by tfprof commandline
		  or graphical interface.
		
		Returns:
		  ProfileProto binary string.
	**/
	public function serialize_to_string():Dynamic;
}