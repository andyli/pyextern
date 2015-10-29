/* This file is generated, do not edit! */
package scipy.stats;
@:pythonImport("scipy.stats._multivariate") extern class _Multivariate {
	static public var _LOG_2 : Dynamic;
	static public var _LOG_2PI : Dynamic;
	static public var _LOG_PI : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Invert the matrices a_i, using a Cholesky factorization of A, where
		a_i resides in the last two dimensions of a and the other indices describe
		the index i.
		
		Overwrites the data in a.
		
		Parameters
		----------
		a : array
		    Array of matrices to invert, where the matrices themselves are stored
		    in the last two dimensions.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    Array of inverses of the matrices ``a_i``.
		
		See also
		--------
		scipy.linalg.cholesky : Cholesky factorization of a matrix
	**/
	static public function _cho_inv_batch(a:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public function _dirichlet_check_input(alpha:Dynamic, x:Dynamic):Dynamic;
	static public function _dirichlet_check_parameters(alpha:Dynamic):Dynamic;
	static public var _dirichlet_doc_default_callparams : Dynamic;
	static public var _dirichlet_doc_frozen_callparams : Dynamic;
	static public var _dirichlet_doc_frozen_callparams_note : Dynamic;
	static public var _doc_callparams_note : Dynamic;
	static public var _doc_default_callparams : Dynamic;
	static public var _doc_frozen_callparams : Dynamic;
	static public var _doc_frozen_callparams_note : Dynamic;
	static public var _doc_random_state : Dynamic;
	/**
		Determine which eigenvalues are "small" given the spectrum.
		
		This is for compatibility across various linear algebra functions
		that should agree about whether or not a Hermitian matrix is numerically
		singular and what is its numerical matrix rank.
		This is designed to be compatible with scipy.linalg.pinvh.
		
		Parameters
		----------
		spectrum : 1d ndarray
		    Array of eigenvalues of a Hermitian matrix.
		cond, rcond : float, optional
		    Cutoff for small eigenvalues.
		    Singular values smaller than rcond * largest_eigenvalue are
		    considered zero.
		    If None or -1, suitable machine precision is used.
		
		Returns
		-------
		eps : float
		    Magnitude cutoff for numerical negligibility.
	**/
	static public function _eigvalsh_to_eps(spectrum:Dynamic, ?cond:Dynamic, ?rcond:Dynamic):Dynamic;
	/**
		Internal helper function to compute the log of the useful quotient
		
		.. math::
		
		    B(\alpha) = \frac{\prod_{i=1}{K}\Gamma(\alpha_i)}{\Gamma\left(\sum_{i=1}^{K}\alpha_i\right)}
		
		Parameters
		----------
		%(_dirichlet_doc_default_callparams)s
		
		Returns
		-------
		B : scalar
		    Helper quotient, internal use only
	**/
	static public function _lnB(alpha:Dynamic):Dynamic;
	/**
		A helper function for computing the pseudoinverse.
		
		Parameters
		----------
		v : iterable of numbers
		    This may be thought of as a vector of eigenvalues or singular values.
		eps : float
		    Values with magnitude no greater than eps are considered negligible.
		
		Returns
		-------
		v_pinv : 1d float ndarray
		    A vector of pseudo-inverted numbers.
	**/
	static public function _pinv_1d(v:Dynamic, ?eps:Dynamic):Dynamic;
	/**
		Infer dimensionality from mean or covariance matrix, ensure that
		mean and covariance are full vector resp. matrix.
	**/
	static public function _process_parameters(dim:Dynamic, mean:Dynamic, cov:Dynamic):Dynamic;
	/**
		Adjust quantiles array so that last axis labels the components of
		each data point.
	**/
	static public function _process_quantiles(x:Dynamic, dim:Dynamic):Dynamic;
	/**
		Remove single-dimensional entries from array and convert to scalar,
		if necessary.
	**/
	static public function _squeeze_output(out:Dynamic):Dynamic;
	static public var _wishart_doc_callparams_note : Dynamic;
	static public var _wishart_doc_default_callparams : Dynamic;
	static public var _wishart_doc_frozen_callparams : Dynamic;
	static public var _wishart_doc_frozen_callparams_note : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convert the input to an array, checking for NaNs or Infs.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.  Success requires no NaNs or Infs.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		     Whether to use row-major (C-style) or
		     column-major (Fortran-style) memory representation.
		     Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		Raises
		------
		ValueError
		    Raises ValueError if `a` contains NaN (Not a Number) or Inf (Infinity).
		
		See Also
		--------
		asarray : Create and array.
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array.  If all elements are finite
		``asarray_chkfinite`` is identical to ``asarray``.
		
		>>> a = [1, 2]
		>>> np.asarray_chkfinite(a, dtype=float)
		array([1., 2.])
		
		Raises ValueError if array_like contains Nans or Infs.
		
		>>> a = [1, 2, np.inf]
		>>> try:
		...     np.asarray_chkfinite(a)
		... except ValueError:
		...     print 'ValueError'
		...
		ValueError
	**/
	static public function asarray_chkfinite(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Turn seed into a np.random.RandomState instance
		
		If seed is None (or np.random), return the RandomState singleton used 
		by np.random.
		If seed is an int, return a new RandomState instance seeded with seed.
		If seed is already a RandomState instance, return it.
		Otherwise raise ValueError.
	**/
	static public function check_random_state(seed:Dynamic):Dynamic;
	/**
		A Dirichlet random variable.
		
		The `alpha` keyword specifies the concentration parameters of the
		distribution.
		
		.. versionadded:: 0.15.0
		
		Methods
		-------
		``pdf(x, alpha)``
		    Probability density function.
		``logpdf(x, alpha)``
		    Log of the probability density function.
		``rvs(alpha, size=1, random_state=None)``
		    Draw random samples from a Dirichlet distribution.
		``mean(alpha)``
		    The mean of the Dirichlet distribution
		``var(alpha)``
		    The variance of the Dirichlet distribution
		``entropy(alpha)``
		    Compute the differential entropy of the multivariate normal.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		alpha : array_like
		    The concentration parameters. The number of entries determines the
		    dimensionality of the distribution.
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Alternatively, the object may be called (as a function) to fix
		concentration parameters, returning a "frozen" Dirichlet
		random variable:
		
		rv = dirichlet(alpha)
		    - Frozen object with the same methods but holding the given
		      concentration parameters fixed.
		
		Notes
		-----
		Each :math:`\alpha` entry must be positive. The distribution has only
		support on the simplex defined by
		
		.. math::
		    \sum_{i=1}^{K} x_i \le 1
		
		
		The probability density function for `dirichlet` is
		
		.. math::
		
		    f(x) = \frac{1}{\mathrm{B}(\boldsymbol\alpha)} \prod_{i=1}^K x_i^{\alpha_i - 1}
		
		where
		
		.. math::
		
		    \mathrm{B}(\boldsymbol\alpha) = \frac{\prod_{i=1}^K \Gamma(\alpha_i)}
		                                 {\Gamma\bigl(\sum_{i=1}^K \alpha_i\bigr)}
		
		and :math:`\boldsymbol\alpha=(\alpha_1,\ldots,\alpha_K)`, the
		concentration parameters and :math:`K` is the dimension of the space
		where :math:`x` takes values.
	**/
	static public function dirichlet(alpha:Dynamic, ?seed:Dynamic):Dynamic;
	static public var dirichlet_docdict_noparams : Dynamic;
	static public var dirichlet_docdict_params : Dynamic;
	static public var division : Dynamic;
	static public var docdict_noparams : Dynamic;
	static public var docdict_params : Dynamic;
	/**
		gammaln(x[, out])
		
		gammaln(z)
		
		Logarithm of absolute value of gamma function
		
		Defined as::
		
		    ln(abs(gamma(z)))
		
		See Also
		--------
		gammasgn
	**/
	static public function gammaln(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return available LAPACK function objects from names.
		
		Arrays are used to determine the optimal prefix of LAPACK routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of LAPACK functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of LAPACK
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		
		Returns
		-------
		funcs : list
		    List containing the found function(s).
		
		
		Notes
		-----
		This routine automatically chooses between Fortran/C
		interfaces. Fortran code is used whenever possible for arrays with
		column major order. In all other cases, C code is preferred.
		
		In LAPACK, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the numpy
		types {float32, float64, complex64, complex128} respectevely, and
		are stored in attribute `typecode` of the returned functions.
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		An inverse Wishart random variable.
		
		The `df` keyword specifies the degrees of freedom. The `scale` keyword
		specifies the scale matrix, which must be symmetric and positive definite.
		In this context, the scale matrix is often interpreted in terms of a
		multivariate normal covariance matrix.
		
		Methods
		-------
		``pdf(x, df, scale)``
		    Probability density function.
		``logpdf(x, df, scale)``
		    Log of the probability density function.
		``rvs(df, scale, size=1, random_state=None)``
		    Draw random samples from an inverse Wishart distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Alternatively, the object may be called (as a function) to fix the degrees
		of freedom and scale parameters, returning a "frozen" inverse Wishart
		random variable:
		
		rv = invwishart(df=1, scale=1)
		    - Frozen object with the same methods but holding the given
		      degrees of freedom and scale fixed.
		
		See Also
		--------
		wishart
		
		Notes
		-----
		
		
		The scale matrix `scale` must be a symmetric positive definite
		matrix. Singular matrices, including the symmetric positive semi-definite
		case, are not supported.
		
		The inverse Wishart distribution is often denoted
		
		.. math::
		
		    W_p^{-1}(\nu, \Psi)
		
		where :math:`\nu` is the degrees of freedom and :math:`\Psi` is the
		:math:`p \times p` scale matrix.
		
		The probability density function for `invwishart` has support over positive
		definite matrices :math:`S`; if :math:`S \sim W^{-1}_p(\nu, \Sigma)`,
		then its PDF is given by:
		
		.. math::
		
		    f(S) = \frac{|\Sigma|^\frac{\nu}{2}}{2^{ \frac{\nu p}{2} }
		           |S|^{\frac{\nu + p + 1}{2}} \Gamma_p \left(\frac{\nu}{2} \right)}
		           \exp\left( -tr(\Sigma S^{-1}) / 2 \right)
		
		If :math:`S \sim W_p^{-1}(\nu, \Psi)` (inverse Wishart) then
		:math:`S^{-1} \sim W_p(\nu, \Psi^{-1})` (Wishart).
		
		If the scale matrix is 1-dimensional and equal to one, then the inverse
		Wishart distribution :math:`W_1(\nu, 1)` collapses to the
		inverse Gamma distribution with parameters shape = :math:`\frac{\nu}{2}`
		and scale = :math:`\frac{1}{2}`.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] M.L. Eaton, "Multivariate Statistics: A Vector Space Approach",
		       Wiley, 1983.
		.. [2] M.C. Jones, "Generating Inverse Wishart Matrices", Communications in
		       Statistics - Simulation and Computation, vol. 14.2, pp.511-514, 1985.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import invwishart, invgamma
		>>> x = np.linspace(0.01, 1, 100)
		>>> iw = invwishart.pdf(x, df=6, scale=1)
		>>> iw[:3]
		array([  1.20546865e-15,   5.42497807e-06,   4.45813929e-03])
		>>> ig = invgamma.pdf(x, 6/2., scale=1./2)
		>>> ig[:3]
		array([  1.20546865e-15,   5.42497807e-06,   4.45813929e-03])
		>>> plt.plot(x, iw)
		
		The input quantiles can be any shape of array, as long as the last
		axis labels the components.
	**/
	static public function invwishart(?df:Dynamic, ?scale:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Draw random samples from an inverse Wishart distribution.
		
		Parameters
		----------
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		size : integer or iterable of integers, optional
		    Number of samples to draw (default 1).
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Returns
		-------
		rvs : ndarray
		    Random variates of shape (`size`) + (`dim`, `dim), where `dim` is
		    the dimension of the scale matrix.
		
		Notes
		-----
	**/
	static public function method(self:Dynamic, df:Dynamic, scale:Dynamic, ?size:Dynamic, ?random_state:Dynamic):Dynamic;
	/**
		Draw random samples from an inverse Wishart distribution.
		
		Parameters
		----------
		
		size : integer or iterable of integers, optional
		    Number of samples to draw (default 1).
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Returns
		-------
		rvs : ndarray
		    Random variates of shape (`size`) + (`dim`, `dim), where `dim` is
		    the dimension of the scale matrix.
		
		Notes
		-----
		See class definition for a detailed description of parameters.
	**/
	static public function method_frozen(self:Dynamic, ?size:Dynamic, ?random_state:Dynamic):Dynamic;
	/**
		Returns the log of multivariate gamma, also sometimes called the
		generalized gamma.
		
		Parameters
		----------
		a : ndarray
		    The multivariate gamma is computed for each item of `a`.
		d : int
		    The dimension of the space of integration.
		
		Returns
		-------
		res : ndarray
		    The values of the log multivariate gamma at the given points `a`.
		
		Notes
		-----
		The formal definition of the multivariate gamma of dimension d for a real a
		is::
		
		    \Gamma_d(a) = \int_{A>0}{e^{-tr(A)\cdot{|A|}^{a - (m+1)/2}dA}}
		
		with the condition ``a > (d-1)/2``, and ``A > 0`` being the set of all the
		positive definite matrices of dimension s.  Note that a is a scalar: the
		integrand only is multivariate, the argument is not (the function is
		defined over a subset of the real set).
		
		This can be proven to be equal to the much friendlier equation::
		
		    \Gamma_d(a) = \pi^{d(d-1)/4}\prod_{i=1}^{d}{\Gamma(a - (i-1)/2)}.
		
		References
		----------
		R. J. Muirhead, Aspects of multivariate statistical theory (Wiley Series in
		probability and mathematical statistics).
	**/
	static public function multigammaln(a:Dynamic, d:Dynamic):Dynamic;
	/**
		A multivariate normal random variable.
		
		The `mean` keyword specifies the mean. The `cov` keyword specifies the
		covariance matrix.
		
		Methods
		-------
		``pdf(x, mean=None, cov=1, allow_singular=False)``
		    Probability density function.
		``logpdf(x, mean=None, cov=1, allow_singular=False)``
		    Log of the probability density function.
		``rvs(mean=None, cov=1, size=1, random_state=None)``
		    Draw random samples from a multivariate normal distribution.
		``entropy()``
		    Compute the differential entropy of the multivariate normal.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		mean : array_like, optional
		    Mean of the distribution (default zero)
		cov : array_like, optional
		    Covariance matrix of the distribution (default one)
		allow_singular : bool, optional
		    Whether to allow a singular covariance matrix.  (Default: False)
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Alternatively, the object may be called (as a function) to fix the mean
		and covariance parameters, returning a "frozen" multivariate normal
		random variable:
		
		rv = multivariate_normal(mean=None, cov=1, allow_singular=False)
		    - Frozen object with the same methods but holding the given
		      mean and covariance fixed.
		
		Notes
		-----
		Setting the parameter `mean` to `None` is equivalent to having `mean`
		    be the zero-vector. The parameter `cov` can be a scalar, in which case
		    the covariance matrix is the identity times that value, a vector of
		    diagonal entries for the covariance matrix, or a two-dimensional
		    array_like.
		    
		
		The covariance matrix `cov` must be a (symmetric) positive
		semi-definite matrix. The determinant and inverse of `cov` are computed
		as the pseudo-determinant and pseudo-inverse, respectively, so
		that `cov` does not need to have full rank.
		
		The probability density function for `multivariate_normal` is
		
		.. math::
		
		    f(x) = \frac{1}{\sqrt{(2 \pi)^k \det \Sigma}}
		           \exp\left( -\frac{1}{2} (x - \mu)^T \Sigma^{-1} (x - \mu) \right),
		
		where :math:`\mu` is the mean, :math:`\Sigma` the covariance matrix,
		and :math:`k` is the dimension of the space where :math:`x` takes values.
		
		.. versionadded:: 0.14.0
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import multivariate_normal
		
		>>> x = np.linspace(0, 5, 10, endpoint=False)
		>>> y = multivariate_normal.pdf(x, mean=2.5, cov=0.5); y
		array([ 0.00108914,  0.01033349,  0.05946514,  0.20755375,  0.43939129,
		        0.56418958,  0.43939129,  0.20755375,  0.05946514,  0.01033349])
		>>> fig1 = plt.figure()
		>>> ax = fig1.add_subplot(111)
		>>> ax.plot(x, y)
		
		The input quantiles can be any shape of array, as long as the last
		axis labels the components.  This allows us for instance to
		display the frozen pdf for a non-isotropic random variable in 2D as
		follows:
		
		>>> x, y = np.mgrid[-1:1:.01, -1:1:.01]
		>>> pos = np.empty(x.shape + (2,))
		>>> pos[:, :, 0] = x; pos[:, :, 1] = y
		>>> rv = multivariate_normal([0.5, -0.2], [[2.0, 0.3], [0.3, 0.5]])
		>>> fig2 = plt.figure()
		>>> ax2 = fig2.add_subplot(111)
		>>> ax2.contourf(x, y, rv.pdf(pos))
	**/
	static public function multivariate_normal(?mean:Dynamic, ?cov:Dynamic, ?allow_singular:Dynamic, ?seed:Dynamic):Dynamic;
	static public var name : Dynamic;
	static public var print_function : Dynamic;
	/**
		psi(x[, out])
		
		psi(z)
		
		Digamma function
		
		The derivative of the logarithm of the gamma function evaluated at
		z (also called the digamma function).
	**/
	static public function psi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A Wishart random variable.
		
		The `df` keyword specifies the degrees of freedom. The `scale` keyword
		specifies the scale matrix, which must be symmetric and positive definite.
		In this context, the scale matrix is often interpreted in terms of a
		multivariate normal precision matrix (the inverse of the covariance
		matrix).
		
		Methods
		-------
		``pdf(x, df, scale)``
		    Probability density function.
		``logpdf(x, df, scale)``
		    Log of the probability density function.
		``rvs(df, scale, size=1, random_state=None)``
		    Draw random samples from a Wishart distribution.
		``entropy()``
		    Compute the differential entropy of the Wishart distribution.
		
		Parameters
		----------
		x : array_like
		    Quantiles, with the last axis of `x` denoting the components.
		df : int
		    Degrees of freedom, must be greater than or equal to dimension of the
		    scale matrix
		scale : array_like
		    Symmetric positive definite scale matrix of the distribution
		random_state : None or int or np.random.RandomState instance, optional
		    If int or RandomState, use it for drawing the random variates.
		    If None (or np.random), the global np.random state is used.
		    Default is None.
		
		Alternatively, the object may be called (as a function) to fix the degrees
		of freedom and scale parameters, returning a "frozen" Wishart random
		variable:
		
		rv = wishart(df=1, scale=1)
		    - Frozen object with the same methods but holding the given
		      degrees of freedom and scale fixed.
		
		See Also
		--------
		invwishart, chi2
		
		Notes
		-----
		
		
		The scale matrix `scale` must be a symmetric positive definite
		matrix. Singular matrices, including the symmetric positive semi-definite
		case, are not supported.
		
		The Wishart distribution is often denoted
		
		.. math::
		
		    W_p(\nu, \Sigma)
		
		where :math:`\nu` is the degrees of freedom and :math:`\Sigma` is the
		:math:`p \times p` scale matrix.
		
		The probability density function for `wishart` has support over positive
		definite matrices :math:`S`; if :math:`S \sim W_p(\nu, \Sigma)`, then
		its PDF is given by:
		
		.. math::
		
		    f(S) = \frac{|S|^{\frac{\nu - p - 1}{2}}}{2^{ \frac{\nu p}{2} }
		           |\Sigma|^\frac{\nu}{2} \Gamma_p \left ( \frac{\nu}{2} \right )}
		           \exp\left( -tr(\Sigma^{-1} S) / 2 \right)
		
		If :math:`S \sim W_p(\nu, \Sigma)` (Wishart) then
		:math:`S^{-1} \sim W_p^{-1}(\nu, \Sigma^{-1})` (inverse Wishart).
		
		If the scale matrix is 1-dimensional and equal to one, then the Wishart
		distribution :math:`W_1(\nu, 1)` collapses to the :math:`\chi^2(\nu)`
		distribution.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		.. [1] M.L. Eaton, "Multivariate Statistics: A Vector Space Approach",
		       Wiley, 1983.
		.. [2] W.B. Smith and R.R. Hocking, "Algorithm AS 53: Wishart Variate
		       Generator", Applied Statistics, vol. 21, pp. 341-345, 1972.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.stats import wishart, chi2
		>>> x = np.linspace(1e-5, 8, 100)
		>>> w = wishart.pdf(x, df=3, scale=1); w[:5]
		array([ 0.00126156,  0.10892176,  0.14793434,  0.17400548,  0.1929669 ])
		>>> c = chi2.pdf(x, 3); c[:5]
		array([ 0.00126156,  0.10892176,  0.14793434,  0.17400548,  0.1929669 ])
		>>> plt.plot(x, w)
		
		The input quantiles can be any shape of array, as long as the last
		axis labels the components.
	**/
	static public function wishart(?df:Dynamic, ?scale:Dynamic, ?seed:Dynamic):Dynamic;
	static public var wishart_docdict_noparams : Dynamic;
	static public var wishart_docdict_params : Dynamic;
}