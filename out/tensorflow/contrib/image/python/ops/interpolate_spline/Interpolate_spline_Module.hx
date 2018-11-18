/* This file is generated, do not edit! */
package tensorflow.contrib.image.python.ops.interpolate_spline;
@:pythonImport("tensorflow.contrib.image.python.ops.interpolate_spline") extern class Interpolate_spline_Module {
	static public var EPSILON : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Apply polyharmonic interpolation model to data.
		
		Given coefficients w and v for the interpolation model, we evaluate
		interpolated function values at query_points.
		
		Args:
		  query_points: `[b, m, d]` x values to evaluate the interpolation at
		  train_points: `[b, n, d]` x values that act as the interpolation centers
		                  ( the c variables in the wikipedia article)
		  w: `[b, n, k]` weights on each interpolation center
		  v: `[b, d, k]` weights on each input dimension
		  order: order of the interpolation
		
		Returns:
		  Polyharmonic interpolation evaluated at points defined in query_points.
	**/
	static public function _apply_interpolation(query_points:Dynamic, train_points:Dynamic, w:Dynamic, v:Dynamic, order:Dynamic):Dynamic;
	/**
		Pairwise squared distance between two (batch) matrices' rows (2nd dim).
		
		Computes the pairwise distances between rows of x and rows of y
		Args:
		  x: [batch_size, n, d] float `Tensor`
		  y: [batch_size, m, d] float `Tensor`
		
		Returns:
		  squared_dists: [batch_size, n, m] float `Tensor`, where
		  squared_dists[b,i,j] = ||x[b,i,:] - y[b,j,:]||^2
	**/
	static public function _cross_squared_distance_matrix(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Pairwise squared distance among a (batch) matrix's rows (2nd dim).
		
		This saves a bit of computation vs. using _cross_squared_distance_matrix(x,x)
		
		Args:
		  x: `[batch_size, n, d]` float `Tensor`
		
		Returns:
		  squared_dists: `[batch_size, n, n]` float `Tensor`, where
		  squared_dists[b,i,j] = ||x[b,i,:] - x[b,j,:]||^2
	**/
	static public function _pairwise_squared_distance_matrix(x:Dynamic):Dynamic;
	/**
		Coordinate-wise nonlinearity used to define the order of the interpolation.
		
		See https://en.wikipedia.org/wiki/Polyharmonic_spline for the definition.
		
		Args:
		  r: input op
		  order: interpolation order
		
		Returns:
		  phi_k evaluated coordinate-wise on r, for k = r
	**/
	static public function _phi(r:Dynamic, order:Dynamic):Dynamic;
	/**
		Solve for interpolation coefficients.
		
		Computes the coefficients of the polyharmonic interpolant for the 'training'
		data defined by (train_points, train_values) using the kernel phi.
		
		Args:
		  train_points: `[b, n, d]` interpolation centers
		  train_values: `[b, n, k]` function values
		  order: order of the interpolation
		  regularization_weight: weight to place on smoothness regularization term
		
		Returns:
		  w: `[b, n, k]` weights on each interpolation center
		  v: `[b, d, k]` weights on each input dimension
		Raises:
		  ValueError: if d or k is not fully specified.
	**/
	static public function _solve_interpolation(train_points:Dynamic, train_values:Dynamic, order:Dynamic, regularization_weight:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Interpolate signal using polyharmonic interpolation.
		
		The interpolant has the form
		$$f(x) = \sum_{i = 1}^n w_i \phi(||x - c_i||) + v^T x + b.$$
		
		This is a sum of two terms: (1) a weighted sum of radial basis function (RBF)
		terms, with the centers \\(c_1, ... c_n\\), and (2) a linear term with a bias.
		The \\(c_i\\) vectors are 'training' points. In the code, b is absorbed into v
		by appending 1 as a final dimension to x. The coefficients w and v are
		estimated such that the interpolant exactly fits the value of the function at
		the \\(c_i\\) points, the vector w is orthogonal to each \\(c_i\\), and the
		vector w sums to 0. With these constraints, the coefficients can be obtained
		by solving a linear system.
		
		\\(\phi\\) is an RBF, parametrized by an interpolation
		order. Using order=2 produces the well-known thin-plate spline.
		
		We also provide the option to perform regularized interpolation. Here, the
		interpolant is selected to trade off between the squared loss on the training
		data and a certain measure of its curvature
		([details](https://en.wikipedia.org/wiki/Polyharmonic_spline)).
		Using a regularization weight greater than zero has the effect that the
		interpolant will no longer exactly fit the training data. However, it may be
		less vulnerable to overfitting, particularly for high-order interpolation.
		
		Note the interpolation procedure is differentiable with respect to all inputs
		besides the order parameter.
		
		We support dynamically-shaped inputs, where batch_size, n, and m are None
		at graph construction time. However, d and k must be known.
		
		Args:
		  train_points: `[batch_size, n, d]` float `Tensor` of n d-dimensional
		    locations. These do not need to be regularly-spaced.
		  train_values: `[batch_size, n, k]` float `Tensor` of n c-dimensional values
		    evaluated at train_points.
		  query_points: `[batch_size, m, d]` `Tensor` of m d-dimensional locations
		    where we will output the interpolant's values.
		  order: order of the interpolation. Common values are 1 for
		    \\(\phi(r) = r\\), 2 for \\(\phi(r) = r^2 * log(r)\\) (thin-plate spline),
		     or 3 for \\(\phi(r) = r^3\\).
		  regularization_weight: weight placed on the regularization term.
		    This will depend substantially on the problem, and it should always be
		    tuned. For many problems, it is reasonable to use no regularization.
		    If using a non-zero value, we recommend a small value like 0.001.
		  name: name prefix for ops created by this function
		
		Returns:
		  `[b, m, k]` float `Tensor` of query values. We use train_points and
		  train_values to perform polyharmonic interpolation. The query values are
		  the values of the interpolant evaluated at the locations specified in
		  query_points.
	**/
	static public function interpolate_spline(train_points:Dynamic, train_values:Dynamic, query_points:Dynamic, order:Dynamic, ?regularization_weight:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}