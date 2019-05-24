/* This file is generated, do not edit! */
package scipy.optimize._differentialevolution;
@:pythonImport("scipy.optimize._differentialevolution", "DifferentialEvolutionSolver") extern class DifferentialEvolutionSolver {
	static public var _DifferentialEvolutionSolver__init_error_msg : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(?args:python.VarArgs<Dynamic>):Dynamic;
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
	public function ___init__(func:Dynamic, bounds:Dynamic, ?args:Dynamic, ?strategy:Dynamic, ?maxiter:Dynamic, ?popsize:Dynamic, ?tol:Dynamic, ?mutation:Dynamic, ?recombination:Dynamic, ?seed:Dynamic, ?maxfun:Dynamic, ?callback:Dynamic, ?disp:Dynamic, ?polish:Dynamic, ?init:Dynamic, ?atol:Dynamic, ?updating:Dynamic, ?workers:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(func:Dynamic, bounds:Dynamic, ?args:Dynamic, ?strategy:Dynamic, ?maxiter:Dynamic, ?popsize:Dynamic, ?tol:Dynamic, ?mutation:Dynamic, ?recombination:Dynamic, ?seed:Dynamic, ?maxfun:Dynamic, ?callback:Dynamic, ?disp:Dynamic, ?polish:Dynamic, ?init:Dynamic, ?atol:Dynamic, ?updating:Dynamic, ?workers:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
		Evolve the population by a single generation
		
		Returns
		-------
		x : ndarray
		    The best solution from the solver.
		fun : float
		    Value of objective function obtained from the best solution.
	**/
	public function __next__():Dynamic;
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
		best1bin, best1exp
	**/
	public function _best1(samples:Dynamic):Dynamic;
	/**
		best2bin, best2exp
	**/
	public function _best2(samples:Dynamic):Dynamic;
	static public var _binomial : Dynamic;
	/**
		Calculate the energies of all the population members at the same time.
		
		Parameters
		----------
		population : ndarray
		    An array of parameter vectors normalised to [0, 1] using lower
		    and upper limits. Has shape ``(np.size(population, 0), len(x))``.
		
		Returns
		-------
		energies : ndarray
		    An array of energies corresponding to each population member. If
		    maxfun will be exceeded during this call, then the number of
		    function evaluations will be reduced and energies will be
		    right-padded with np.inf. Has shape ``(np.size(population, 0),)``
	**/
	public function _calculate_population_energies(population:Dynamic):Dynamic;
	/**
		currenttobest1bin, currenttobest1exp
	**/
	public function _currenttobest1(candidate:Dynamic, samples:Dynamic):Dynamic;
	/**
		Make sure the parameters lie between the limits.
	**/
	public function _ensure_constraint(trial:Dynamic):Dynamic;
	static public var _exponential : Dynamic;
	/**
		Create a trial vector based on a mutation strategy.
	**/
	public function _mutate(candidate:Dynamic):Dynamic;
	public function _promote_lowest_energy():Dynamic;
	/**
		rand1bin, rand1exp
	**/
	public function _rand1(samples:Dynamic):Dynamic;
	/**
		rand2bin, rand2exp
	**/
	public function _rand2(samples:Dynamic):Dynamic;
	/**
		randtobest1bin, randtobest1exp
	**/
	public function _randtobest1(samples:Dynamic):Dynamic;
	/**
		Scale from a number between 0 and 1 to parameters.
	**/
	public function _scale_parameters(trial:Dynamic):Dynamic;
	/**
		obtain random integers from range(self.num_population_members),
		without replacement.  You can't have the original candidate either.
	**/
	public function _select_samples(candidate:Dynamic, number_samples:Dynamic):Dynamic;
	/**
		Scale from parameters to a number between 0 and 1.
	**/
	public function _unscale_parameters(parameters:Dynamic):Dynamic;
	/**
		Return True if the solver has converged.
	**/
	public function converged():Dynamic;
	/**
		The standard deviation of the population energies divided by their
		mean.
	**/
	public var convergence : Dynamic;
	/**
		Initialises the population with a user specified population.
		
		Parameters
		----------
		init : np.ndarray
		    Array specifying subset of the initial population. The array should
		    have shape (M, len(x)), where len(x) is the number of parameters.
		    The population is clipped to the lower and upper bounds.
	**/
	public function init_population_array(init:Dynamic):Dynamic;
	/**
		Initializes the population with Latin Hypercube Sampling.
		Latin Hypercube Sampling ensures that each parameter is uniformly
		sampled over its range.
	**/
	public function init_population_lhs():Dynamic;
	/**
		Initialises the population at random.  This type of initialization
		can possess clustering, Latin Hypercube sampling is generally better.
	**/
	public function init_population_random():Dynamic;
	/**
		Evolve the population by a single generation
		
		Returns
		-------
		x : ndarray
		    The best solution from the solver.
		fun : float
		    Value of objective function obtained from the best solution.
	**/
	public function next():Dynamic;
	/**
		Runs the DifferentialEvolutionSolver.
		
		Returns
		-------
		res : OptimizeResult
		    The optimization result represented as a ``OptimizeResult`` object.
		    Important attributes are: ``x`` the solution array, ``success`` a
		    Boolean flag indicating if the optimizer exited successfully and
		    ``message`` which describes the cause of the termination. See
		    `OptimizeResult` for a description of other attributes.  If `polish`
		    was employed, and a lower minimum was obtained by the polishing,
		    then OptimizeResult also contains the ``jac`` attribute.
	**/
	public function solve():Dynamic;
	/**
		The best solution from the solver
	**/
	public var x : Dynamic;
}