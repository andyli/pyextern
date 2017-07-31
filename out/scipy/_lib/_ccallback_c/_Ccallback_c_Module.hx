/* This file is generated, do not edit! */
package scipy._lib._ccallback_c;
@:pythonImport("scipy._lib._ccallback_c") extern class _Ccallback_c_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		check_capsule(item)
		
		Return True if the given object is a PyCapsule.
	**/
	static public function check_capsule(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_capsule_signature(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_raw_capsule(ptr, name, context)
		
		Create a new PyCapsule with given pointer, name, and context.
		
		Parameters
		----------
		ptr : {PyCapsule, int}
		    Memory address of the pointer.
		name : str
		    Python string containing the signature.
		context : {PyCapsule, int}
		    Memory address of the context.
		    If NULL and ptr is a PyCapsule, use the one from the context of ptr.
	**/
	static public function get_raw_capsule(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var idx : Dynamic;
	static public function plus1_ctypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function plus1b_ctypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function plus1bc_ctypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var sig : Dynamic;
	static public var sigs : Dynamic;
	static public function sine_ctypes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implementation of a caller routine in Cython
	**/
	static public function test_call_cython(args:haxe.extern.Rest<Dynamic>):Dynamic;
}