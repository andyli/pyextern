/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.data.data_ops;
@:pythonImport("tensorflow.contrib.tensor_forest.data.data_ops") extern class Data_ops_Module {
	static public var DATA_OPS_FILE : Dynamic;
	/**
		Load the data ops library and return the loaded module.
	**/
	static public function Load():Dynamic;
	/**
		Return a tensor to use for input data.
		
		The incoming features can be a dict where keys are the string names of the
		columns, which we turn into a single 2-D tensor.
		
		Args:
		  data: `Tensor` or `dict` of `Tensor` objects.
		
		Returns:
		  A 2-D tensor for input to tensor_forest and a 1-D tensor of the
		    type of each column (e.g. continuous float, categorical).
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
	/**
		Shape function for SparseValuesToIndices Op.
	**/
	static public function SparseValuesToIndicesShape(op:Dynamic):Dynamic;
	/**
		Shape function for StringToFloat Op.
	**/
	static public function StringToFloatShape(op:Dynamic):Dynamic;
	static public function _ParseDense(data:Dynamic):Dynamic;
	/**
		Concat sparse tensors together.
		
		A common use of sparse tensors is to treat strings as a sparse bit vector
		with a large number of features representing the presence of all possible
		values.  Here we convert these strings to integer indices in a sparse bit
		tensor.  In order to pack each incoming feature into a single sparse tensor,
		we add an offset to the converted indices to indicate that they came from
		different features in the source data.
		
		Args:
		  data: A dict of name -> Tensor.
		
		Returns:
		  A single sparse tensor with float values and a 1-D input spec Tensor.
		
		Raises:
		  NotImplementedError:  Combining dense and sparse tensors is not yet
		    supported.
		  ValueError: If data contains non-string Tensors.
	**/
	static public function _ParseSparse(data:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _data_ops : Dynamic;
	static public var _ops_lock : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}