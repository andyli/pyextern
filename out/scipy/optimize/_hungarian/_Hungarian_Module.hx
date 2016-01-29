/* This file is generated, do not edit! */
package scipy.optimize._hungarian;
@:pythonImport("scipy.optimize._hungarian") extern class _Hungarian_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Steps 1 and 2 in the Wikipedia page.
	**/
	static public function _step1(state:Dynamic):Dynamic;
	/**
		Cover each column containing a starred zero. If n columns are covered,
		the starred zeros describe a complete set of unique assignments.
		In this case, Go to DONE, otherwise, Go to Step 4.
	**/
	static public function _step3(state:Dynamic):Dynamic;
	/**
		Find a noncovered zero and prime it. If there is no starred zero
		in the row containing this primed zero, Go to Step 5. Otherwise,
		cover this row and uncover the column containing the starred
		zero. Continue in this manner until there are no uncovered zeros
		left. Save the smallest uncovered value and Go to Step 6.
	**/
	static public function _step4(state:Dynamic):Dynamic;
	/**
		Construct a series of alternating primed and starred zeros as follows.
		Let Z0 represent the uncovered primed zero found in Step 4.
		Let Z1 denote the starred zero in the column of Z0 (if any).
		Let Z2 denote the primed zero in the row of Z1 (there will always be one).
		Continue until the series terminates at a primed zero that has no starred
		zero in its column. Unstar each starred zero of the series, star each
		primed zero of the series, erase all primes and uncover every line in the
		matrix. Return to Step 3
	**/
	static public function _step5(state:Dynamic):Dynamic;
	/**
		Add the value found in Step 4 to every element of each covered row,
		and subtract it from every element of each uncovered column.
		Return to Step 4 without altering any stars, primes, or covered lines.
	**/
	static public function _step6(state:Dynamic):Dynamic;
	/**
		Solve the linear sum assignment problem.
		
		The linear sum assignment problem is also known as minimum weight matching
		in bipartite graphs. A problem instance is described by a matrix C, where
		each C[i,j] is the cost of matching vertex i of the first partite set
		(a "worker") and vertex j of the second set (a "job"). The goal is to find
		a complete assignment of workers to jobs of minimal cost.
		
		Formally, let X be a boolean matrix where :math:`X[i,j] = 1` iff row i is
		assigned to column j. Then the optimal assignment has cost
		
		.. math::
		    \min \sum_i \sum_j C_{i,j} X_{i,j}
		
		s.t. each row is assignment to at most one column, and each column to at
		most one row.
		
		This function can also solve a generalization of the classic assignment
		problem where the cost matrix is rectangular. If it has more rows than
		columns, then not every row needs to be assigned to a column, and vice
		versa.
		
		The method used is the Hungarian algorithm, also known as the Munkres or
		Kuhn-Munkres algorithm.
		
		Parameters
		----------
		cost_matrix : array
		    The cost matrix of the bipartite graph.
		
		Returns
		-------
		row_ind, col_ind : array
		    An array of row indices and one of corresponding column indices giving
		    the optimal assignment. The cost of the assignment can be computed
		    as ``cost_matrix[row_ind, col_ind].sum()``. The row indices will be
		    sorted; in the case of a square cost matrix they will be equal to
		    ``numpy.arange(cost_matrix.shape[0])``.
		
		Notes
		-----
		.. versionadded:: 0.17.0
		
		Examples
		--------
		>>> cost = np.array([[4, 1, 3], [2, 0, 5], [3, 2, 2]])
		>>> from scipy.optimize import linear_sum_assignment
		>>> row_ind, col_ind = linear_sum_assignment(cost)
		>>> col_ind
		array([1, 0, 2])
		>>> cost[row_ind, col_ind].sum()
		5
		
		References
		----------
		1. http://www.public.iastate.edu/~ddoty/HungarianAlgorithm.html
		
		2. Harold W. Kuhn. The Hungarian Method for the assignment problem.
		   *Naval Research Logistics Quarterly*, 2:83-97, 1955.
		
		3. Harold W. Kuhn. Variants of the Hungarian method for assignment
		   problems. *Naval Research Logistics Quarterly*, 3: 253-258, 1956.
		
		4. Munkres, J. Algorithms for the Assignment and Transportation Problems.
		   *J. SIAM*, 5(1):32-38, March, 1957.
		
		5. https://en.wikipedia.org/wiki/Hungarian_algorithm
	**/
	static public function linear_sum_assignment(cost_matrix:Dynamic):Dynamic;
}