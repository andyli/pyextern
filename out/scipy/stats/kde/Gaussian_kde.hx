/* This file is generated, do not edit! */
package scipy.stats.kde;
@:pythonImport("scipy.stats.kde", "gaussian_kde") extern class Gaussian_kde {
	/**
		Evaluate the estimated pdf on a set of points.
		
		Parameters
		----------
		points : (# of dimensions, # of points)-array
		    Alternatively, a (# of dimensions,) vector can be passed in and
		    treated as a single point.
		
		Returns
		-------
		values : (# of points,)-array
		    The values at each point.
		
		Raises
		------
		ValueError : if the dimensionality of the input points is different than
		             the dimensionality of the KDE.
	**/
	public function __call__(points:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(dataset:Dynamic, ?bw_method:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Computes the covariance matrix for each Gaussian kernel using
		covariance_factor().
	**/
	public function _compute_covariance():Dynamic;
	/**
		Computes the coefficient (`kde.factor`) that
		multiplies the data covariance matrix to obtain the kernel covariance
		matrix. The default is `scotts_factor`.  A subclass can overwrite this
		method to provide a different method, or set it through a call to
		`kde.set_bandwidth`.
	**/
	public function covariance_factor():Dynamic;
	/**
		Evaluate the estimated pdf on a set of points.
		
		Parameters
		----------
		points : (# of dimensions, # of points)-array
		    Alternatively, a (# of dimensions,) vector can be passed in and
		    treated as a single point.
		
		Returns
		-------
		values : (# of points,)-array
		    The values at each point.
		
		Raises
		------
		ValueError : if the dimensionality of the input points is different than
		             the dimensionality of the KDE.
	**/
	public function evaluate(points:Dynamic):Dynamic;
	/**
		Computes the integral of a pdf over a rectangular interval.
		
		Parameters
		----------
		low_bounds : array_like
		    A 1-D array containing the lower bounds of integration.
		high_bounds : array_like
		    A 1-D array containing the upper bounds of integration.
		maxpts : int, optional
		    The maximum number of points to use for integration.
		
		Returns
		-------
		value : scalar
		    The result of the integral.
	**/
	public function integrate_box(low_bounds:Dynamic, high_bounds:Dynamic, ?maxpts:Dynamic):Dynamic;
	/**
		Computes the integral of a 1D pdf between two bounds.
		
		Parameters
		----------
		low : scalar
		    Lower bound of integration.
		high : scalar
		    Upper bound of integration.
		
		Returns
		-------
		value : scalar
		    The result of the integral.
		
		Raises
		------
		ValueError
		    If the KDE is over more than one dimension.
	**/
	public function integrate_box_1d(low:Dynamic, high:Dynamic):Dynamic;
	/**
		Multiply estimated density by a multivariate Gaussian and integrate
		over the whole space.
		
		Parameters
		----------
		mean : aray_like
		    A 1-D array, specifying the mean of the Gaussian.
		cov : array_like
		    A 2-D array, specifying the covariance matrix of the Gaussian.
		
		Returns
		-------
		result : scalar
		    The value of the integral.
		
		Raises
		------
		ValueError :
		    If the mean or covariance of the input Gaussian differs from
		    the KDE's dimensionality.
	**/
	public function integrate_gaussian(mean:Dynamic, cov:Dynamic):Dynamic;
	/**
		Computes the integral of the product of this  kernel density estimate
		with another.
		
		Parameters
		----------
		other : gaussian_kde instance
		    The other kde.
		
		Returns
		-------
		value : scalar
		    The result of the integral.
		
		Raises
		------
		ValueError
		    If the KDEs have different dimensionality.
	**/
	public function integrate_kde(other:Dynamic):Dynamic;
	/**
		Evaluate the log of the estimated pdf on a provided set of points.
		
		Notes
		-----
		See `gaussian_kde.evaluate` for more details; this method simply
		returns ``np.log(gaussian_kde.evaluate(x))``.
	**/
	public function logpdf(x:Dynamic):Dynamic;
	/**
		Evaluate the estimated pdf on a provided set of points.
		
		Notes
		-----
		This is an alias for `gaussian_kde.evaluate`.  See the ``evaluate``
		docstring for more details.
	**/
	public function pdf(x:Dynamic):Dynamic;
	/**
		Randomly sample a dataset from the estimated pdf.
		
		Parameters
		----------
		size : int, optional
		    The number of samples to draw.  If not provided, then the size is
		    the same as the underlying dataset.
		
		Returns
		-------
		resample : (self.d, `size`) ndarray
		    The sampled dataset.
	**/
	public function resample(?size:Dynamic):Dynamic;
	/**
		Computes the coefficient (`kde.factor`) that
		multiplies the data covariance matrix to obtain the kernel covariance
		matrix. The default is `scotts_factor`.  A subclass can overwrite this
		method to provide a different method, or set it through a call to
		`kde.set_bandwidth`.
	**/
	public function scotts_factor():Dynamic;
	/**
		Compute the estimator bandwidth with given method.
		
		The new bandwidth calculated after a call to `set_bandwidth` is used
		for subsequent evaluations of the estimated density.
		
		Parameters
		----------
		bw_method : str, scalar or callable, optional
		    The method used to calculate the estimator bandwidth.  This can be
		    'scott', 'silverman', a scalar constant or a callable.  If a
		    scalar, this will be used directly as `kde.factor`.  If a callable,
		    it should take a `gaussian_kde` instance as only parameter and
		    return a scalar.  If None (default), nothing happens; the current
		    `kde.covariance_factor` method is kept.
		
		Notes
		-----
		.. versionadded:: 0.11
		
		Examples
		--------
		>>> import scipy.stats as stats
		>>> x1 = np.array([-7, -5, 1, 4, 5.])
		>>> kde = stats.gaussian_kde(x1)
		>>> xs = np.linspace(-10, 10, num=50)
		>>> y1 = kde(xs)
		>>> kde.set_bandwidth(bw_method='silverman')
		>>> y2 = kde(xs)
		>>> kde.set_bandwidth(bw_method=kde.factor / 3.)
		>>> y3 = kde(xs)
		
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots()
		>>> ax.plot(x1, np.ones(x1.shape) / (4. * x1.size), 'bo',
		...         label='Data points (rescaled)')
		>>> ax.plot(xs, y1, label='Scott (default)')
		>>> ax.plot(xs, y2, label='Silverman')
		>>> ax.plot(xs, y3, label='Const (1/3 * Silverman)')
		>>> ax.legend()
		>>> plt.show()
	**/
	public function set_bandwidth(?bw_method:Dynamic):Dynamic;
	public function silverman_factor():Dynamic;
}