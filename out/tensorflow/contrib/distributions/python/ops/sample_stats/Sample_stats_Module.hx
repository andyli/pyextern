/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.sample_stats;
@:pythonImport("tensorflow.contrib.distributions.python.ops.sample_stats") extern class Sample_stats_Module {
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
		Get static ndims if possible.  Fallback on `tf.rank(x)`.
	**/
	static public function _get_best_effort_ndims(x:Dynamic, ?expect_ndims:Dynamic, ?expect_ndims_at_least:Dynamic, ?expect_ndims_no_more_than:Dynamic):Dynamic;
	/**
		Get static number of dimensions and assert that some expectations are met.
		
		This function returns the number of dimensions "ndims" of x, as a Python int.
		
		The optional expect arguments are used to check the ndims of x, but this is
		only done if the static ndims of x is not None.
		
		Args:
		  x:  A Tensor.
		  expect_static:  Expect `x` to have statically defined `ndims`.
		  expect_ndims:  Optional Python integer.  If provided, assert that x has
		    number of dimensions equal to this.
		  expect_ndims_no_more_than:  Optional Python integer.  If provided, assert
		    that x has no more than this many dimensions.
		  expect_ndims_at_least:  Optional Python integer.  If provided, assert that
		    x has at least this many dimensions.
		
		Returns:
		  ndims:  A Python integer.
		
		Raises:
		  ValueError:  If any of the expectations above are violated.
	**/
	static public function _get_static_ndims(x:Dynamic, ?expect_static:Dynamic, ?expect_ndims:Dynamic, ?expect_ndims_no_more_than:Dynamic, ?expect_ndims_at_least:Dynamic):Dynamic;
	/**
		Insert the dims in `axis` back as singletons after being removed.
		
		Args:
		  x:  `Tensor`.
		  axis:  Python list of integers.
		
		Returns:
		  `Tensor` with same values as `x`, but additional singleton dimensions.
	**/
	static public function _insert_back_keep_dims(x:Dynamic, axis:Dynamic):Dynamic;
	/**
		Convert possibly negatively indexed axis to non-negative.
		
		Args:
		  axis:  Iterable over Python integers.
		  ndims:  Number of dimensions into which axis indexes.
		
		Returns:
		  A list of non-negative Python integers.
		
		Raises:
		  ValueError: If values in `axis` are too big/small to index into `ndims`.
	**/
	static public function _make_static_axis_non_negative(axis:Dynamic, ndims:Dynamic):Dynamic;
	/**
		Move dims corresponding to `axis` in `x` to the end, then flatten.
		
		Args:
		  x: `Tensor` with shape `[B0,B1,...,Bb]`.
		  axis:  Python list of indices into dimensions of `x`.
		  x_ndims:  Python integer holding number of dimensions in `x`.
		
		Returns:
		  `Tensor` with value from `x` and dims in `axis` moved to end into one single
		    dimension.
	**/
	static public function _move_dims_to_flat_end(x:Dynamic, axis:Dynamic, x_ndims:Dynamic):Dynamic;
	/**
		Use `top_k` to sort a `Tensor` along the last dimension.
	**/
	static public function _sort_tensor(tensor:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Auto correlation along one axis.
		
		Given a `1-D` wide sense stationary (WSS) sequence `X`, the auto correlation
		`RXX` may be defined as  (with `E` expectation and `Conj` complex conjugate)
		
		```
		RXX[m] := E{ W[m] Conj(W[0]) } = E{ W[0] Conj(W[-m]) },
		W[n]   := (X[n] - MU) / S,
		MU     := E{ X[0] },
		S**2   := E{ (X[0] - MU) Conj(X[0] - MU) }.
		```
		
		This function takes the viewpoint that `x` is (along one axis) a finite
		sub-sequence of a realization of (WSS) `X`, and then uses `x` to produce an
		estimate of `RXX[m]` as follows:
		
		After extending `x` from length `L` to `inf` by zero padding, the auto
		correlation estimate `rxx[m]` is computed for `m = 0, 1, ..., max_lags` as
		
		```
		rxx[m] := (L - m)**-1 sum_n w[n + m] Conj(w[n]),
		w[n]   := (x[n] - mu) / s,
		mu     := L**-1 sum_n x[n],
		s**2   := L**-1 sum_n (x[n] - mu) Conj(x[n] - mu)
		```
		
		The error in this estimate is proportional to `1 / sqrt(len(x) - m)`, so users
		often set `max_lags` small enough so that the entire output is meaningful.
		
		Note that since `mu` is an imperfect estimate of `E{ X[0] }`, and we divide by
		`len(x) - m` rather than `len(x) - m - 1`, our estimate of auto correlation
		contains a slight bias, which goes to zero as `len(x) - m --> infinity`.
		
		Args:
		  x:  `float32` or `complex64` `Tensor`.
		  axis:  Python `int`. The axis number along which to compute correlation.
		    Other dimensions index different batch members.
		  max_lags:  Positive `int` tensor.  The maximum value of `m` to consider
		    (in equation above).  If `max_lags >= x.shape[axis]`, we effectively
		    re-set `max_lags` to `x.shape[axis] - 1`.
		  center:  Python `bool`.  If `False`, do not subtract the mean estimate `mu`
		    from `x[n]` when forming `w[n]`.
		  normalize:  Python `bool`.  If `False`, do not divide by the variance
		    estimate `s**2` when forming `w[n]`.
		  name:  `String` name to prepend to created ops.
		
		Returns:
		  `rxx`: `Tensor` of same `dtype` as `x`.  `rxx.shape[i] = x.shape[i]` for
		    `i != axis`, and `rxx.shape[axis] = max_lags + 1`.
		
		Raises:
		  TypeError:  If `x` is not a supported type.
	**/
	static public function auto_correlation(x:Dynamic, ?axis:Dynamic, ?max_lags:Dynamic, ?center:Dynamic, ?normalize:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compute the `q`-th percentile of `x`.
		
		Given a vector `x`, the `q`-th percentile of `x` is the value `q / 100` of the
		way from the minimum to the maximum in a sorted copy of `x`.
		
		The values and distances of the two nearest neighbors as well as the
		`interpolation` parameter will determine the percentile if the normalized
		ranking does not match the location of `q` exactly.
		
		This function is the same as the median if `q = 50`, the same as the minimum
		if `q = 0` and the same as the maximum if `q = 100`.
		
		
		```python
		# Get 30th percentile with default ('nearest') interpolation.
		x = [1., 2., 3., 4.]
		percentile(x, q=30.)
		==> 2.0
		
		# Get 30th percentile with 'lower' interpolation
		x = [1., 2., 3., 4.]
		percentile(x, q=30., interpolation='lower')
		==> 1.0
		
		# Get 100th percentile (maximum).  By default, this is computed over every dim
		x = [[1., 2.]
		     [3., 4.]]
		percentile(x, q=100.)
		==> 4.0
		
		# Treat the leading dim as indexing samples, and find the 100th quantile (max)
		# over all such samples.
		x = [[1., 2.]
		     [3., 4.]]
		percentile(x, q=100., axis=[0])
		==> [3., 4.]
		```
		
		Compare to `numpy.percentile`.
		
		Args:
		  x:  Floating point `N-D` `Tensor` with `N > 0`.  If `axis` is not `None`,
		    `x` must have statically known number of dimensions.
		  q:  Scalar `Tensor` in `[0, 100]`. The percentile.
		  axis:  Optional `0-D` or `1-D` integer `Tensor` with constant values.
		    The axis that hold independent samples over which to return the desired
		    percentile.  If `None` (the default), treat every dimension as a sample
		    dimension, returning a scalar.
		  interpolation : {"lower", "higher", "nearest"}.  Default: "nearest"
		    This optional parameter specifies the interpolation method to
		    use when the desired quantile lies between two data points `i < j`:
		      * lower: `i`.
		      * higher: `j`.
		      * nearest: `i` or `j`, whichever is nearest.
		  keep_dims:  Python `bool`. If `True`, the last dimension is kept with size 1
		    If `False`, the last dimension is removed from the output shape.
		  validate_args:  Whether to add runtime checks of argument validity.
		    If False, and arguments are incorrect, correct behavior is not guaranteed.
		  name:  A Python string name to give this `Op`.  Default is "percentile"
		
		Returns:
		  A `(N - len(axis))` dimensional `Tensor` of same dtype as `x`, or, if
		    `axis` is `None`, a scalar.
		
		Raises:
		  ValueError:  If argument 'interpolation' is not an allowed type.
	**/
	static public function percentile(x:Dynamic, q:Dynamic, ?axis:Dynamic, ?interpolation:Dynamic, ?keep_dims:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}