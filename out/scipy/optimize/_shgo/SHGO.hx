/* This file is generated, do not edit! */
package scipy.optimize._shgo;
@:pythonImport("scipy.optimize._shgo", "SHGO") extern class SHGO {
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
	public function ___init__(func:Dynamic, bounds:Dynamic, ?args:Dynamic, ?constraints:Dynamic, ?n:Dynamic, ?iters:Dynamic, ?callback:Dynamic, ?minimizer_kwargs:Dynamic, ?options:Dynamic, ?sampling_method:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(func:Dynamic, bounds:Dynamic, ?args:Dynamic, ?constraints:Dynamic, ?n:Dynamic, ?iters:Dynamic, ?callback:Dynamic, ?minimizer_kwargs:Dynamic, ?options:Dynamic, ?sampling_method:Dynamic):Void;
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
		Finds the subspace vectors along each component axis.
	**/
	public function ax_subspace():Dynamic;
	/**
		Construct for `iters` iterations.
		
		If uniform sampling is used, every iteration adds 'n' sampling points.
		
		Iterations if a stopping criteria (ex. sampling points or
		processing time) has been met.
	**/
	public function construct_complex():Dynamic;
	/**
		Construct locally (approximately) convex bounds
		
		Parameters
		----------
		v_min : Vertex object
		        The minimiser vertex
		
		Returns
		-------
		cbounds : list of lists
		    List of size dim with length-2 list of bounds for each dimension
	**/
	public function construct_lcb_delaunay(v_min:Dynamic, ?ind:Dynamic):Dynamic;
	/**
		Construct locally (approximately) convex bounds
		
		Parameters
		----------
		v_min : Vertex object
		        The minimiser vertex
		
		Returns
		-------
		cbounds : list of lists
		    List of size dim with length-2 list of bounds for each dimension
	**/
	public function construct_lcb_simplicial(v_min:Dynamic):Dynamic;
	public function delaunay_complex_minimisers():Dynamic;
	/**
		Returns the indexes of all minimizers
	**/
	public function delaunay_minimizers():Dynamic;
	public function delaunay_triangulation(?grow:Dynamic, ?n_prc:Dynamic):Dynamic;
	public function fail_routine(?mes:Dynamic):Dynamic;
	public function find_lowest_vertex():Dynamic;
	/**
		Construct the minimiser pool, map the minimisers to local minima
		and sort the results into a global return object.
	**/
	public function find_minima():Dynamic;
	/**
		Returns the indexes of points connected to ``pindex`` on the Gabriel
		chain subgraph of the Delaunay triangulation.
	**/
	static public function find_neighbors_delaunay(pindex:Dynamic, triang:Dynamic):Dynamic;
	public function finite_ev():Dynamic;
	public function finite_fev():Dynamic;
	public function finite_homology_growth():Dynamic;
	public function finite_iterations():Dynamic;
	/**
		Stop the algorithm if the final function value is known
		
		Specify in options (with ``self.f_min_true = options['f_min']``)
		and the tolerance with ``f_tol = options['f_tol']``
	**/
	public function finite_precision():Dynamic;
	public function finite_time():Dynamic;
	/**
		Find the objective function output reference table
	**/
	public function fun_ref():Dynamic;
	/**
		Returns the topographical vector stemming from the specified value
		``x_min`` for the current feasible set ``X_min`` with True boolean
		values indicating positive entries and False values indicating
		negative entries.
	**/
	public function g_topograph(x_min:Dynamic, X_min:Dynamic):Dynamic;
	/**
		Initiates the options.
		
		Can also be useful to change parameters after class initiation.
		
		Parameters
		----------
		options : dict
		
		Returns
		-------
		None
	**/
	public function init_options(options:Dynamic):Dynamic;
	public function iterate():Dynamic;
	/**
		Build a complex of Delaunay triangulated points
		
		Note: called with ``self.iterate_complex()`` after class initiation
	**/
	public function iterate_delaunay():Dynamic;
	/**
		Iterate a subdivision of the complex
		
		Note: called with ``self.iterate_complex()`` after class initiation
	**/
	public function iterate_hypercube():Dynamic;
	/**
		This processing method can optionally minimise only the best candidate
		solutions in the minimiser pool
		
		Parameters
		----------
		force_iter : int
		             Number of starting minimisers to process (can be sepcified
		             globally or locally)
	**/
	public function minimise_pool(?force_iter:Dynamic):Dynamic;
	/**
		This function is used to calculate the local minima using the specified
		sampling point as a starting value.
		
		Parameters
		----------
		x_min : vector of floats
		    Current starting point to minimise.
		
		Returns
		-------
		lres : OptimizeResult
		    The local optimization result represented as a `OptimizeResult`
		    object.
	**/
	public function minimize(x_min:Dynamic, ?ind:Dynamic):Dynamic;
	/**
		Returns the indexes of all minimizers
	**/
	public function minimizers_1D():Dynamic;
	public function sample_delaunay_topo(ind:Dynamic):Dynamic;
	public function sample_topo(ind:Dynamic):Dynamic;
	/**
		Sample the function surface.
		
		There are 2 modes, if ``infty_cons_sampl`` is True then the sampled
		points that are generated outside the feasible domain will be
		assigned an ``inf`` value in accordance with SHGO rules.
		This guarantees convergence and usually requires less objective function
		evaluations at the computational costs of more Delaunay triangulation
		points.
		
		If ``infty_cons_sampl`` is False then the infeasible points are discarded
		and only a subspace of the sampled points are used. This comes at the
		cost of the loss of guaranteed convergence and usually requires more
		objective function evaluations.
	**/
	public function sampled_surface(?infty_cons_sampl:Dynamic):Dynamic;
	/**
		Generates uniform sampling points in a hypercube and scales the points
		to the bound limits.
	**/
	public function sampling_sobol(n:Dynamic, dim:Dynamic):Dynamic;
	/**
		Find subspace of feasible points from g_func definition
	**/
	public function sampling_subspace():Dynamic;
	/**
		Returns the indexes of all minimizers
	**/
	public function simplex_minimizers():Dynamic;
	/**
		sobol.cc by Frances Kuo and Stephen Joe translated to Python 3 by
		Carl Sandrock 2016-03-31
		
		The original program is available and described at
		http://web.maths.unsw.edu.au/~fkuo/sobol/
	**/
	public function sobol_points_10k(N:Dynamic, D:Dynamic):Dynamic;
	/**
		Wrapper for ``sobol_seq.i4_sobol_generate``
		
		Generate N sampling points in D dimensions
	**/
	public function sobol_points_40(n:Dynamic, d:Dynamic, ?skip:Dynamic):Dynamic;
	public function sort_min_pool():Dynamic;
	/**
		Sort results and build the global return object
	**/
	public function sort_result():Dynamic;
	/**
		Find indexes of the sorted sampling points
	**/
	public function sorted_samples():Dynamic;
	/**
		Various stopping criteria ran every iteration
		
		Returns
		-------
		stop : bool
	**/
	public function stopping_criteria():Bool;
	/**
		Find the BD and FD finite differences along each component vector.
	**/
	public function surface_topo_ref():Dynamic;
	public function trim_min_pool(trim_ind:Dynamic):Dynamic;
}