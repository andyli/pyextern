/* This file is generated, do not edit! */
package tensorflow.python.tpu.tensor_tracer_flags;
@:pythonImport("tensorflow.python.tpu.tensor_tracer_flags", "TTParameters") extern class TTParameters {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(?env:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?env:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function _check_flag_errors():Dynamic;
	/**
		Returns the integer list of a TensorTracer flag.
		
		Args:
		  wanted_flag_name: the name of the flag we are looking for.
		
		Returns:
		  the value of the flag.
		Raises:
		  RuntimeError: If supposedly deadcode is reached.
	**/
	public function _flag_value_as_int_list(wanted_flag_name:Dynamic):Dynamic;
	/**
		Returns the string list of a TensorTracer flag.
		
		Args:
		  wanted_flag_name: the name of the flag we are looking for.
		
		Returns:
		  The list value of the flag.
	**/
	public function _flag_value_as_list(wanted_flag_name:Dynamic):Dynamic;
	/**
		Converts list of strings to compiled RE.
	**/
	public function _flag_value_to_re_list(flag_name:Dynamic):Dynamic;
	/**
		Returns the int value of a TensorTracer flag.
		
		Args:
		  wanted_flag_name: the name of the flag we are looking for.
		  default_value: the default value for the flag, if not provided.
		Returns:
		  the value of the flag.
		Raises:
		  RuntimeError: If supposedly deadcode is reached.
	**/
	public function _get_flag_int_value(wanted_flag_name:Dynamic, default_value:Dynamic):Dynamic;
	/**
		Sets the index range of the Ops that we will consider tracing.
	**/
	public function _get_op_range():Dynamic;
	/**
		Sets the path of the output report file.
	**/
	public function _get_report_filepath():Dynamic;
	/**
		Checks if the given submode is valid.
	**/
	public function _get_submode():Dynamic;
	/**
		Returns the summary mode after checking if it is valid.
	**/
	public function _get_summary_mode():Dynamic;
	/**
		Verifies and returns the summary signatures.
		
		Returns:
		  A dictionary of the signature identifiers {signature: index} that will be
		  computed when trace_mode is summary.
	**/
	public function _get_summary_signatures():Dynamic;
	public function _get_trace_dir():Dynamic;
	/**
		Checks if the given trace mode is valid.
	**/
	public function _get_trace_mode():Dynamic;
	/**
		Returns a tuple of supported signatures.
	**/
	public function _supported_signatures():Dynamic;
	/**
		Validates if the TensorTrace flags passed are valid.
	**/
	public function _validate_flag_names():Dynamic;
	/**
		Returns the value of a TensorTracer flags.
		
		Args:
		  wanted_flag_name: the name of the flag we are looking for.
		
		Returns:
		  A pair where the first element indicates if the flag is
		  found and the second element is the value of the flag.
		
		Raises:
		  RuntimeError: If supposedly deadcode is reached.
	**/
	public function get_flag_value(wanted_flag_name:Dynamic):Dynamic;
	/**
		Returns a map that contains the aggregate function for each signature.
	**/
	public function get_signature_to_agg_fn_map():Dynamic;
	public function is_brief_mode():Dynamic;
	/**
		Returns True if TensorTracer is enabled.
	**/
	public function is_enabled():Dynamic;
	/**
		Returns True if the given flag is on.
	**/
	public function is_flag_on(flag_name:Dynamic):Dynamic;
	/**
		Returns the match for the next TensorTracer flag.
		
		Args:
		   flags: a string that contains the flags.
		   pos: where in flags to start the search.
		
		Returns:
		   A pair where the first element is the regular-expression
		   match found and the second element indicates if the match
		   has a value.
	**/
	static public function match_next_flag(flags:Dynamic, pos:Dynamic):Dynamic;
	/**
		Decides the output directory of the report and trace files.
		
		Args:
		   None.
		
		Returns:
		   True if the output files should be written to the
		   test-undeclared-outputs-directory defined via an
		   env variable.
	**/
	public function use_test_undeclared_outputs_dir():Dynamic;
}