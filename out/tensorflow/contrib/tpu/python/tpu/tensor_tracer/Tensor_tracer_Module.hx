/* This file is generated, do not edit! */
package tensorflow.contrib.tpu.python.tpu.tensor_tracer;
@:pythonImport("tensorflow.contrib.tpu.python.tpu.tensor_tracer") extern class Tensor_tracer_Module {
	static public var _DEVICE_TYPE_CPU : Dynamic;
	static public var _DEVICE_TYPE_TPU : Dynamic;
	static public var _FIELD_NAME_DEVICE : Dynamic;
	static public var _FIELD_NAME_NUM_OPS : Dynamic;
	static public var _FIELD_NAME_NUM_REPLICAS : Dynamic;
	static public var _FIELD_NAME_NUM_TENSORS : Dynamic;
	static public var _FIELD_NAME_TOPOLOGICAL_SORT_SUCCEED : Dynamic;
	static public var _FIELD_NAME_TRACE_MODE : Dynamic;
	static public var _FIELD_NAME_VERSION : Dynamic;
	static public var _FLAGS_ENV_VAR : Dynamic;
	static public var _FLAG_DOUBLE_QUOTE_PAT : Dynamic;
	static public var _FLAG_NAME_ENABLE : Dynamic;
	static public var _FLAG_NAME_EXCLUDED_OPNAMES : Dynamic;
	static public var _FLAG_NAME_EXCLUDED_OPTYPES : Dynamic;
	static public var _FLAG_NAME_INCLUDED_OPNAMES : Dynamic;
	static public var _FLAG_NAME_INCLUDED_OPTYPES : Dynamic;
	static public var _FLAG_NAME_INCLUDE_LESS_INTERESTING_OPS : Dynamic;
	static public var _FLAG_NAME_OP_RANGE : Dynamic;
	static public var _FLAG_NAME_REPORT_FILE : Dynamic;
	static public var _FLAG_NAME_TRACE_FILE : Dynamic;
	static public var _FLAG_NAME_TRACE_MODE : Dynamic;
	static public var _FLAG_NAME_USE_TEST_UNDECLARED_OUTPUTS_DIR : Dynamic;
	static public var _FLAG_NO_QUOTE_PAT : Dynamic;
	static public var _FLAG_SINGLE_QUOTE_PAT : Dynamic;
	static public var _MARKER_SECTION_BEGIN : Dynamic;
	static public var _MARKER_SECTION_END : Dynamic;
	static public var _OP_RANGE_PAT : Dynamic;
	static public var _OUTPUT_STREAM_ESCAPE : Dynamic;
	static public var _REASON_DEVICE_MISMATCH : Dynamic;
	static public var _REASON_DYNAMIC_SHAPE : Dynamic;
	static public var _REASON_LESS_INTERESTING_OP : Dynamic;
	static public var _REASON_NON_NUMERIC_TENSOR : Dynamic;
	static public var _REASON_OUTSIDE_OP_RANGE : Dynamic;
	static public var _REASON_SCALAR_GET_TRACED : Dynamic;
	static public var _REASON_TENSOR_GET_TRACED : Dynamic;
	static public var _REASON_UNSAFE_OP : Dynamic;
	static public var _REASON_UNSAFE_SCALAR : Dynamic;
	static public var _REASON_USER_EXCLUDED : Dynamic;
	static public var _REASON_USER_INCLUDED : Dynamic;
	static public var _SECTION_NAME_CONFIG : Dynamic;
	static public var _SECTION_NAME_GRAPH : Dynamic;
	static public var _SECTION_NAME_OP_LIST : Dynamic;
	static public var _SECTION_NAME_REASON : Dynamic;
	static public var _SECTION_NAME_TENSOR_LIST : Dynamic;
	static public var _TENSOR_TRACER_CHECKPOINT : Dynamic;
	static public var _TENSOR_TRACER_COLLECTION : Dynamic;
	static public var _TEST_UNDECLARED_OUTPUTS_DIR_ENV_VAR : Dynamic;
	static public var _TRACER_LOG_PREFIX : Dynamic;
	static public var _TRACE_MODE_FULL_TENSOR : Dynamic;
	static public var _TRACE_MODE_MAX_ABS : Dynamic;
	static public var _TRACE_MODE_NAN_INF : Dynamic;
	static public var _TRACE_MODE_NORM : Dynamic;
	static public var _TRACE_MODE_PART_TENSOR : Dynamic;
	static public var _TRACE_MODE_PART_TENSOR_SIZE : Dynamic;
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
		An interface for adding the tensor outputs of a keras layer.
		
		Encapsulates tensor_checkpoint.
		
		Args:
		   layer: A keras layer.
		   checkpoint_name: a string name for the checkpoint. This name has to be a
		   unique name if used within model comparison. The tensors that have the same
		   checkpoint identifier is compared in model comparison.
		
		Returns:
		  The provided layer.
	**/
	static public function keras_layer_checkpoint(layer:Dynamic, checkpoint_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Adds a checkpoint with the given checkpoint name for the given tensor.
		
		The tensor will be added to the list of tensors that will be traced by the
		tensor tracer.
		
		Args:
		   tensor: the tensor object for which the tracing is requested.
		   checkpoint_name: a string name for the checkpoint. This name has to be a
		   unique name if used within model comparison. The tensors that have the same
		   checkpoint identifier is compared in model comparison.
		Returns:
		  The provided tensor.
	**/
	static public function tensor_checkpoint(tensor:Dynamic, checkpoint_name:Dynamic):Dynamic;
}