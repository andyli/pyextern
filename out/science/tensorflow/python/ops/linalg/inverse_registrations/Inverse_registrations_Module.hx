/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.inverse_registrations;
@:pythonImport("tensorflow.python.ops.linalg.inverse_registrations") extern class Inverse_registrations_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _inverse_block_diag(block_diag_operator:Dynamic):Dynamic;
	/**
		Inverse of LinearOperatorBlockLowerTriangular.
		
		We recursively apply the identity:
		
		```none
		|A 0|'  =  |    A'  0|
		|B C|      |-C'BA' C'|
		```
		
		where `A` is n-by-n, `B` is m-by-n, `C` is m-by-m, and `'` denotes inverse.
		
		This identity can be verified through multiplication:
		
		```none
		|A 0||    A'  0|
		|B C||-C'BA' C'|
		
		  = |       AA'   0|
		    |BA'-CC'BA' CC'|
		
		  = |I 0|
		    |0 I|
		```
		
		Args:
		  block_lower_triangular_operator: Instance of
		    `LinearOperatorBlockLowerTriangular`.
		
		Returns:
		  block_lower_triangular_operator_inverse: Instance of
		    `LinearOperatorBlockLowerTriangular`, the inverse of
		    `block_lower_triangular_operator`.
	**/
	static public function _inverse_block_lower_triangular(block_lower_triangular_operator:Dynamic):Dynamic;
	static public function _inverse_circulant(circulant_operator:Dynamic):Dynamic;
	static public function _inverse_diag(diag_operator:Dynamic):Dynamic;
	static public function _inverse_householder(householder_operator:Dynamic):Dynamic;
	static public function _inverse_identity(identity_operator:Dynamic):Dynamic;
	static public function _inverse_inverse_linear_operator(linop_inversion:Dynamic):Dynamic;
	static public function _inverse_kronecker(kronecker_operator:Dynamic):Dynamic;
	static public function _inverse_linear_operator(linop:Dynamic):Dynamic;
	static public function _inverse_scaled_identity(identity_operator:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}