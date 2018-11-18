/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.ops.data_ops;
@:pythonImport("tensorflow.contrib.tensor_forest.python.ops.data_ops") extern class Data_ops_Module {
	static public function CastToFloat(tensor:Dynamic):Dynamic;
	static public var DATA_CATEGORICAL : Dynamic;
	static public var DATA_FLOAT : Dynamic;
	static public var DTYPE_TO_FTYPE : Dynamic;
	static public function GetColumnName(column_key:Dynamic, col_num:Dynamic):Dynamic;
	/**
		Return a tensor to use for input data.
		
		The incoming features can be a dict where keys are the string names of the
		columns, which we turn into a single 2-D tensor.
		
		Args:
		  data: `Tensor` or `dict` of `Tensor` objects.
		
		Returns:
		  A 2-D tensor for input to tensor_forest, a keys tensor for the
		  tf.Examples if they exist, and a list of the type of each column
		  (e.g. continuous float, categorical).
	**/
	static public function ParseDataTensorOrDict(data:Dynamic):Dynamic;
	/**
		Return a tensor to use for input labels to tensor_forest.
		
		The incoming targets can be a dict where keys are the string names of the
		columns, which we turn into a single 1-D tensor for classification or
		2-D tensor for regression.
		
		Converts sparse tensors to dense ones.
		
		Args:
		  labels: `Tensor` or `dict` of `Tensor` objects.
		
		Returns:
		  A 2-D tensor for labels/outputs.
	**/
	static public function ParseLabelTensorOrDict(labels:Dynamic):Dynamic;
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