/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.error_utils;
@:pythonImport("tensorflow.python.autograph.pyct.error_utils") extern class Error_utils_Module {
	static public var KNOWN_STRING_CONSTRUCTOR_ERRORS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Summarizes inner traceback frames up to the call to a given function.
		
		This functions locates the innermost (i.e. most recent) frame that corresponds
		to code that can be mapped by source_map originated from, and returns a
		translated stack trace ending at that frame. If no such frame is found, the
		entire stack trace is summarized.
		
		For example, the following code:
		
		  def f():
		    for i in tf.range(1):
		      z = y + i  # z only defined here
		
		Would generate this traceback:
		
		  <converted code>
		      ag__.for_stmt(...)
		  <for_stmt>
		      return _known_len_tf_for_stmt(iter_, extra_test, body, init_state)
		  <_known_len_tf_for_stmt>
		      _disallow_undefs_into_loop(*init_state)
		  <_disallow_undefs_into_loop>
		      raise ...
		
		Which is then processed into:
		
		  <f>
		      for i in tf.range(1):
		  <for_stmt>
		      return _known_len_tf_for_stmt(iter_, extra_test, body, init_state)
		  <_known_len_tf_for_stmt>
		      _disallow_undefs_into_loop(*init_state)
		  <_disallow_undefs_into_loop>
		      raise ...
		
		Args:
		  tb: traceback.FrameSummary, The traceback corresponding to an error.
		    Typically, the output of traceback.Summary.extract(capture_locals=True).
		  source_map: Dict[LineLocation, OriginInfo], a source map as created by
		    origin_info.create_source_map.
		  converter_filename: str, the file path of the converted module. Call frames
		    corresponding to this module are elided and their preceding frames are
		    marked as allowlisted. Note that frames enclosing converted code are
		    dropped using a different mechanism.
		
		Returns:
		  List[FrameInfo]
	**/
	static public function _stack_trace_inside_mapped_code(tb:Dynamic, source_map:Dynamic, converter_filename:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}