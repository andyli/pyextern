/* This file is generated, do not edit! */
package numpy.polynomial._polybase;
@:pythonImport("numpy.polynomial._polybase", "ABCPolyBase") extern class ABCPolyBase {
	public function __add__(other:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(arg:Dynamic):Dynamic;
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
	public function __div__(other:Dynamic):Dynamic;
	public function __divmod__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
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
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(coef:Dynamic, ?domain:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(coef:Dynamic, ?domain:Dynamic, ?window:Dynamic):Void;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __pos__():Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	public function __rdivmod__(other:Dynamic):Dynamic;
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
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(dict:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add():Dynamic;
	public function _der():Dynamic;
	public function _div():Dynamic;
	public function _fit():Dynamic;
	public function _fromroots():Dynamic;
	/**
		Interpret other as polynomial coefficients.
		
		The `other` argument is checked to see if it is of the same
		class as self with identical domain and window. If so,
		return its coefficients, otherwise return `other`.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		other : anything
		    Object to be checked.
		
		Returns
		-------
		coef:
		    The coefficients of`other` if it is a compatible instance,
		    of ABCPolyBase, otherwise `other`.
		
		Raises
		------
		TypeError:
		    When `other` is an incompatible instance of ABCPolyBase.
	**/
	public function _get_coefficients(other:Dynamic):Dynamic;
	public function _int():Dynamic;
	public function _line():Dynamic;
	public function _mul():Dynamic;
	public function _pow():Dynamic;
	public function _roots():Dynamic;
	public function _sub():Dynamic;
	public function _val():Dynamic;
	/**
		Series basis polynomial of degree `deg`.
		
		Returns the series representing the basis polynomial of degree `deg`.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		deg : int
		    Degree of the basis polynomial for the series. Must be >= 0.
		domain : {None, array_like}, optional
		    If given, the array must be of the form ``[beg, end]``, where
		    ``beg`` and ``end`` are the endpoints of the domain. If None is
		    given then the class domain is used. The default is None.
		window : {None, array_like}, optional
		    If given, the resulting array must be if the form
		    ``[beg, end]``, where ``beg`` and ``end`` are the endpoints of
		    the window. If None is given then the class window is used. The
		    default is None.
		
		Returns
		-------
		new_series : series
		    A series with the coefficient of the `deg` term set to one and
		    all others zero.
	**/
	static public function basis(deg:Dynamic, ?domain:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Convert series to series of this class.
		
		The `series` is expected to be an instance of some polynomial
		series of one of the types supported by by the numpy.polynomial
		module, but could be some other class that supports the convert
		method.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		series : series
		    The series instance to be converted.
		domain : {None, array_like}, optional
		    If given, the array must be of the form ``[beg, end]``, where
		    ``beg`` and ``end`` are the endpoints of the domain. If None is
		    given then the class domain is used. The default is None.
		window : {None, array_like}, optional
		    If given, the resulting array must be if the form
		    ``[beg, end]``, where ``beg`` and ``end`` are the endpoints of
		    the window. If None is given then the class window is used. The
		    default is None.
		
		Returns
		-------
		new_series : series
		    A series of the same kind as the calling class and equal to
		    `series` when evaluated.
		
		See Also
		--------
		convert : similar instance method
	**/
	@:native("cast")
	static public function _cast(series:Dynamic, ?domain:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Convert series to a different kind and/or domain and/or window.
		
		Parameters
		----------
		domain : array_like, optional
		    The domain of the converted series. If the value is None,
		    the default domain of `kind` is used.
		kind : class, optional
		    The polynomial series type class to which the current instance
		    should be converted. If kind is None, then the class of the
		    current instance is used.
		window : array_like, optional
		    The window of the converted series. If the value is None,
		    the default window of `kind` is used.
		
		Returns
		-------
		new_series : series
		    The returned class can be of different type than the current
		    instance and/or have a different domain and/or different
		    window.
		
		Notes
		-----
		Conversion between domains and class types can result in
		numerically ill defined series.
		
		Examples
		--------
	**/
	public function convert(?domain:Dynamic, ?kind:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Return a copy.
		
		Returns
		-------
		new_series : series
		    Copy of self.
	**/
	public function copy():Dynamic;
	/**
		Truncate series to the given degree.
		
		Reduce the degree of the series to `deg` by discarding the
		high order terms. If `deg` is greater than the current degree a
		copy of the current series is returned. This can be useful in least
		squares where the coefficients of the high degree terms may be very
		small.
		
		.. versionadded:: 1.5.0
		
		Parameters
		----------
		deg : non-negative int
		    The series is reduced to degree `deg` by discarding the high
		    order terms. The value of `deg` must be a non-negative integer.
		
		Returns
		-------
		new_series : series
		    New instance of series with reduced degree.
	**/
	public function cutdeg(deg:Dynamic):Dynamic;
	/**
		The degree of the series.
		
		.. versionadded:: 1.5.0
		
		Returns
		-------
		degree : int
		    Degree of the series, one less than the number of coefficients.
	**/
	public function degree():Dynamic;
	/**
		Differentiate.
		
		Return a series instance of that is the derivative of the current
		series.
		
		Parameters
		----------
		m : non-negative int
		    Find the derivative of order `m`.
		
		Returns
		-------
		new_series : series
		    A new series representing the derivative. The domain is the same
		    as the domain of the differentiated series.
	**/
	public function deriv(?m:Dynamic):Dynamic;
	public var domain : Dynamic;
	/**
		Least squares fit to data.
		
		Return a series instance that is the least squares fit to the data
		`y` sampled at `x`. The domain of the returned instance can be
		specified and this will often result in a superior fit with less
		chance of ill conditioning.
		
		Parameters
		----------
		x : array_like, shape (M,)
		    x-coordinates of the M sample points ``(x[i], y[i])``.
		y : array_like, shape (M,) or (M, K)
		    y-coordinates of the sample points. Several data sets of sample
		    points sharing the same x-coordinates can be fitted at once by
		    passing in a 2D-array that contains one dataset per column.
		deg : int
		    Degree of the fitting polynomial.
		domain : {None, [beg, end], []}, optional
		    Domain to use for the returned series. If ``None``,
		    then a minimal domain that covers the points `x` is chosen.  If
		    ``[]`` the class domain is used. The default value was the
		    class domain in NumPy 1.4 and ``None`` in later versions.
		    The ``[]`` option was added in numpy 1.5.0.
		rcond : float, optional
		    Relative condition number of the fit. Singular values smaller
		    than this relative to the largest singular value will be
		    ignored. The default value is len(x)*eps, where eps is the
		    relative precision of the float type, about 2e-16 in most
		    cases.
		full : bool, optional
		    Switch determining nature of return value. When it is False
		    (the default) just the coefficients are returned, when True
		    diagnostic information from the singular value decomposition is
		    also returned.
		w : array_like, shape (M,), optional
		    Weights. If not None the contribution of each point
		    ``(x[i],y[i])`` to the fit is weighted by `w[i]`. Ideally the
		    weights are chosen so that the errors of the products
		    ``w[i]*y[i]`` all have the same variance.  The default value is
		    None.
		
		    .. versionadded:: 1.5.0
		window : {[beg, end]}, optional
		    Window to use for the returned series. The default
		    value is the default class domain
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		new_series : series
		    A series that represents the least squares fit to the data and
		    has the domain specified in the call.
		
		[resid, rank, sv, rcond] : list
		    These values are only returned if `full` = True
		
		    resid -- sum of squared residuals of the least squares fit
		    rank -- the numerical rank of the scaled Vandermonde matrix
		    sv -- singular values of the scaled Vandermonde matrix
		    rcond -- value of `rcond`.
		
		    For more details, see `linalg.lstsq`.
	**/
	static public function fit(x:Dynamic, y:Dynamic, deg:Dynamic, ?domain:Dynamic, ?rcond:Dynamic, ?full:Dynamic, ?w:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Return series instance that has the specified roots.
		
		Returns a series representing the product
		``(x - r[0])*(x - r[1])*...*(x - r[n-1])``, where ``r`` is a
		list of roots.
		
		Parameters
		----------
		roots : array_like
		    List of roots.
		domain : {[], None, array_like}, optional
		    Domain for the resulting series. If None the domain is the
		    interval from the smallest root to the largest. If [] the
		    domain is the class domain. The default is [].
		window : {None, array_like}, optional
		    Window for the returned series. If None the class window is
		    used. The default is None.
		
		Returns
		-------
		new_series : series
		    Series with the specified roots.
	**/
	static public function fromroots(roots:Dynamic, ?domain:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Check if coefficients match.
		
		.. versionadded:: 1.6.0
		
		Parameters
		----------
		other : class instance
		    The other class must have the ``coef`` attribute.
		
		Returns
		-------
		bool : boolean
		    True if the coefficients are the same, False otherwise.
	**/
	public function has_samecoef(other:Dynamic):Dynamic;
	/**
		Check if domains match.
		
		.. versionadded:: 1.6.0
		
		Parameters
		----------
		other : class instance
		    The other class must have the ``domain`` attribute.
		
		Returns
		-------
		bool : boolean
		    True if the domains are the same, False otherwise.
	**/
	public function has_samedomain(other:Dynamic):Dynamic;
	/**
		Check if types match.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		other : object
		    Class instance.
		
		Returns
		-------
		bool : boolean
		    True if other is same class as self
	**/
	public function has_sametype(other:Dynamic):Dynamic;
	/**
		Check if windows match.
		
		.. versionadded:: 1.6.0
		
		Parameters
		----------
		other : class instance
		    The other class must have the ``window`` attribute.
		
		Returns
		-------
		bool : boolean
		    True if the windows are the same, False otherwise.
	**/
	public function has_samewindow(other:Dynamic):Dynamic;
	/**
		Identity function.
		
		If ``p`` is the returned series, then ``p(x) == x`` for all
		values of x.
		
		Parameters
		----------
		domain : {None, array_like}, optional
		    If given, the array must be of the form ``[beg, end]``, where
		    ``beg`` and ``end`` are the endpoints of the domain. If None is
		    given then the class domain is used. The default is None.
		window : {None, array_like}, optional
		    If given, the resulting array must be if the form
		    ``[beg, end]``, where ``beg`` and ``end`` are the endpoints of
		    the window. If None is given then the class window is used. The
		    default is None.
		
		Returns
		-------
		new_series : series
		     Series of representing the identity.
	**/
	static public function identity(?domain:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Integrate.
		
		Return a series instance that is the definite integral of the
		current series.
		
		Parameters
		----------
		m : non-negative int
		    The number of integrations to perform.
		k : array_like
		    Integration constants. The first constant is applied to the
		    first integration, the second to the second, and so on. The
		    list of values must less than or equal to `m` in length and any
		    missing values are set to zero.
		lbnd : Scalar
		    The lower bound of the definite integral.
		
		Returns
		-------
		new_series : series
		    A new series representing the integral. The domain is the same
		    as the domain of the integrated series.
	**/
	public function integ(?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic):Dynamic;
	/**
		Return x, y values at equally spaced points in domain.
		
		Returns the x, y values at `n` linearly spaced points across the
		domain.  Here y is the value of the polynomial at the points x. By
		default the domain is the same as that of the series instance.
		This method is intended mostly as a plotting aid.
		
		.. versionadded:: 1.5.0
		
		Parameters
		----------
		n : int, optional
		    Number of point pairs to return. The default value is 100.
		domain : {None, array_like}, optional
		    If not None, the specified domain is used instead of that of
		    the calling instance. It should be of the form ``[beg,end]``.
		    The default is None which case the class domain is used.
		
		Returns
		-------
		x, y : ndarray
		    x is equal to linspace(self.domain[0], self.domain[1], n) and
		    y is the series evaluated at element of x.
	**/
	public function linspace(?n:Dynamic, ?domain:Dynamic):Dynamic;
	/**
		Return the mapping parameters.
		
		The returned values define a linear map ``off + scl*x`` that is
		applied to the input arguments before the series is evaluated. The
		map depends on the ``domain`` and ``window``; if the current
		``domain`` is equal to the ``window`` the resulting map is the
		identity.  If the coefficients of the series instance are to be
		used by themselves outside this class, then the linear function
		must be substituted for the ``x`` in the standard representation of
		the base polynomials.
		
		Returns
		-------
		off, scl : float or complex
		    The mapping function is defined by ``off + scl*x``.
		
		Notes
		-----
		If the current domain is the interval ``[l1, r1]`` and the window
		is ``[l2, r2]``, then the linear mapping function ``L`` is
		defined by the equations::
		
		    L(l1) = l2
		    L(r1) = r2
	**/
	public function mapparms():Dynamic;
	static public var maxpower : Dynamic;
	public var nickname : Dynamic;
	/**
		Return the roots of the series polynomial.
		
		Compute the roots for the series. Note that the accuracy of the
		roots decrease the further outside the domain they lie.
		
		Returns
		-------
		roots : ndarray
		    Array containing the roots of the series.
	**/
	public function roots():Dynamic;
	/**
		Remove trailing coefficients
		
		Remove trailing coefficients until a coefficient is reached whose
		absolute value greater than `tol` or the beginning of the series is
		reached. If all the coefficients would be removed the series is set
		to ``[0]``. A new series instance is returned with the new
		coefficients.  The current instance remains unchanged.
		
		Parameters
		----------
		tol : non-negative number.
		    All trailing coefficients less than `tol` will be removed.
		
		Returns
		-------
		new_series : series
		    Contains the new set of coefficients.
	**/
	public function trim(?tol:Dynamic):Dynamic;
	/**
		Truncate series to length `size`.
		
		Reduce the series to length `size` by discarding the high
		degree terms. The value of `size` must be a positive integer. This
		can be useful in least squares where the coefficients of the
		high degree terms may be very small.
		
		Parameters
		----------
		size : positive int
		    The series is reduced to length `size` by discarding the high
		    degree terms. The value of `size` must be a positive integer.
		
		Returns
		-------
		new_series : series
		    New instance of series with truncated coefficients.
	**/
	public function truncate(size:Dynamic):Dynamic;
	public var window : Dynamic;
}