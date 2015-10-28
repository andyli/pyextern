/* This file is generated, do not edit! */
package scipy.sparse.linalg;
@:pythonImport("scipy.sparse.linalg", "SuperLU") extern class SuperLU {
	public var L : Dynamic;
	public var nnz : Dynamic;
	public var perm_c : Dynamic;
	public var perm_r : Dynamic;
	public var shape : Dynamic;
	public function solve(rhs:Dynamic, trans:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var U : Dynamic;
}