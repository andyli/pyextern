/* This file is generated, do not edit! */
package tensorflow.python.util.tf_stack;
@:pythonImport("tensorflow.python.util.tf_stack") extern class Tf_stack_Module {
	static public var TB_CODEDICT : Dynamic;
	static public var TB_FILENAME : Dynamic;
	static public var TB_FUNCNAME : Dynamic;
	static public var TB_LINENO : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts a stack extracted using extract_stack() to a traceback stack.
		
		Args:
		  stack: A list of n 5-tuples,
		    (filename, lineno, name, frame_globals, func_start_lineno).
		  include_func_start_lineno: True if function start line number should be
		    included as the 5th entry in return tuples.
		
		Returns:
		  A list of n 4-tuples or 5-tuples
		  (filename, lineno, name, code, [optional: func_start_lineno]), where the
		  code tuple element is calculated from the corresponding elements of the
		  input tuple.
	**/
	static public function convert_stack(stack:Dynamic, ?include_func_start_lineno:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		A lightweight, extensible re-implementation of traceback.extract_stack.
		
		NOTE(mrry): traceback.extract_stack eagerly retrieves the line of code for
		    each stack frame using linecache, which results in an abundance of stat()
		    calls. This implementation does not retrieve the code, and any consumer
		    should apply _convert_stack to the result to obtain a traceback that can
		    be formatted etc. using traceback methods.
		
		Args:
		  extract_frame_info_fn: Optional callable fn(stack_frame) applied to each
		      stack frame.  This callable's return value is stored as the sixth (last)
		      element of the returned tuples.  If not provided, the returned tuples
		      will have None as their sixth value.
		
		Returns:
		  A list of 6-tuples
		      (filename, lineno, name, frame_globals, func_start_lineno, custom_info)
		  corresponding to the call stack of the current thread.  The returned tuples
		  have the innermost stack frame at the end, unlike the Python inspect
		  module's stack() function.
	**/
	static public function extract_stack(?extract_frame_info_fn:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}