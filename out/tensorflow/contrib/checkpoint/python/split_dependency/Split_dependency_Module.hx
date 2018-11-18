/* This file is generated, do not edit! */
package tensorflow.contrib.checkpoint.python.split_dependency;
@:pythonImport("tensorflow.contrib.checkpoint.python.split_dependency") extern class Split_dependency_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates multiple dependencies with a synchronized save/restore.
		
		Useful when a single op produces `Tensor`s which should each be saved under
		different objects, or when `Tensor`s saved with many different objects need to
		be restored together as inputs to a single op (i.e. an object which uses a
		single fused op may be swapped out for a subgraph of objects, and these two
		programs are checkpoint compatible).
		
		Args:
		  component_names: A sequence of names for the split
		    dependencies. `fill_save_buffer_fn` must add these keys to the dictionary
		    it is passed, and `consume_restore_buffer_fn` will receive a dictionary
		    with these keys.
		  component_dtypes: Data types for the `Tensor`s being saved and restored, a
		    sequence corresponding to `component_names`.
		  fill_save_buffer_fn: A function which takes an empty dictionary as an
		    argument and adds `Tensor`s with `component_names` as keys. These
		    `Tensor`s will be saved as if they were individual variables.
		  consume_restore_buffer_fn: A function which takes a dictionary with
		    `component_names` as keys mapping to restored individual `Tensor`s and
		    returns a restore op (or if executing eagerly, runs the restoration and
		    may return `None`).
		
		Returns:
		  A dictionary mapping from names to Checkpointable objects. If one is
		  reachable from an object as a dependency, the others should be too; adding
		  dependencies on some but not all of the objects will result in errors.
	**/
	static public function split_dependency(component_names:Dynamic, component_dtypes:Dynamic, fill_save_buffer_fn:Dynamic, consume_restore_buffer_fn:Dynamic):Dynamic;
}