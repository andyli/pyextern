/* This file is generated, do not edit! */
package scipy.optimize.lbfgsb;
@:pythonImport("scipy.optimize.lbfgsb", "LbfgsInvHessProduct") extern class LbfgsInvHessProduct {
	/**
		Hermitian adjoint.
		
		Returns the Hermitian adjoint of self, aka the Hermitian
		conjugate or Hermitian transpose. For a complex matrix, the
		Hermitian adjoint is equal to the conjugate transpose.
		
		Can be abbreviated self.H instead of self.adjoint().
		
		Returns
		-------
		A_H : LinearOperator
		    Hermitian adjoint of self.
	**/
	public var H : Dynamic;
	/**
		Transpose this linear operator.
		
		Returns a LinearOperator that represents the transpose of this one.
		Can be abbreviated self.T instead of self.transpose().
	**/
	public var T : Dynamic;
	public function __add__(x:Dynamic):Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(x:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Construct the operator.
	**/
	@:native("__init__")
	public function ___init__(sk:Dynamic, yk:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(x:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __pow__(p:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rmul__(x:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(x:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Default implementation of _adjoint; defers to rmatvec.
	**/
	public function _adjoint():Dynamic;
	/**
		Called from subclasses at the end of the __init__ routine.
		        
	**/
	public function _init_dtype():Dynamic;
	/**
		Default matrix-matrix multiplication handler.
		
		Falls back on the user-defined _matvec method, so defining that will
		define matrix multiplication (though in a very suboptimal way).
	**/
	public function _matmat(X:Dynamic):Dynamic;
	/**
		Efficient matrix-vector multiply with the BFGS matrices.
		
		This calculation is described in Section (4) of [1].
		
		Parameters
		----------
		x : ndarray
		    An array with shape (n,) or (n,1).
		
		Returns
		-------
		y : ndarray
		    The matrix-vector product
	**/
	public function _matvec(x:Dynamic):Dynamic;
	/**
		Default implementation of _rmatvec; defers to adjoint.
	**/
	public function _rmatvec(x:Dynamic):Dynamic;
	/**
		Hermitian adjoint.
		
		Returns the Hermitian adjoint of self, aka the Hermitian
		conjugate or Hermitian transpose. For a complex matrix, the
		Hermitian adjoint is equal to the conjugate transpose.
		
		Can be abbreviated self.H instead of self.adjoint().
		
		Returns
		-------
		A_H : LinearOperator
		    Hermitian adjoint of self.
	**/
	public function adjoint():Dynamic;
	/**
		Matrix-matrix or matrix-vector multiplication.
		
		Parameters
		----------
		x : array_like
		    1-d or 2-d array, representing a vector or matrix.
		
		Returns
		-------
		Ax : array
		    1-d or 2-d array (depending on the shape of x) that represents
		    the result of applying this linear operator on x.
	**/
	public function dot(x:Dynamic):Dynamic;
	/**
		Matrix-matrix multiplication.
		
		Performs the operation y=A*X where A is an MxN linear
		operator and X dense N*K matrix or ndarray.
		
		Parameters
		----------
		X : {matrix, ndarray}
		    An array with shape (N,K).
		
		Returns
		-------
		Y : {matrix, ndarray}
		    A matrix or ndarray with shape (M,K) depending on
		    the type of the X argument.
		
		Notes
		-----
		This matmat wraps any user-specified matmat routine or overridden
		_matmat method to ensure that y has the correct type.
	**/
	public function matmat(X:Dynamic):Dynamic;
	/**
		Matrix-vector multiplication.
		
		Performs the operation y=A*x where A is an MxN linear
		operator and x is a column vector or 1-d array.
		
		Parameters
		----------
		x : {matrix, ndarray}
		    An array with shape (N,) or (N,1).
		
		Returns
		-------
		y : {matrix, ndarray}
		    A matrix or ndarray with shape (M,) or (M,1) depending
		    on the type and shape of the x argument.
		
		Notes
		-----
		This matvec wraps the user-specified matvec routine or overridden
		_matvec method to ensure that y has the correct shape and type.
	**/
	public function matvec(x:Dynamic):Dynamic;
	/**
		Adjoint matrix-vector multiplication.
		
		Performs the operation y = A^H * x where A is an MxN linear
		operator and x is a column vector or 1-d array.
		
		Parameters
		----------
		x : {matrix, ndarray}
		    An array with shape (M,) or (M,1).
		
		Returns
		-------
		y : {matrix, ndarray}
		    A matrix or ndarray with shape (N,) or (N,1) depending
		    on the type and shape of the x argument.
		
		Notes
		-----
		This rmatvec wraps the user-specified rmatvec routine or overridden
		_rmatvec method to ensure that y has the correct shape and type.
	**/
	public function rmatvec(x:Dynamic):Dynamic;
	/**
		Return a dense array representation of this operator.
		
		Returns
		-------
		arr : ndarray, shape=(n, n)
		    An array with the same shape and containing
		    the same data represented by this `LinearOperator`.
	**/
	public function todense():Dynamic;
	/**
		Transpose this linear operator.
		
		Returns a LinearOperator that represents the transpose of this one.
		Can be abbreviated self.T instead of self.transpose().
	**/
	public function transpose():Dynamic;
}