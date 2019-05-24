/* This file is generated, do not edit! */
package torch._jit_internal;
@:pythonImport("torch._jit_internal") extern class _Jit_internal_Module {
	static public var BroadcastingList1 : Dynamic;
	static public var BroadcastingList2 : Dynamic;
	static public var BroadcastingList3 : Dynamic;
	static public var BroadcastingList4 : Dynamic;
	static public var BroadcastingList5 : Dynamic;
	static public var BroadcastingList6 : Dynamic;
	static public var COMPILATION_PENDING : Dynamic;
	static public var COMPILED : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _boolean_dispatched : Dynamic;
	static public var _compiled_weak_fns : Dynamic;
	static public var _weak_modules : Dynamic;
	static public var _weak_script_methods : Dynamic;
	static public var _weak_types : Dynamic;
	/**
		Dispatches to either of 2 weak script functions based on a boolean argument.
		In TorchScript, the boolean argument must be constant so that the correct
		function to use can be determined at compile time.
	**/
	static public function boolean_dispatch(arg_name:Dynamic, arg_index:Dynamic, _default:Dynamic, if_true:Dynamic, if_false:Dynamic):Dynamic;
	/**
		Creates a function which, given a string variable name,
		returns the value of the variable in the scope of the caller of
		the function which called createResolutionCallback (by default).
		
		This is used to enable access in-scope Python variables inside
		TorchScript fragments.
		
		frames_up is number of additional frames to go up on the stack.
		The default value is 0, which correspond to the frame of the caller
		of createResolutionCallback. Also for example, if frames_up is set
		to 1, then the frame of the caller's caller of createResolutionCallback
		will be taken.
		
		For example, the following program prints 2::
		
		    def bar():
		        cb = createResolutionCallback(1)
		        print(cb("foo"))
		
		    def baz():
		        foo = 2
		        bar()
		
		    baz()
	**/
	static public function createResolutionCallback(?frames_up:Dynamic):Dynamic;
	static public var i : Dynamic;
	static public function is_tuple(ann:Dynamic):Dynamic;
	static public function weak_module(cls:Dynamic):Dynamic;
	/**
		Marks a function as a weak script function. When used in a script function
		or ScriptModule, the weak script function will be lazily compiled and
		inlined in the graph. When not used in a script function, the weak script
		annotation has no effect.
	**/
	static public function weak_script(fn:Dynamic, ?_frames_up:Dynamic):Dynamic;
	static public function weak_script_method(fn:Dynamic):Dynamic;
}