/* This file is generated, do not edit! */
package scipy.odr.models;
@:pythonImport("scipy.odr.models") extern class Models_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _exp_est(data:Dynamic):Dynamic;
	static public function _exp_fcn(B:Dynamic, x:Dynamic):Dynamic;
	static public function _exp_fjb(B:Dynamic, x:Dynamic):Dynamic;
	static public function _exp_fjd(B:Dynamic, x:Dynamic):Dynamic;
	static public function _lin_est(data:Dynamic):Dynamic;
	static public function _lin_fcn(B:Dynamic, x:Dynamic):Dynamic;
	static public function _lin_fjb(B:Dynamic, x:Dynamic):Dynamic;
	static public function _lin_fjd(B:Dynamic, x:Dynamic):Dynamic;
	static public function _poly_fcn(B:Dynamic, x:Dynamic, powers:Dynamic):Dynamic;
	static public function _poly_fjacb(B:Dynamic, x:Dynamic, powers:Dynamic):Dynamic;
	static public function _poly_fjacd(B:Dynamic, x:Dynamic, powers:Dynamic):Dynamic;
	static public function _quad_est(data:Dynamic):Dynamic;
	static public function _quad_fjb(B:Dynamic, x:Dynamic):Dynamic;
	static public function _quad_fjd(B:Dynamic, x:Dynamic):Dynamic;
	static public function _quadratic(B:Dynamic, x:Dynamic):Dynamic;
	static public function _unilin(B:Dynamic, x:Dynamic):Dynamic;
	static public function _unilin_est(data:Dynamic):Dynamic;
	static public function _unilin_fjb(B:Dynamic, x:Dynamic):Dynamic;
	static public function _unilin_fjd(B:Dynamic, x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var exponential : Dynamic;
	static public var multilinear : Dynamic;
	/**
		Factory function for a general polynomial model.
		
		Parameters
		----------
		order : int or sequence
		    If an integer, it becomes the order of the polynomial to fit. If
		    a sequence of numbers, then these are the explicit powers in the
		    polynomial.
		    A constant term (power 0) is always included, so don't include 0.
		    Thus, polynomial(n) is equivalent to polynomial(range(1, n+1)).
		
		Returns
		-------
		polynomial : Model instance
		    Model instance.
	**/
	static public function polynomial(order:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var quadratic : Dynamic;
	static public var unilinear : Dynamic;
}