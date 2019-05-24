/* This file is generated, do not edit! */
package scipy.stats._stats_mstats_common;
@:pythonImport("scipy.stats._stats_mstats_common") extern class _Stats_mstats_common_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _find_repeats(arr:Dynamic):Dynamic;
	/**
		Calculate a linear least-squares regression for two sets of measurements.
		
		Parameters
		----------
		x, y : array_like
		    Two sets of measurements.  Both arrays should have the same length.  If
		    only `x` is given (and ``y=None``), then it must be a two-dimensional
		    array where one dimension has length 2.  The two sets of measurements
		    are then found by splitting the array along the length-2 dimension.  In
		    the case where ``y=None`` and `x` is a 2x2 array, ``linregress(x)`` is
		    equivalent to ``linregress(x[0], x[1])``.
		
		Returns
		-------
		slope : float
		    Slope of the regression line.
		intercept : float
		    Intercept of the regression line.
		rvalue : float
		    Correlation coefficient.
		pvalue : float
		    Two-sided p-value for a hypothesis test whose null hypothesis is
		    that the slope is zero, using Wald Test with t-distribution of
		    the test statistic.
		stderr : float
		    Standard error of the estimated gradient.
		
		See also
		--------
		:func:`scipy.optimize.curve_fit` : Use non-linear
		 least squares to fit a function to data.
		:func:`scipy.optimize.leastsq` : Minimize the sum of
		 squares of a set of equations.
		
		Notes
		-----
		Missing values are considered pair-wise: if a value is missing in `x`,
		the corresponding value in `y` is masked.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy import stats
		
		Generate some data:
		
		>>> np.random.seed(12345678)
		>>> x = np.random.random(10)
		>>> y = 1.6*x + np.random.random(10)
		
		Perform the linear regression:
		
		>>> slope, intercept, r_value, p_value, std_err = stats.linregress(x, y)
		>>> print("slope: %f    intercept: %f" % (slope, intercept))
		slope: 1.944864    intercept: 0.268578
		
		To get coefficient of determination (R-squared):
		
		>>> print("R-squared: %f" % r_value**2)
		R-squared: 0.735498
		
		Plot the data along with the fitted line:
		
		>>> plt.plot(x, y, 'o', label='original data')
		>>> plt.plot(x, intercept + slope*x, 'r', label='fitted line')
		>>> plt.legend()
		>>> plt.show()
		
		Example for the case where only x is provided as a 2x2 array:
		
		>>> x = np.array([[0, 1], [0, 2]])
		>>> r = stats.linregress(x)
		>>> r.slope, r.intercept
		(2.0, 0.0)
	**/
	static public function linregress(x:Dynamic, ?y:Dynamic):Float;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Computes the Siegel estimator for a set of points (x, y).
		
		`siegelslopes` implements a method for robust linear regression
		using repeated medians (see [1]_) to fit a line to the points (x, y).
		The method is robust to outliers with an asymptotic breakdown point
		of 50%.
		
		Parameters
		----------
		y : array_like
		    Dependent variable.
		x : array_like or None, optional
		    Independent variable. If None, use ``arange(len(y))`` instead.
		method : {'hierarchical', 'separate'}
		    If 'hierarchical', estimate the intercept using the estimated
		    slope ``medslope`` (default option).
		    If 'separate', estimate the intercept independent of the estimated
		    slope. See Notes for details.
		
		Returns
		-------
		medslope : float
		    Estimate of the slope of the regression line.
		medintercept : float
		    Estimate of the intercept of the regression line.
		
		See also
		--------
		theilslopes : a similar technique without repeated medians
		
		Notes
		-----
		With ``n = len(y)``, compute ``m_j`` as the median of
		the slopes from the point ``(x[j], y[j])`` to all other `n-1` points.
		``medslope`` is then the median of all slopes ``m_j``.
		Two ways are given to estimate the intercept in [1]_ which can be chosen
		via the parameter ``method``.
		The hierarchical approach uses the estimated slope ``medslope``
		and computes ``medintercept`` as the median of ``y - medslope*x``.
		The other approach estimates the intercept separately as follows: for
		each point ``(x[j], y[j])``, compute the intercepts of all the `n-1`
		lines through the remaining points and take the median ``i_j``.
		``medintercept`` is the median of the ``i_j``.
		
		The implementation computes `n` times the median of a vector of size `n`
		which can be slow for large vectors. There are more efficient algorithms
		(see [2]_) which are not implemented here.
		
		References
		----------
		.. [1] A. Siegel, "Robust Regression Using Repeated Medians",
		       Biometrika, Vol. 69, pp. 242-244, 1982.
		
		.. [2] A. Stein and M. Werman, "Finding the repeated median regression
		       line", Proceedings of the Third Annual ACM-SIAM Symposium on
		       Discrete Algorithms, pp. 409-413, 1992.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-5, 5, num=150)
		>>> y = x + np.random.normal(size=x.size)
		>>> y[11:15] += 10  # add outliers
		>>> y[-5:] -= 7
		
		Compute the slope and intercept.  For comparison, also compute the
		least-squares fit with `linregress`:
		
		>>> res = stats.siegelslopes(y, x)
		>>> lsq_res = stats.linregress(x, y)
		
		Plot the results. The Siegel regression line is shown in red. The green
		line shows the least-squares fit for comparison.
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, y, 'b.')
		>>> ax.plot(x, res[1] + res[0] * x, 'r-')
		>>> ax.plot(x, lsq_res[1] + lsq_res[0] * x, 'g-')
		>>> plt.show()
	**/
	static public function siegelslopes(y:Dynamic, ?x:Dynamic, ?method:Dynamic):Float;
	/**
		Computes the Theil-Sen estimator for a set of points (x, y).
		
		`theilslopes` implements a method for robust linear regression.  It
		computes the slope as the median of all slopes between paired values.
		
		Parameters
		----------
		y : array_like
		    Dependent variable.
		x : array_like or None, optional
		    Independent variable. If None, use ``arange(len(y))`` instead.
		alpha : float, optional
		    Confidence degree between 0 and 1. Default is 95% confidence.
		    Note that `alpha` is symmetric around 0.5, i.e. both 0.1 and 0.9 are
		    interpreted as "find the 90% confidence interval".
		
		Returns
		-------
		medslope : float
		    Theil slope.
		medintercept : float
		    Intercept of the Theil line, as ``median(y) - medslope*median(x)``.
		lo_slope : float
		    Lower bound of the confidence interval on `medslope`.
		up_slope : float
		    Upper bound of the confidence interval on `medslope`.
		
		See also
		--------
		siegelslopes : a similar technique using repeated medians
		
		Notes
		-----
		The implementation of `theilslopes` follows [1]_. The intercept is
		not defined in [1]_, and here it is defined as ``median(y) -
		medslope*median(x)``, which is given in [3]_. Other definitions of
		the intercept exist in the literature. A confidence interval for
		the intercept is not given as this question is not addressed in
		[1]_.
		
		References
		----------
		.. [1] P.K. Sen, "Estimates of the regression coefficient based on Kendall's tau",
		       J. Am. Stat. Assoc., Vol. 63, pp. 1379-1389, 1968.
		.. [2] H. Theil, "A rank-invariant method of linear and polynomial
		       regression analysis I, II and III",  Nederl. Akad. Wetensch., Proc.
		       53:, pp. 386-392, pp. 521-525, pp. 1397-1412, 1950.
		.. [3] W.L. Conover, "Practical nonparametric statistics", 2nd ed.,
		       John Wiley and Sons, New York, pp. 493.
		
		Examples
		--------
		>>> from scipy import stats
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-5, 5, num=150)
		>>> y = x + np.random.normal(size=x.size)
		>>> y[11:15] += 10  # add outliers
		>>> y[-5:] -= 7
		
		Compute the slope, intercept and 90% confidence interval.  For comparison,
		also compute the least-squares fit with `linregress`:
		
		>>> res = stats.theilslopes(y, x, 0.90)
		>>> lsq_res = stats.linregress(x, y)
		
		Plot the results. The Theil-Sen regression line is shown in red, with the
		dashed red lines illustrating the confidence interval of the slope (note
		that the dashed red lines are not the confidence interval of the regression
		as the confidence interval of the intercept is not included). The green
		line shows the least-squares fit for comparison.
		
		>>> fig = plt.figure()
		>>> ax = fig.add_subplot(111)
		>>> ax.plot(x, y, 'b.')
		>>> ax.plot(x, res[1] + res[0] * x, 'r-')
		>>> ax.plot(x, res[1] + res[2] * x, 'r--')
		>>> ax.plot(x, res[1] + res[3] * x, 'r--')
		>>> ax.plot(x, lsq_res[1] + lsq_res[0] * x, 'g-')
		>>> plt.show()
	**/
	static public function theilslopes(y:Dynamic, ?x:Dynamic, ?alpha:Dynamic):Float;
}