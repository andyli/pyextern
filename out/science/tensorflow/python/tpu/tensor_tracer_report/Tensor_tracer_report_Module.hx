/* This file is generated, do not edit! */
package tensorflow.python.tpu.tensor_tracer_report;
@:pythonImport("tensorflow.python.tpu.tensor_tracer_report") extern class Tensor_tracer_report_Module {
	static public var _CURRENT_VERSION : Dynamic;
	static public var _FIELD_NAME_DEVICE : Dynamic;
	static public var _FIELD_NAME_NUM_CACHE_INDICES : Dynamic;
	static public var _FIELD_NAME_NUM_HOSTS : Dynamic;
	static public var _FIELD_NAME_NUM_OPS : Dynamic;
	static public var _FIELD_NAME_NUM_REPLICAS : Dynamic;
	static public var _FIELD_NAME_NUM_REPLICAS_PER_HOST : Dynamic;
	static public var _FIELD_NAME_NUM_TENSORS : Dynamic;
	static public var _FIELD_NAME_SUBMODE : Dynamic;
	static public var _FIELD_NAME_TOPOLOGICAL_SORT_SUCCEED : Dynamic;
	static public var _FIELD_NAME_TRACE_MODE : Dynamic;
	static public var _FIELD_NAME_VERSION : Dynamic;
	static public var _MARKER_SECTION_BEGIN : Dynamic;
	static public var _MARKER_SECTION_END : Dynamic;
	static public var _SECTION_NAME_CACHE_INDEX_MAP : Dynamic;
	static public var _SECTION_NAME_CONFIG : Dynamic;
	static public var _SECTION_NAME_GRAPH : Dynamic;
	static public var _SECTION_NAME_OP_LIST : Dynamic;
	static public var _SECTION_NAME_REASON : Dynamic;
	static public var _SECTION_NAME_TENSOR_LIST : Dynamic;
	static public var _SECTION_NAME_TENSOR_TRACER_CHECKPOINT : Dynamic;
	static public var _TRACER_LOG_PREFIX : Dynamic;
	static public var _TT_REPORT_PROTO : Dynamic;
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
	static public function proto_fingerprint(message_proto:Dynamic):Dynamic;
	/**
		Returns the path where report proto should be written.
		
		Args:
		   trace_dir: String denoting the trace directory.
		
		Returns:
		   A string denoting the path to the report proto.
	**/
	static public function report_proto_path(trace_dir:Dynamic):Dynamic;
	/**
		Returns a wrapper that has consistent tensor and op orders.
	**/
	static public function sort_tensors_and_ops(graph:Dynamic):Dynamic;
	/**
		Performs topological sort on the given graph.
		
		Args:
		   g: the graph.
		
		Returns:
		   A pair where the first element indicates if the topological
		   sort succeeded (True if there is no cycle found; False if a
		   cycle is found) and the second element is either the sorted
		   list of nodes or the cycle of nodes found.
	**/
	static public function topological_sort(g:Dynamic):Dynamic;
}