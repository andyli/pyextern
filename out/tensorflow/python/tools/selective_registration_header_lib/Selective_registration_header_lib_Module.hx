/* This file is generated, do not edit! */
package tensorflow.python.tools.selective_registration_header_lib;
@:pythonImport("tensorflow.python.tools.selective_registration_header_lib") extern class Selective_registration_header_lib_Module {
	static public var OPS_WITHOUT_KERNEL_WHITELIST : Dynamic;
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
		Computes a header for use with tensorflow SELECTIVE_REGISTRATION.
		
		Args:
		  graphs: a list of paths to GraphDef files to include.
		  proto_fileformat: optional format of proto file, either 'textproto' or
		    'rawproto' (default).
		  default_ops: optional comma-separated string of operator:kernel pairs to
		    always include implementation for. Pass 'all' to have all operators and
		    kernels included. Default: 'NoOp:NoOp,_Recv:RecvOp,_Send:SendOp'.
		Returns:
		  the string of the header that should be written as ops_to_register.h.
	**/
	static public function get_header(graphs:Dynamic, ?proto_fileformat:Dynamic, ?default_ops:Dynamic):Dynamic;
	/**
		Returns a header for use with tensorflow SELECTIVE_REGISTRATION.
		
		Args:
		  ops_and_kernels: a set of (op_name, kernel_class_name) pairs to include.
		  include_all_ops_and_kernels: if True, ops_and_kernels is ignored and all op
		  kernels are included.
		
		Returns:
		  the string of the header that should be written as ops_to_register.h.
	**/
	static public function get_header_from_ops_and_kernels(ops_and_kernels:Dynamic, include_all_ops_and_kernels:Dynamic):Dynamic;
	/**
		Gets the ops and kernels needed from the model files.
	**/
	static public function get_ops_and_kernels(proto_fileformat:Dynamic, proto_files:Dynamic, default_ops_str:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}