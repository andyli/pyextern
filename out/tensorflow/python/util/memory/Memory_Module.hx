/* This file is generated, do not edit! */
package tensorflow.python.util.memory;
@:pythonImport("tensorflow.python.util.memory") extern class Memory_Module {
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
		Remove reference cycle in OrderedDict `ordered_dict`.
		
		Helpful for making sure the garbage collector doesn't need to run after
		using an OrderedDict.
		
		Args:
		  ordered_dict: A `OrderedDict` object to destroy. This object is unusable
		    after this function runs.
	**/
	static public function dismantle_ordered_dict(ordered_dict:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}