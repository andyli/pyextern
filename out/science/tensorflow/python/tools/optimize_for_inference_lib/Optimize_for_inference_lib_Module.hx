/* This file is generated, do not edit! */
package tensorflow.python.tools.optimize_for_inference_lib;
@:pythonImport("tensorflow.python.tools.optimize_for_inference_lib") extern class Optimize_for_inference_lib_Module {
	static public var EPSILON_ATTR : Dynamic;
	/**
		Registry of 'Flag' objects.
		
		A 'FlagValues' can then scan command line arguments, passing flag
		arguments through to the 'Flag' objects that it owns.  It also
		provides easy access to the flag values.  Typically only one
		'FlagValues' object is needed by an application: flags.FLAGS
		
		This class is heavily overloaded:
		
		'Flag' objects are registered via __setitem__:
		     FLAGS['longname'] = x   # register a new flag
		
		The .value attribute of the registered 'Flag' objects can be accessed
		as attributes of this 'FlagValues' object, through __getattr__.  Both
		the long and short name of the original 'Flag' objects can be used to
		access its value:
		     FLAGS.longname          # parsed flag value
		     FLAGS.x                 # parsed flag value (short name)
		
		Command line arguments are scanned and passed to the registered 'Flag'
		objects through the __call__ method.  Unparsed arguments, including
		argv[0] (e.g. the program name) are returned.
		     argv = FLAGS(sys.argv)  # scan command line arguments
		
		The original registered Flag objects can be retrieved through the use
		of the dictionary-like operator, __getitem__:
		     x = FLAGS['longname']   # access the registered Flag object
		
		The str() operator of a 'FlagValues' object provides help for all of
		the registered 'Flag' objects.
	**/
	static public function FLAGS(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var INPUT_ORDER : Dynamic;
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
	/**
		Makes sure that the graph is internally consistent.
		
		Checks basic properties of the graph def and raises an exception if there are
		input references to missing nodes, duplicated names, or other logic errors.
		
		Args:
		  graph_def: Definition of a graph to be checked.
		
		Raises:
		  ValueError: If the graph is incorrectly constructed.
	**/
	static public function ensure_graph_is_valid(graph_def:Dynamic):Dynamic;
	/**
		Removes batch normalization ops by folding them into convolutions.
		
		Batch normalization during training has multiple dynamic parameters that are
		updated, but once the graph is finalized these become constants. That means
		there's an opportunity to reduce the computations down to a scale and
		addition, rather than the more expensive multiple ops, and even bake the
		scaling into the convolution weights. This function identifies the typical
		pattern of batch normalization subgraphs, and performs the transformation to
		fold the computations down into a simpler form. It currently only supports
		batch normalization that's performed by the BatchNormWithGlobalNormalization
		FusedBatchNorm and FusedBatchNormV3 ops, and will need to be extended in the
		future to handle the newer style.
		
		Args:
		  input_graph_def: A GraphDef containing a model.
		
		Returns:
		  Modified graph with BN ops removed, and modified weights.
		
		Raises:
		  ValueError: If the graph is badly formed with duplicate node names.
	**/
	static public function fold_batch_norms(input_graph_def:Dynamic):Dynamic;
	/**
		Merges preceding resize and mirror pad ops into a specialized convolution.
		
		There's a common pattern of enlarging the input to a convolution using a
		resize operation, and also using MirrorPad to extend the boundaries to that
		zero edge pixels don't bleed inwards when convolving. This routine looks for
		that pattern of operations, and fuses them together into a Conv2DWithResizeOp.
		
		Args:
		  input_graph_def: A GraphDef containing a model.
		  output_node_names: A list of names of the nodes that produce the final
		    results.
		
		Returns:
		  Modified graph with resize and pad ops merged.
		
		Raises:
		  ValueError: If the graph is badly formed with duplicate node names.
	**/
	static public function fuse_resize_and_conv(input_graph_def:Dynamic, output_node_names:Dynamic):Dynamic;
	/**
		Pulls a node def from a dictionary for a given name.
		
		Args:
		  node_map: Dictionary containing an entry indexed by name for every node.
		  name: Identifies the node we want to find.
		
		Returns:
		  NodeDef of the node with the given name.
		
		Raises:
		  ValueError: If the node isn't present in the dictionary.
	**/
	static public function node_from_map(node_map:Dynamic, name:Dynamic):Dynamic;
	/**
		Strips off ports and other decorations to get the underlying node name.
	**/
	static public function node_name_from_input(node_name:Dynamic):Dynamic;
	/**
		Applies a series of inference optimizations on the input graph.
		
		Args:
		  input_graph_def: A GraphDef containing a training model.
		  input_node_names: A list of names of the nodes that are fed inputs during
		    inference.
		  output_node_names: A list of names of the nodes that produce the final
		    results.
		  placeholder_type_enum: The AttrValue enum for the placeholder data type, or
		      a list that specifies one value per input node name.
		  toco_compatible: Boolean, if True, only runs optimizations that result in
		    TOCO compatible graph operations (default=False).
		
		Returns:
		  An optimized version of the input graph.
	**/
	static public function optimize_for_inference(input_graph_def:Dynamic, input_node_names:Dynamic, output_node_names:Dynamic, placeholder_type_enum:Dynamic, ?toco_compatible:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function scale_after_normalization(node:Dynamic):Dynamic;
	/**
		Extracts the values from a const NodeDef as a numpy ndarray.
		
		Args:
		  node_def: Const NodeDef that has the values we want to access.
		
		Returns:
		  Numpy ndarray containing the values.
		
		Raises:
		  ValueError: If the node isn't a Const.
	**/
	static public function values_from_const(node_def:Dynamic):Dynamic;
}