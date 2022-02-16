/* This file is generated, do not edit! */
package tensorflow.compat.v1.nn.experimental;
@:pythonImport("tensorflow.compat.v1.nn.experimental") extern class Experimental_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes dropout: randomly sets elements to zero to prevent overfitting.
		
		[Dropout](https://arxiv.org/abs/1207.0580) is useful for regularizing DNN
		models. Inputs elements are randomly set to zero (and the other elements are
		rescaled). This encourages each node to be independently useful, as it cannot
		rely on the output of other nodes.
		
		More precisely: With probability `rate` elements of `x` are set to `0`.
		The remaining elements are scaled up by `1.0 / (1 - rate)`, so that the
		expected value is preserved.
		
		>>> x = tf.ones([3,5])
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.5, seed=[1, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[2., 0., 2., 0., 0.],
		       [0., 0., 2., 0., 2.],
		       [0., 0., 0., 0., 2.]], dtype=float32)>
		
		>>> x = tf.ones([3,5])
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[1, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 0., 5.],
		       [0., 0., 0., 0., 5.]], dtype=float32)>
		
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.0, seed=[1, 0]) == x
		<tf.Tensor: shape=(3, 5), dtype=bool, numpy=
		array([[ True,  True,  True,  True,  True],
		       [ True,  True,  True,  True,  True],
		       [ True,  True,  True,  True,  True]])>
		
		
		This function is a stateless version of `tf.nn.dropout`, in the
		sense that no matter how many times you call this function, the same
		`seed` will lead to the same results, and different `seed` will lead
		to different results.
		
		>>> x = tf.ones([3,5])
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[1, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 0., 5.],
		       [0., 0., 0., 0., 5.]], dtype=float32)>
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[1, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 0., 5.],
		       [0., 0., 0., 0., 5.]], dtype=float32)>
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[2, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 5., 0.],
		       [0., 0., 0., 0., 0.]], dtype=float32)>
		>>> tf.nn.experimental.stateless_dropout(x, rate=0.8, seed=[2, 0])
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[5., 0., 0., 0., 0.],
		       [0., 0., 0., 5., 0.],
		       [0., 0., 0., 0., 0.]], dtype=float32)>
		
		Compare the above results to those of `tf.nn.dropout` below. The
		second time `tf.nn.dropout` is called with the same seed, it will
		give a different output.
		
		>>> tf.random.set_seed(0)
		>>> x = tf.ones([3,5])
		>>> tf.nn.dropout(x, rate=0.8, seed=1)
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[0., 0., 0., 5., 5.],
		       [0., 5., 0., 5., 0.],
		       [5., 0., 5., 0., 5.]], dtype=float32)>
		>>> tf.nn.dropout(x, rate=0.8, seed=1)
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[0., 0., 0., 0., 0.],
		       [0., 0., 0., 5., 0.],
		       [0., 0., 0., 0., 0.]], dtype=float32)>
		>>> tf.nn.dropout(x, rate=0.8, seed=2)
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[0., 0., 0., 0., 0.],
		       [0., 5., 0., 5., 0.],
		       [0., 0., 0., 0., 0.]], dtype=float32)>
		>>> tf.nn.dropout(x, rate=0.8, seed=2)
		<tf.Tensor: shape=(3, 5), dtype=float32, numpy=
		array([[0., 0., 0., 0., 0.],
		       [5., 0., 5., 0., 5.],
		       [0., 5., 0., 0., 5.]], dtype=float32)>
		
		The difference between this function and `tf.nn.dropout` is
		analogous to the difference between `tf.random.stateless_uniform`
		and `tf.random.uniform`. Please see [Random number
		generation](https://www.tensorflow.org/guide/random_numbers) guide
		for a detailed description of the various RNG systems in TF. As the
		guide states, legacy stateful RNG ops like `tf.random.uniform` and
		`tf.nn.dropout` are not deprecated yet but highly discouraged,
		because their states are hard to control.
		
		By default, each element is kept or dropped independently.  If `noise_shape`
		is specified, it must be
		[broadcastable](http://docs.scipy.org/doc/numpy/user/basics.broadcasting.html)
		to the shape of `x`, and only dimensions with `noise_shape[i] == shape(x)[i]`
		will make independent decisions. This is useful for dropping whole
		channels from an image or sequence. For example:
		
		>>> x = tf.ones([3,10])
		>>> tf.nn.experimental.stateless_dropout(x, rate=2/3, noise_shape=[1,10],
		...                                      seed=[1, 0])
		<tf.Tensor: shape=(3, 10), dtype=float32, numpy=
		array([[3., 0., 0., 0., 0., 0., 0., 3., 0., 3.],
		       [3., 0., 0., 0., 0., 0., 0., 3., 0., 3.],
		       [3., 0., 0., 0., 0., 0., 0., 3., 0., 3.]], dtype=float32)>
		
		Args:
		  x: A floating point tensor.
		  rate: A scalar `Tensor` with the same type as x. The probability
		    that each element is dropped. For example, setting rate=0.1 would drop
		    10% of input elements.
		  seed: An integer tensor of shape `[2]`. The seed of the random numbers.
		  rng_alg: The algorithm used to generate the random numbers
		    (default to `"auto_select"`). See the `alg` argument of
		    `tf.random.stateless_uniform` for the supported values.
		  noise_shape: A 1-D integer `Tensor`, representing the
		    shape for randomly generated keep/drop flags.
		  name: A name for this operation.
		
		Returns:
		  A Tensor of the same shape and dtype of `x`.
		
		Raises:
		  ValueError: If `rate` is not in `[0, 1)` or if `x` is not a floating point
		    tensor. `rate=1` is disallowed, because the output would be all zeros,
		    which is likely not what was intended.
	**/
	static public function stateless_dropout(x:Dynamic, rate:Dynamic, seed:Dynamic, ?rng_alg:Dynamic, ?noise_shape:Dynamic, ?name:Dynamic):Dynamic;
}