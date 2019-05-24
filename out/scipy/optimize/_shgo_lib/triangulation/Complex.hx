/* This file is generated, do not edit! */
package scipy.optimize._shgo_lib.triangulation;
@:pythonImport("scipy.optimize._shgo_lib.triangulation", "Complex") extern class Complex {
	/**
		Call self as a function.
	**/
	public function __call__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(dim:Dynamic, func:Dynamic, ?func_args:Dynamic, ?symmetry:Dynamic, ?bounds:Dynamic, ?g_cons:Dynamic, ?g_args:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dim:Dynamic, func:Dynamic, ?func_args:Dynamic, ?symmetry:Dynamic, ?bounds:Dynamic, ?g_cons:Dynamic, ?g_args:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Split the central edge between the origin and supremum of
		a cell and add the new vertex to the complex
	**/
	public function add_centroid():Dynamic;
	/**
		Build a hypercube with triangulations symmetric to C0.
		
		Parameters
		----------
		origin : vec
		supremum : vec (tuple)
		gen : generation
		hgr : parent homology group rank
	**/
	public function construct_hypercube(origin:Dynamic, supremum:Dynamic, gen:Dynamic, hgr:Dynamic, ?printout:Dynamic):Dynamic;
	/**
		Use the origin and supremum vectors to find a new cell in that
		subspace direction
		
		NOTE: NOT CURRENTLY IN USE!
		
		Parameters
		----------
		origin : tuple vector (hashable)
		supremum : tuple vector (hashable)
		
		Returns
		-------
	**/
	public function generate_sub_cell_2(origin:Dynamic, supremum:Dynamic, v_x_t:Dynamic):Dynamic;
	public function generate_sub_cell_t1(origin:Dynamic, v_x:Dynamic):Dynamic;
	public function generate_sub_cell_t2(supremum:Dynamic, v_x:Dynamic):Dynamic;
	/**
		Make a list of size 2**n + 1 where an entry is a vertex
		incidence, each list element contains a list of indexes
		corresponding to that entries neighbours
	**/
	public function graph_map():Dynamic;
	public function incidence():Dynamic;
	/**
		Generate the simplicial triangulation of the n dimensional hypercube
		containing 2**n vertices
	**/
	public function n_cube(dim:Dynamic, ?symmetry:Dynamic, ?printout:Dynamic):Dynamic;
	public function perm(i_parents:Dynamic, x_parents:Dynamic, xi:Dynamic):Dynamic;
	public function perm_symmetry(i_s:Dynamic, x_parents:Dynamic, xi:Dynamic):Dynamic;
	/**
		Here C is the LIST of simplexes S in the
		2 or 3 dimensional complex
		
		To plot a single simplex S in a set C, use ex. [C[0]]
	**/
	public function plot_complex():Dynamic;
	/**
		Run sub_generate_cell for every cell in the current complex self.gen
	**/
	public function split_generation():Dynamic;
	/**
		Split a hypersimplex S into two sub simplices by building a hyperplane
		which connects to a new vertex on an edge (the longest edge in
		dim = {2, 3}) and every other vertex in the simplex that is not
		connected to the edge being split.
		
		This function utilizes the knowledge that the problem is specified
		with symmetric constraints
		
		The longest edge is tracked by an ordering of the
		vertices in every simplices, the edge between first and second
		vertex is the longest edge to be split in the next iteration.
	**/
	public function split_simplex_symmetry(S:Dynamic, gen:Dynamic):Dynamic;
	/**
		Subgenerate a cell `C_i` of generation `gen` and
		homology group rank `hgr`.
	**/
	public function sub_generate_cell(C_i:Dynamic, gen:Dynamic):Dynamic;
}