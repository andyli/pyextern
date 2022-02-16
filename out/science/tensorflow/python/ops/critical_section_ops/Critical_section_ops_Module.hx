/* This file is generated, do not edit! */
package tensorflow.python.ops.critical_section_ops;
@:pythonImport("tensorflow.python.ops.critical_section_ops") extern class Critical_section_ops_Module {
	static public var CRITICAL_SECTIONS : Dynamic;
	static public var CRITICAL_SECTION_EXECUTIONS : Dynamic;
	static public var _CRITICAL_SECTION_STACK : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get colocation symbol from op, if any.
	**/
	static public function _get_colocation(op:Dynamic):Dynamic;
	static public function _get_critical_section_stack():Dynamic;
	static public function _get_device_or_colocation(op:Dynamic):Dynamic;
	/**
		Identity op that recognizes `TensorArray`, `Operation`, and `Tensor`.
	**/
	static public function _identity(x:Dynamic):Dynamic;
	/**
		Push a CriticalSection._signature to the thread-local stack.
		
		If the signature is already on the stack, raise an error because it means
		we're trying to execute inside the same locked CriticalSection, which
		will create a deadlock.
		
		Args:
		  signature: Tuple of the type `CriticalSection._signature`.  Uniquely
		    identifies a CriticalSection by its `shared_name`, `container`,
		    and device.
		
		Yields:
		  An empty value.  The context is guaranteed to run without deadlock.
		
		Raises:
		  ValueError: If the signature is already on the stack.
		  RuntimeError: If another thread or function modifies the current stack
		    entry during the yield.
	**/
	static public function _push_critical_section_stack(signature:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}