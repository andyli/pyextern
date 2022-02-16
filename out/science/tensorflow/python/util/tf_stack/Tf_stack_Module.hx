/* This file is generated, do not edit! */
package tensorflow.python.util.tf_stack;
@:pythonImport("tensorflow.python.util.tf_stack") extern class Tf_stack_Module {
	static public var EMPTY_DICT : Dynamic;
	static public var EMPTY_SET : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		get_ident() -> integer
		
		Return a non-zero integer that uniquely identifies the current thread
		amongst other threads that exist simultaneously.
		This may be used to identify per-thread resources.
		Even though on some platforms threads identities may appear to be
		allocated consecutive numbers starting at 1, this behavior should not
		be relied upon, and the number should be seen purely as a magic cookie.
		A thread's identity may be reused for another thread after it exits.
	**/
	static public function _get_thread_key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _source_filter_stacks : Dynamic;
	static public var _source_mapper_stacks : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		An eager-friendly alternative to traceback.extract_stack.
		
		Returns:
		  A list-like FrameSummary containing StackFrame-like objects, which are
		  namedtuple-like objects with the following fields: filename, lineno, name,
		  line, meant to masquerade as traceback.FrameSummary objects.
	**/
	static public function extract_stack():Dynamic;
	/**
		Attaches the current stack trace to `node`.
		
		Args:
		  node: a Node object.
		
		Returns:
		  A list-like FrameSummary containing StackFrame-like objects, which are
		  namedtuple-like objects with the following fields: filename, lineno, name,
		  line, meant to masquerade as traceback.FrameSummary objects.
	**/
	static public function extract_stack_for_node(node:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}