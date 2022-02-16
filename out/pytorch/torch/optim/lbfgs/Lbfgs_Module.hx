/* This file is generated, do not edit! */
package torch.optim.lbfgs;
@:pythonImport("torch.optim.lbfgs") extern class Lbfgs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _cubic_interpolate(x1:Dynamic, f1:Dynamic, g1:Dynamic, x2:Dynamic, f2:Dynamic, g2:Dynamic, ?bounds:Dynamic):Dynamic;
	static public function _strong_wolfe(obj_func:Dynamic, x:Dynamic, t:Dynamic, d:Dynamic, f:Dynamic, g:Dynamic, gtd:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?tolerance_change:Dynamic, ?max_ls:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
}