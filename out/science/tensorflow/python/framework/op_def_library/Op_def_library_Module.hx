/* This file is generated, do not edit! */
package tensorflow.python.framework.op_def_library;
@:pythonImport("tensorflow.python.framework.op_def_library") extern class Op_def_library_Module {
	static public function _Attr(op_def:Dynamic, name:Dynamic):Dynamic;
	static public function _AttrValue(attr_protos:Dynamic, name:Dynamic, op_type_name:Dynamic):Dynamic;
	/**
		Converts [1, 2, [3, 4], [5]] to [1, 2, 3, 4, 5].
	**/
	static public function _Flatten(l:Dynamic):Dynamic;
	static public function _IsListParameter(arg:Dynamic):Dynamic;
	static public function _IsListValue(v:Dynamic):Dynamic;
	static public function _MakeBool(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function _MakeFloat(v:Dynamic, arg_name:Dynamic):Dynamic;
	/**
		Ensure v is a func.
	**/
	static public function _MakeFunc(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function _MakeInt(v:Dynamic, arg_name:Dynamic):Dynamic;
	/**
		Convert v into a TensorShapeProto.
	**/
	static public function _MakeShape(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function _MakeStr(v:Dynamic, arg_name:Dynamic):Dynamic;
	/**
		Ensure v is a TensorProto.
	**/
	static public function _MakeTensor(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function _MakeType(v:Dynamic, arg_name:Dynamic):Dynamic;
	/**
		A context manager for (maybe) colocating with a list of input tensors.
		
		Args:
		  inputs: A list of `Tensor` or `Operation` objects.
		
		Returns:
		  A context manager.
	**/
	static public function _MaybeColocateWith(inputs:Dynamic):Dynamic;
	static public function _NumTypeFields(arg:Dynamic):Dynamic;
	/**
		Returns the elements of list l structured according to the given structure.
		
		A structure is represented by a list whose elements are either
		`None` or a non-negative integer. `None` corresponds to a single
		element in the output list, and an integer N corresponds to a nested
		list of length N.
		
		The function returns a data structure whose shape is given by
		`structure`, and whose elements are taken from `l`. If `structure`
		is a singleton, the function returns the single data structure
		implied by the 0th element of `structure`. For example:
		
		    _Restructure(["foo", "bar", "baz", "qux"], [None, 2, None])
		      -> ["foo", ["bar", "baz"], "qux"]
		
		    _Restructure(["foo"], [None]) -> "foo"
		
		    _Restructure(["foo"], [1]) -> ["foo"]
		
		    _Restructure([], [0]) -> []
		
		Args:
		  l: A list.
		  structure: A list whose elements are either `None` or a non-negative
		    integer.
		
		Returns:
		  The elements of `l`, restructured according to `structure`. If
		  `structure` is a list of length 1, this function returns the
		  single data structure implied by `structure[0]`.
	**/
	static public function _Restructure(l:Dynamic, structure:Dynamic):Dynamic;
	static public function _SatisfiesAllowedStringsConstraint(value:Dynamic, attr_def:Dynamic, arg_name:Dynamic, op_type_name:Dynamic):Dynamic;
	static public function _SatisfiesIntMinimumConstraint(value:Dynamic, attr_def:Dynamic, arg_name:Dynamic, op_type_name:Dynamic):Dynamic;
	static public function _SatisfiesLengthConstraint(length:Dynamic, attr_def:Dynamic, param_name:Dynamic, op_type_name:Dynamic):Dynamic;
	static public function _SatisfiesTypeConstraint(dtype:Dynamic, attr_def:Dynamic, param_name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Implementation of apply_op that returns output_structure, op.
	**/
	static public function _apply_op_helper(op_type_name:Dynamic, ?name:Dynamic, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add a node invoking a registered Op to a graph.
		
		Example usage:
		   # input1 and input2 can be Tensors or anything ops.convert_to_tensor()
		   # will convert to a Tensor.
		   op_def_library.apply_op("op", input1=input1, input2=input2)
		   # Can specify a node name.
		   op_def_library.apply_op("op", input1=input1, name="node_name")
		   # Must use keyword arguments, with the names specified in the OpDef.
		   op_def_library.apply_op("op", input_name=input, attr_name=attr)
		
		All attrs must either be inferred from an input or specified.
		(If inferred, the attr must not be specified.)  If an attr has a default
		value specified in the Op's OpDef, then you may pass None as the value
		of that attr to get the default.
		
		Args:
		  op_type_name: string. Must match the name field of a registered Op.
		  name: string. Optional name of the created op.
		  **keywords: input Tensor and attr arguments specified by name,
		    and optional parameters to pass when constructing the Operation.
		
		Returns:
		  The Tensor(s) representing the output of the operation, or the Operation
		  itself if there are no outputs.
		
		Raises:
		  RuntimeError: On some errors.
		  TypeError: On some errors.
		  ValueError: On some errors.
	**/
	static public function apply_op(op_type_name:Dynamic, ?name:Dynamic, ?keywords:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Encodes a Python value as an `AttrValue` proto message.
		
		Args:
		  value: The value to convert.
		  attr_type: The value type (string) -- see the AttrValue proto definition for
		    valid strings.
		  arg_name: Argument name (for error messages).
		
		Returns:
		  An AttrValue proto message that encodes `value`.
	**/
	static public function value_to_attr_value(value:Dynamic, attr_type:Dynamic, arg_name:Dynamic):Dynamic;
}