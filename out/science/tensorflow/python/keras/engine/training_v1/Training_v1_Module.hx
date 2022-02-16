/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_v1;
@:pythonImport("tensorflow.python.keras.engine.training_v1") extern class Training_v1_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Handle scipy sparse tensor conversions.
		
		This method takes a value 'value' and returns the proper conversion. If
		value is a scipy sparse tensor and the expected input is a dense tensor,
		we densify 'value'. If value is a scipy sparse tensor and the expected input
		is a TF SparseTensor, we convert 'value' to a SparseTensor. If 'value' is
		not a scipy sparse tensor, or scipy is not imported, we pass it through
		unchanged.
		
		Args:
		  value: An object that may be a scipy sparse tensor
		  expected_input: The expected input placeholder.
		
		Returns:
		  The possibly-converted 'value'.
	**/
	static public function _convert_scipy_sparse_tensor(value:Dynamic, expected_input:Dynamic):Dynamic;
	/**
		Returns list of metrics from the given layers.
		
		This will not include the `compile` metrics of a model layer.
		
		Args:
		  layers: List of layers.
		
		Returns:
		  List of metrics.
	**/
	static public function _get_metrics_from_layers(layers:Dynamic):Dynamic;
	static public function _is_symbolic_tensor(x:Dynamic):Dynamic;
	static public function _non_none_constant_value(v:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function issparse(x:Dynamic):Dynamic;
}