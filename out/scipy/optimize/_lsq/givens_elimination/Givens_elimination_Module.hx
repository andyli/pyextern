/* This file is generated, do not edit! */
package scipy.optimize._lsq.givens_elimination;
@:pythonImport("scipy.optimize._lsq.givens_elimination") extern class Givens_elimination_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Zero out a diagonal block of a matrix by series of Givens rotations.
		
		The matrix has the structure::
		
		    [ S ]
		    [ D ]
		
		Where S is an upper triangular matrix with shape (n, n) and D is a
		diagonal matrix with shape (n, n) with elements from `diag`. This function
		applies Givens rotations to it such that the resulting matrix has zeros
		in place of D.
		
		Array `S` will be modified in-place.
		
		Array `v` of shape (n,) is the part of the full vector with shape (2*n,)::
		
		    [ v ]
		    [ 0 ]
		
		to which Givens rotations are applied. This array is modified in place,
		such that on exit it contains the first n components of the above
		mentioned vector after rotations were applied.
	**/
	static public function givens_elimination(args:haxe.extern.Rest<Dynamic>):Dynamic;
}