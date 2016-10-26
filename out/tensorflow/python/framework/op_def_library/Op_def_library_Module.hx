/* This file is generated, do not edit! */
package tensorflow.python.framework.op_def_library;
@:pythonImport("tensorflow.python.framework.op_def_library") extern class Op_def_library_Module {
	static public function _Attr(op_def:Dynamic, name:Dynamic):Dynamic;
	static public function _AttrValue(attr_protos:Dynamic, name:Dynamic):Dynamic;
	/**
		Converts [1, 2, [3, 4], [5]] to [1, 2, 3, 4, 5].
	**/
	static public function _Flatten(l:Dynamic):Dynamic;
	static public function _IsListParameter(arg:Dynamic):Dynamic;
	static public function _IsListValue(v:Dynamic):Dynamic;
	static public function _MakeBool(v:Dynamic, arg_name:Dynamic):Dynamic;
	static public function _MakeFloat(v:Dynamic, arg_name:Dynamic):Dynamic;
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
	static public function _MakeType(v:Dynamic, attr_def:Dynamic):Dynamic;
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
	static public function _SatisfiesTypeConstraint(dtype:Dynamic, attr_def:Dynamic):Dynamic;
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