/* This file is generated, do not edit! */
package scipy.optimize._constraints;
@:pythonImport("scipy.optimize._constraints") extern class _Constraints_Module {
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
	/**
		Convert the new bounds representation to the old one.
		
		The new representation is a tuple (lb, ub) and the old one is a list
		containing n tuples, i-th containing lower and upper bound on a i-th
		variable.
	**/
	static public function new_bounds_to_old(lb:Dynamic, ub:Dynamic, n:Dynamic):Dynamic;
	/**
		Converts new-style constraint objects to old-style constraint dictionaries.
	**/
	static public function new_constraint_to_old(con:Dynamic, x0:Dynamic):Dynamic;
	/**
		Convert the old bounds representation to the new one.
		
		The new representation is a tuple (lb, ub) and the old one is a list
		containing n tuples, i-th containing lower and upper bound on a i-th
		variable.
	**/
	static public function old_bound_to_new(bounds:Dynamic):Dynamic;
	/**
		Converts old-style constraint dictionaries to new-style constraint objects.
	**/
	static public function old_constraint_to_new(ic:Dynamic, con:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Remove bounds which are not asked to be kept feasible.
	**/
	static public function strict_bounds(lb:Dynamic, ub:Dynamic, keep_feasible:Dynamic, n_vars:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}