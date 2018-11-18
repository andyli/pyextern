/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.map_defun;
@:pythonImport("tensorflow.python.data.experimental.ops.map_defun") extern class Map_defun_Module {
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
		Map a function on the list of tensors unpacked from `elems` on dimension 0.
		
		Args:
		  fn: A function (`function.Defun`) that takes a list of tensors and returns
		    another list of tensors. The output list has the same types as
		    output_dtypes. The elements of the output list have the same dimension 0
		    as `elems`, and the remaining dimensions correspond to those of
		    `fn_output_shapes`.
		  elems: A list of tensors.
		  output_dtypes: A list of dtypes corresponding to the output types of the
		    function.
		  output_shapes: A list of `TensorShape`s corresponding to the output
		    shapes from each invocation of the function on slices of inputs.
		
		Raises:
		  ValueError: if any of the inputs are malformed.
		
		Returns:
		  A list of `Tensor` objects with the same types as `output_dtypes`.
	**/
	static public function map_defun(fn:Dynamic, elems:Dynamic, output_dtypes:Dynamic, output_shapes:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}