/* This file is generated, do not edit! */
package tensorflow.contrib.constrained_optimization;
@:pythonImport("tensorflow.contrib.constrained_optimization") extern class Constrained_optimization_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Finds a distribution minimizing an objective subject to constraints.
		
		This function deals with the constrained problem:
		
		> minimize f(w)
		> s.t. g_i(w) <= 0 for all i in {0,1,...,m-1}
		
		Here, f(w) is the "objective function", and g_i(w) is the ith (of m)
		"constraint function". Given a set of n "candidate solutions"
		{w_0,w_1,...,w_{n-1}}, this function finds a distribution over these n
		candidates that, in expectation, minimizes the objective while violating
		the constraints by the smallest possible amount (with the amount being found
		via bisection search).
		
		The `objective_vector` parameter should be a numpy array with shape (n,), for
		which objective_vector[i] = f(w_i). Likewise, `constraints_matrix` should be a
		numpy array with shape (m,n), for which constraints_matrix[i,j] = g_i(w_j).
		
		This function will return a distribution for which at most m+1 probabilities,
		and often fewer, are nonzero.
		
		For more specifics, please refer to:
		
		> Cotter, Jiang and Sridharan. "Two-Player Games for Efficient Non-Convex
		> Constrained Optimization".
		> [https://arxiv.org/abs/1804.06500](https://arxiv.org/abs/1804.06500)
		
		This function implements the approach described in Lemma 3.
		
		Args:
		  objective_vector: numpy array of shape (n,), where n is the number of
		    "candidate solutions". Contains the objective function values.
		  constraints_matrix: numpy array of shape (m,n), where m is the number of
		    constraints and n is the number of "candidate solutions". Contains the
		    constraint violation magnitudes.
		  epsilon: nonnegative float, the threshold at which to terminate the binary
		    search while searching for the minimal expected constraint violation
		    magnitude.
		
		Returns:
		  The optimal distribution, as a numpy array of shape (n,).
		
		Raises:
		  ValueError: If `objective_vector` and `constraints_matrix` have inconsistent
		    shapes, or if `epsilon` is negative.
		  ImportError: If we're unable to import `scipy.optimize`.
	**/
	static public function find_best_candidate_distribution(objective_vector:Dynamic, constraints_matrix:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Heuristically finds the best candidate solution to a constrained problem.
		
		This function deals with the constrained problem:
		
		> minimize f(w)
		> s.t. g_i(w) <= 0 for all i in {0,1,...,m-1}
		
		Here, f(w) is the "objective function", and g_i(w) is the ith (of m)
		"constraint function". Given a set of n "candidate solutions"
		{w_0,w_1,...,w_{n-1}}, this function finds the "best" solution according
		to the following heuristic:
		
		  1. Across all models, the ith constraint violations (i.e. max{0, g_i(0)})
		     are ranked, as are the objectives (if rank_objectives=True).
		  2. Each model is then associated its MAXIMUM rank across all m constraints
		     (and the objective, if rank_objectives=True).
		  3. The model with the minimal maximum rank is then identified. Ties are
		     broken using the objective function value.
		  4. The index of this "best" model is returned.
		
		The `objective_vector` parameter should be a numpy array with shape (n,), for
		which objective_vector[i] = f(w_i). Likewise, `constraints_matrix` should be a
		numpy array with shape (m,n), for which constraints_matrix[i,j] = g_i(w_j).
		
		For more specifics, please refer to:
		
		> Cotter, Jiang and Sridharan. "Two-Player Games for Efficient Non-Convex
		> Constrained Optimization".
		> [https://arxiv.org/abs/1804.06500](https://arxiv.org/abs/1804.06500)
		
		This function implements the heuristic used for hyperparameter search in the
		experiments of Section 5.2.
		
		Args:
		  objective_vector: numpy array of shape (n,), where n is the number of
		    "candidate solutions". Contains the objective function values.
		  constraints_matrix: numpy array of shape (m,n), where m is the number of
		    constraints and n is the number of "candidate solutions". Contains the
		    constraint violation magnitudes.
		  rank_objectives: bool, whether the objective function values should be
		    included in the initial ranking step. If True, both the objective and
		    constraints will be ranked. If False, only the constraints will be ranked.
		    In either case, the objective function values will be used for
		    tiebreaking.
		
		Returns:
		  The index (in {0,1,...,n-1}) of the "best" model according to the above
		    heuristic.
		
		Raises:
		  ValueError: If `objective_vector` and `constraints_matrix` have inconsistent
		    shapes.
		  ImportError: If we're unable to import `scipy.stats`.
	**/
	static public function find_best_candidate_index(objective_vector:Dynamic, constraints_matrix:Dynamic, ?rank_objectives:Dynamic):Dynamic;
}