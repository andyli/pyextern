/* This file is generated, do not edit! */
package tensorflow.contrib.quantize.python.common;
@:pythonImport("tensorflow.contrib.quantize.python.common") extern class Common_Module {
	/**
		Finds batch norm layers, returns their prefixes as a list of strings.
		
		Args:
		  graph: Graph to inspect.
		
		Returns:
		  List of strings, prefixes of batch norm group names found.
	**/
	static public function BatchNormGroups(graph:Dynamic):Dynamic;
	/**
		Returns a Tensor of the number of steps the quantized graph has run.
		
		Returns:
		  Quantization step Tensor.
	**/
	static public function CreateOrGetQuantizationStep():Dynamic;
	/**
		If the string starts with this prefix, drops it.
	**/
	static public function DropStringPrefix(s:Dynamic, prefix:Dynamic):Dynamic;
	/**
		Returns an Operation with the given prefix and a valid end point suffix.
		
		Args:
		  graph: Graph where to look for the operation.
		  prefix: String, prefix of Operation to return.
		
		Returns:
		  The Operation with the given prefix and a valid end point suffix or None if
		  there are no matching operations in the graph for any valid suffix
	**/
	static public function GetEndpointActivationOp(graph:Dynamic, prefix:Dynamic):Dynamic;
	/**
		Reroute the end of the tensor t0 to the ends of the tensor t1.
		
		Args:
		  t0: a tf.Tensor.
		  t1: a tf.Tensor.
		  can_modify: iterable of operations which can be modified. Any operation
		    outside within_ops will be left untouched by this function.
		
		Returns:
		  The number of individual modifications made by the function.
	**/
	static public function RerouteTensor(t0:Dynamic, t1:Dynamic, ?can_modify:Dynamic):Dynamic;
	static public var SKIPPED_PREFIXES : Dynamic;
	static public var _ACTIVATION_OP_SUFFIXES : Dynamic;
	static public var _BATCHNORM_RE : Dynamic;
	/**
		Returns an Operation with the given name.
		
		Args:
		  graph: Graph where to look for the operation.
		  name: String, name of Operation to return.
		
		Returns:
		  The Operation with the given name. None if the name does not correspond to
		  any operation in the graph
	**/
	static public function _GetOperationByNameDontThrow(graph:Dynamic, name:Dynamic):Dynamic;
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
}