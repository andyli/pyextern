/* This file is generated, do not edit! */
package scipy.stats.qmc;
@:pythonImport("scipy.stats.qmc") extern class Qmc_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Discrepancy of a given sample.
		
		Parameters
		----------
		sample : array_like (n, d)
		    The sample to compute the discrepancy from.
		iterative : bool, optional
		    Must be False if not using it for updating the discrepancy.
		    Default is False. Refer to the notes for more details.
		method : str, optional
		    Type of discrepancy, can be ``CD``, ``WD``, ``MD`` or ``L2-star``.
		    Refer to the notes for more details. Default is ``CD``.
		workers : int, optional
		    Number of workers to use for parallel processing. If -1 is given all
		    CPU threads are used. Default is 1.
		
		Returns
		-------
		discrepancy : float
		    Discrepancy.
		
		Notes
		-----
		The discrepancy is a uniformity criterion used to assess the space filling
		of a number of samples in a hypercube. A discrepancy quantifies the
		distance between the continuous uniform distribution on a hypercube and the
		discrete uniform distribution on :math:`n` distinct sample points.
		
		The lower the value is, the better the coverage of the parameter space is.
		
		For a collection of subsets of the hypercube, the discrepancy is the
		difference between the fraction of sample points in one of those
		subsets and the volume of that subset. There are different definitions of
		discrepancy corresponding to different collections of subsets. Some
		versions take a root mean square difference over subsets instead of
		a maximum.
		
		A measure of uniformity is reasonable if it satisfies the following
		criteria [1]_:
		
		1. It is invariant under permuting factors and/or runs.
		2. It is invariant under rotation of the coordinates.
		3. It can measure not only uniformity of the sample over the hypercube,
		   but also the projection uniformity of the sample over non-empty
		   subset of lower dimension hypercubes.
		4. There is some reasonable geometric meaning.
		5. It is easy to compute.
		6. It satisfies the Koksma-Hlawka-like inequality.
		7. It is consistent with other criteria in experimental design.
		
		Four methods are available:
		
		* ``CD``: Centered Discrepancy - subspace involves a corner of the
		  hypercube
		* ``WD``: Wrap-around Discrepancy - subspace can wrap around bounds
		* ``MD``: Mixture Discrepancy - mix between CD/WD covering more criteria
		* ``L2-star``: L2-star discrepancy - like CD BUT variant to rotation
		
		See [2]_ for precise definitions of each method.
		
		Lastly, using ``iterative=True``, it is possible to compute the
		discrepancy as if we had :math:`n+1` samples. This is useful if we want
		to add a point to a sampling and check the candidate which would give the
		lowest discrepancy. Then you could just update the discrepancy with
		each candidate using `update_discrepancy`. This method is faster than
		computing the discrepancy for a large number of candidates.
		
		References
		----------
		.. [1] Fang et al. "Design and modeling for computer experiments".
		   Computer Science and Data Analysis Series, 2006.
		.. [2] Zhou Y.-D. et al. Mixture discrepancy for quasi-random point sets.
		   Journal of Complexity, 29 (3-4) , pp. 283-301, 2013.
		.. [3] T. T. Warnock. "Computational investigations of low discrepancy
		   point sets". Applications of Number Theory to Numerical
		   Analysis, Academic Press, pp. 319-343, 1972.
		
		Examples
		--------
		Calculate the quality of the sample using the discrepancy:
		
		>>> from scipy.stats import qmc
		>>> space = np.array([[1, 3], [2, 6], [3, 2], [4, 5], [5, 1], [6, 4]])
		>>> l_bounds = [0.5, 0.5]
		>>> u_bounds = [6.5, 6.5]
		>>> space = qmc.scale(space, l_bounds, u_bounds, reverse=True)
		>>> space
		array([[0.08333333, 0.41666667],
		       [0.25      , 0.91666667],
		       [0.41666667, 0.25      ],
		       [0.58333333, 0.75      ],
		       [0.75      , 0.08333333],
		       [0.91666667, 0.58333333]])
		>>> qmc.discrepancy(space)
		0.008142039609053464
		
		We can also compute iteratively the ``CD`` discrepancy by using
		``iterative=True``.
		
		>>> disc_init = qmc.discrepancy(space[:-1], iterative=True)
		>>> disc_init
		0.04769081147119336
		>>> qmc.update_discrepancy(space[-1], space[:-1], disc_init)
		0.008142039609053513
	**/
	static public function discrepancy(sample:Dynamic, ?iterative:Dynamic, ?method:Dynamic, ?workers:Dynamic):Float;
	/**
		Sample scaling from unit hypercube to different bounds.
		
		To convert a sample from :math:`[0, 1)` to :math:`[a, b), b>a`,
		with :math:`a` the lower bounds and :math:`b` the upper bounds.
		The following transformation is used:
		
		.. math::
		
		    (b - a) \cdot \text{sample} + a
		
		Parameters
		----------
		sample : array_like (n, d)
		    Sample to scale.
		l_bounds, u_bounds : array_like (d,)
		    Lower and upper bounds (resp. :math:`a`, :math:`b`) of transformed
		    data. If `reverse` is True, range of the original data to transform
		    to the unit hypercube.
		reverse : bool, optional
		    Reverse the transformation from different bounds to the unit hypercube.
		    Default is False.
		
		Returns
		-------
		sample : array_like (n, d)
		    Scaled sample.
		
		Examples
		--------
		Transform 3 samples in the unit hypercube to bounds:
		
		>>> from scipy.stats import qmc
		>>> l_bounds = [-2, 0]
		>>> u_bounds = [6, 5]
		>>> sample = [[0.5 , 0.75],
		...           [0.5 , 0.5],
		...           [0.75, 0.25]]
		>>> sample_scaled = qmc.scale(sample, l_bounds, u_bounds)
		>>> sample_scaled
		array([[2.  , 3.75],
		       [2.  , 2.5 ],
		       [4.  , 1.25]])
		
		And convert back to the unit hypercube:
		
		>>> sample_ = qmc.scale(sample_scaled, l_bounds, u_bounds, reverse=True)
		>>> sample_
		array([[0.5 , 0.75],
		       [0.5 , 0.5 ],
		       [0.75, 0.25]])
	**/
	static public function scale(sample:Dynamic, l_bounds:Dynamic, u_bounds:Dynamic, ?reverse:Dynamic):Dynamic;
	/**
		Update the centered discrepancy with a new sample.
		
		Parameters
		----------
		x_new : array_like (1, d)
		    The new sample to add in `sample`.
		sample : array_like (n, d)
		    The initial sample.
		initial_disc : float
		    Centered discrepancy of the `sample`.
		
		Returns
		-------
		discrepancy : float
		    Centered discrepancy of the sample composed of `x_new` and `sample`.
		
		Examples
		--------
		We can also compute iteratively the discrepancy by using
		``iterative=True``.
		
		>>> from scipy.stats import qmc
		>>> space = np.array([[1, 3], [2, 6], [3, 2], [4, 5], [5, 1], [6, 4]])
		>>> l_bounds = [0.5, 0.5]
		>>> u_bounds = [6.5, 6.5]
		>>> space = qmc.scale(space, l_bounds, u_bounds, reverse=True)
		>>> disc_init = qmc.discrepancy(space[:-1], iterative=True)
		>>> disc_init
		0.04769081147119336
		>>> qmc.update_discrepancy(space[-1], space[:-1], disc_init)
		0.008142039609053513
	**/
	static public function update_discrepancy(x_new:Dynamic, sample:Dynamic, initial_disc:Dynamic):Float;
}