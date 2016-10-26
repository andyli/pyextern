/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.operator_pd_cholesky;
@:pythonImport("tensorflow.contrib.distributions.python.ops.operator_pd_cholesky") extern class Operator_pd_cholesky_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Transform diagonal of [batch-]matrix, leave rest of matrix unchanged.
		
		Create a trainable covariance defined by a Cholesky factor:
		
		```python
		# Transform network layer into 2 x 2 array.
		matrix_values = tf.contrib.layers.fully_connected(activations, 4)
		matrix = tf.reshape(matrix_values, (batch_size, 2, 2))
		
		# Make the diagonal positive.  If the upper triangle was zero, this would be a
		# valid Cholesky factor.
		chol = batch_matrix_diag_transform(matrix, transform=tf.nn.softplus)
		
		# OperatorPDCholesky ignores the upper triangle.
		operator = OperatorPDCholesky(chol)
		```
		
		Example of heteroskedastic 2-D linear regression.
		
		```python
		# Get a trainable Cholesky factor.
		matrix_values = tf.contrib.layers.fully_connected(activations, 4)
		matrix = tf.reshape(matrix_values, (batch_size, 2, 2))
		chol = batch_matrix_diag_transform(matrix, transform=tf.nn.softplus)
		
		# Get a trainable mean.
		mu = tf.contrib.layers.fully_connected(activations, 2)
		
		# This is a fully trainable multivariate normal!
		dist = tf.contrib.distributions.MVNCholesky(mu, chol)
		
		# Standard log loss.  Minimizing this will "train" mu and chol, and then dist
		# will be a distribution predicting labels as multivariate Gaussians.
		loss = -1 * tf.reduce_mean(dist.log_pdf(labels))
		```
		
		Args:
		  matrix:  Rank `R` `Tensor`, `R >= 2`, where the last two dimensions are
		    equal.
		  transform:  Element-wise function mapping `Tensors` to `Tensors`.  To
		    be applied to the diagonal of `matrix`.  If `None`, `matrix` is returned
		    unchanged.  Defaults to `None`.
		  name:  A name to give created ops.
		    Defaults to "batch_matrix_diag_transform".
		
		Returns:
		  A `Tensor` with same shape and `dtype` as `matrix`.
	**/
	static public function batch_matrix_diag_transform(matrix:Dynamic, ?transform:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}