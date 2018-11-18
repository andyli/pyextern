/* This file is generated, do not edit! */
package tensorflow.python.profiler.option_builder;
@:pythonImport("tensorflow.python.profiler.option_builder", "ProfileOptionBuilder") extern class ProfileOptionBuilder {
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
		  options: Optional initial option dict to start with.
	**/
	@:native("__init__")
	public function ___init__(?options:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  options: Optional initial option dict to start with.
	**/
	public function new(?options:Dynamic):Void;
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
		Whether only account the statistics of displayed profiler nodes.
		
		Args:
		  is_true: If true, only account statistics of nodes eventually
		      displayed by the outputs.
		      Otherwise, a node's statistics are accounted by its parents
		      as long as it's types match 'account_type_regexes', even if
		      it is hidden from the output, say, by hide_name_regexes.
		Returns:
		  self
	**/
	public function account_displayed_op_only(is_true:Dynamic):Dynamic;
	/**
		Build a profiling option.
		
		Returns:
		  A dict of profiling options.
	**/
	public function build():Dynamic;
	/**
		Options used to profile float operations.
		
		Please see https://github.com/tensorflow/tensorflow/tree/master/tensorflow/core/profiler/g3doc/profile_model_architecture.md
		on the caveats of calculating float operations.
		
		Returns:
		  A dict of profiling options.
	**/
	static public function float_operation():Dynamic;
	/**
		Order the displayed profiler nodes based on a attribute.
		
		Supported attribute includes micros, bytes, occurrence, params, etc.
		https://github.com/tensorflow/tensorflow/tree/master/tensorflow/core/profiler/g3doc/options.md
		
		Args:
		  attribute: An attribute the profiler node has.
		Returns:
		  self
	**/
	public function order_by(attribute:Dynamic):Dynamic;
	/**
		Select the attributes to display.
		
		See https://github.com/tensorflow/tensorflow/tree/master/tensorflow/core/profiler/g3doc/options.md
		for supported attributes.
		
		Args:
		  attributes: A list of attribute the profiler node has.
		Returns:
		  self
	**/
	public function select(attributes:Dynamic):Dynamic;
	/**
		Show operation time and memory consumptions.
		
		Args:
		  min_micros: Only show profiler nodes with execution time
		      no less than this. It sums accelerator and cpu times.
		  min_bytes: Only show profiler nodes requested to allocate no less bytes
		      than this.
		  min_accelerator_micros: Only show profiler nodes spend no less than
		      this time on accelerator (e.g. GPU).
		  min_cpu_micros: Only show profiler nodes spend no less than
		      this time on cpu.
		  min_peak_bytes: Only show profiler nodes using no less than this bytes
		      at peak (high watermark). For profiler nodes consist of multiple
		      graph nodes, it sums the graph nodes' peak_bytes.
		  min_residual_bytes: Only show profiler nodes have no less than
		      this bytes not being de-allocated after Compute() ends. For
		      profiler nodes consist of multiple graph nodes, it sums the
		      graph nodes' residual_bytes.
		  min_output_bytes: Only show profiler nodes have no less than this bytes
		      output. The output are not necessarily allocated by this profiler
		      nodes.
		Returns:
		  A dict of profiling options.
	**/
	static public function time_and_memory(?min_micros:Dynamic, ?min_bytes:Dynamic, ?min_accelerator_micros:Dynamic, ?min_cpu_micros:Dynamic, ?min_peak_bytes:Dynamic, ?min_residual_bytes:Dynamic, ?min_output_bytes:Dynamic):Dynamic;
	/**
		Options used to profile trainable variable parameters.
		
		Normally used together with 'scope' view.
		
		Returns:
		  A dict of profiling options.
	**/
	static public function trainable_variables_parameter():Dynamic;
	/**
		Selectively counting statistics based on node types.
		
		Here, 'types' means the profiler nodes' properties. Profiler by default
		consider device name (e.g. /job:xx/.../device:GPU:0) and operation type
		(e.g. MatMul) as profiler nodes' properties. User can also associate
		customized 'types' to profiler nodes through OpLogProto proto.
		
		For example, user can select profiler nodes placed on gpu:0 with:
		`account_type_regexes=['.*gpu:0.*']`
		
		If none of a node's properties match the specified regexes, the node is
		not displayed nor accounted.
		
		Args:
		  account_type_regexes: A list of regexes specifying the types.
		Returns:
		  self.
	**/
	public function with_accounted_types(account_type_regexes:Dynamic):Dynamic;
	/**
		Do not generate side-effect outputs.
	**/
	public function with_empty_output():Dynamic;
	/**
		Print the result to a file.
	**/
	public function with_file_output(outfile:Dynamic):Dynamic;
	/**
		Set the maximum depth of display.
		
		The depth depends on profiling view. For 'scope' view, it's the
		depth of name scope hierarchy (tree), for 'op' view, it's the number
		of operation types (list), etc.
		
		Args:
		  max_depth: Maximum depth of the data structure to display.
		Returns:
		  self
	**/
	public function with_max_depth(max_depth:Dynamic):Dynamic;
	/**
		Only show profiler nodes consuming no less than 'min_micros'.
		
		Args:
		  min_micros: Only show profiler nodes with execution time
		      no less than this. It sums accelerator and cpu times.
		  min_accelerator_micros: Only show profiler nodes spend no less than
		      this time on accelerator (e.g. GPU).
		  min_cpu_micros: Only show profiler nodes spend no less than
		      this time on cpu.
		Returns:
		  self
	**/
	public function with_min_execution_time(?min_micros:Dynamic, ?min_accelerator_micros:Dynamic, ?min_cpu_micros:Dynamic):Dynamic;
	/**
		Only show profiler nodes consuming no less than 'min_float_ops'.
		
		Please see https://github.com/tensorflow/tensorflow/tree/master/tensorflow/core/profiler/g3doc/profile_model_architecture.md
		on the caveats of calculating float operations.
		
		Args:
		  min_float_ops: Only show profiler nodes with float operations
		      no less than this.
		Returns:
		  self
	**/
	public function with_min_float_operations(min_float_ops:Dynamic):Dynamic;
	/**
		Only show profiler nodes consuming no less than 'min_bytes'.
		
		Args:
		  min_bytes: Only show profiler nodes requested to allocate no less bytes
		      than this.
		  min_peak_bytes: Only show profiler nodes using no less than this bytes
		      at peak (high watermark). For profiler nodes consist of multiple
		      graph nodes, it sums the graph nodes' peak_bytes.
		  min_residual_bytes: Only show profiler nodes have no less than
		      this bytes not being de-allocated after Compute() ends. For
		      profiler nodes consist of multiple graph nodes, it sums the
		      graph nodes' residual_bytes.
		  min_output_bytes: Only show profiler nodes have no less than this bytes
		      output. The output are not necessarily allocated by this profiler
		      nodes.
		Returns:
		  self
	**/
	public function with_min_memory(?min_bytes:Dynamic, ?min_peak_bytes:Dynamic, ?min_residual_bytes:Dynamic, ?min_output_bytes:Dynamic):Dynamic;
	/**
		Only show profiler nodes including no less than 'min_occurrence' graph nodes.
		
		A "node" means a profiler output node, which can be a python line
		(code view), an operation type (op view), or a graph node
		(graph/scope view). A python line includes all graph nodes created by that
		line, while an operation type includes all graph nodes of that type.
		
		Args:
		  min_occurrence: Only show nodes including no less than this.
		Returns:
		  self
	**/
	public function with_min_occurrence(min_occurrence:Dynamic):Dynamic;
	/**
		Only show profiler nodes holding no less than 'min_params' parameters.
		
		'Parameters' normally refers the weights of in TensorFlow variables.
		It reflects the 'capacity' of models.
		
		Args:
		  min_params: Only show profiler nodes holding number parameters
		      no less than this.
		Returns:
		  self
	**/
	public function with_min_parameters(min_params:Dynamic):Dynamic;
	/**
		Regular expressions used to select profiler nodes to display.
		
		After 'with_accounted_types' is evaluated, 'with_node_names' are
		evaluated as follows:
		
		  For a profile data structure, profiler first finds the profiler
		  nodes matching 'start_name_regexes', and starts displaying profiler
		  nodes from there. Then, if a node matches 'show_name_regexes' and
		  doesn't match 'hide_name_regexes', it's displayed. If a node matches
		  'trim_name_regexes', profiler stops further searching that branch.
		
		Args:
		  start_name_regexes: list of node name regexes to start displaying.
		  show_name_regexes: list of node names regexes to display.
		  hide_name_regexes: list of node_names regexes that should be hidden.
		  trim_name_regexes: list of node name regexes from where to stop.
		Returns:
		  self
	**/
	public function with_node_names(?start_name_regexes:Dynamic, ?show_name_regexes:Dynamic, ?hide_name_regexes:Dynamic, ?trim_name_regexes:Dynamic):Dynamic;
	/**
		Generate a pprof profile gzip file.
		
		To use the pprof file:
		  pprof -png --nodecount=100 --sample_index=1 <pprof_file>
		
		Args:
		  pprof_file: filename for output, usually suffixed with .pb.gz.
		Returns:
		  self.
	**/
	public function with_pprof_output(pprof_file:Dynamic):Dynamic;
	/**
		Print the result to stdout.
	**/
	public function with_stdout_output():Dynamic;
	/**
		Which profile step to use for profiling.
		
		The 'step' here refers to the step defined by `Profiler.add_step()` API.
		
		Args:
		  step: When multiple steps of profiles are available, select which step's
		     profile to use. If -1, use average of all available steps.
		Returns:
		  self
	**/
	public function with_step(step:Dynamic):Dynamic;
	/**
		Generate a timeline json file.
	**/
	public function with_timeline_output(timeline_file:Dynamic):Dynamic;
}