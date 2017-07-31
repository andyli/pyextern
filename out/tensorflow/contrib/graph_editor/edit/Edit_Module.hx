/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.edit;
@:pythonImport("tensorflow.contrib.graph_editor.edit") extern class Edit_Module {
	static public var __all__ : Dynamic;
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
		Bypass the given subgraph by connecting its inputs to its outputs.
		
		Args:
		  sgv: the subgraph view to be bypassed. This argument is converted to a
		    subgraph using the same rules than the function subgraph.make_view.
		    Note that sgv is modified in place.
		Returns:
		  A tuple `(sgv, detached_inputs)` where:
		    `sgv` is a new subgraph view of the bypassed subgraph;
		    `detached_inputs` is a list of the created input placeholders.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function bypass(sgv:Dynamic):Dynamic;
	/**
		Connect the outputs of sgv0 to the inputs of sgv1.
		
		Args:
		  sgv0: the first subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules as the function
		    subgraph.make_view.
		    Note that sgv0 is modified in place.
		  sgv1: the second subgraph to have its outputs swapped. This argument is
		    converted to a subgraph using the same rules as the function
		    subgraph.make_view.
		    Note that sgv1 is modified in place.
		  disconnect_first: if True the current outputs of sgv0 are disconnected.
		Returns:
		  A tuple `(sgv0, sgv1)` of the now connected subgraphs.
		Raises:
		  StandardError: if sgv0 or sgv1 cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function connect(sgv0:Dynamic, sgv1:Dynamic, ?disconnect_first:Dynamic):Dynamic;
	/**
		Detach both the inputs and the outputs of a subgraph view.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		    Note that sgv is modified in place.
		  control_inputs: A boolean indicating whether control inputs are enabled.
		  control_outputs: An instance of util.ControlOutputs or None. If not None,
		    control outputs are enabled.
		  control_ios:  An instance of util.ControlOutputs or None. If not None, both
		    control inputs and control outputs are enabled. This is equivalent to set
		    control_inputs to True and control_outputs to the util.ControlOutputs
		    instance.
		Returns:
		  A tuple `(sgv, detached_inputs, detached_outputs)` where:
		  `sgv` is a new subgraph view of the detached subgraph;
		  `detach_inputs` is a list of the created input placeholders;
		  `detach_outputs` is a list of the created output placeholders.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function detach(sgv:Dynamic, ?control_inputs:Dynamic, ?control_outputs:Dynamic, ?control_ios:Dynamic):Dynamic;
	/**
		Detach all the external control inputs of the subgraph sgv.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
	**/
	static public function detach_control_inputs(sgv:Dynamic):Dynamic;
	/**
		Detach all the external control outputs of the subgraph sgv.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		  control_outputs: a util.ControlOutputs instance.
	**/
	static public function detach_control_outputs(sgv:Dynamic, control_outputs:Dynamic):Dynamic;
	/**
		Detach the inputs of a subgraph view.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		    Note that sgv is modified in place.
		  control_inputs: if True control_inputs are also detached.
		Returns:
		  A tuple `(sgv, input_placeholders)` where
		    `sgv` is a new subgraph view of the detached subgraph;
		    `input_placeholders` is a list of the created input placeholders.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function detach_inputs(sgv:Dynamic, ?control_inputs:Dynamic):Dynamic;
	/**
		Detach the output of a subgraph view.
		
		Args:
		  sgv: the subgraph view to be detached. This argument is converted to a
		    subgraph using the same rules as the function subgraph.make_view.
		    Note that sgv is modified in place.
		  control_outputs: a util.ControlOutputs instance or None. If not None the
		    control outputs are also detached.
		Returns:
		  A tuple `(sgv, output_placeholders)` where
		    `sgv` is a new subgraph view of the detached subgraph;
		    `output_placeholders` is a list of the created output placeholders.
		Raises:
		  StandardError: if sgv cannot be converted to a SubGraphView using
		    the same rules than the function subgraph.make_view.
	**/
	static public function detach_outputs(sgv:Dynamic, ?control_outputs:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}