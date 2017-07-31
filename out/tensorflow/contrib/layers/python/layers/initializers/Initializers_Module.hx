/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.initializers;
@:pythonImport("tensorflow.contrib.layers.python.layers.initializers") extern class Initializers_Module {
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
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns an initializer that generates tensors without scaling variance.
		
		When initializing a deep network, it is in principle advantageous to keep
		the scale of the input variance constant, so it does not explode or diminish
		by reaching the final layer. This initializer use the following formula:
		
		```python
		  if mode='FAN_IN': # Count only number of input connections.
		    n = fan_in
		  elif mode='FAN_OUT': # Count only number of output connections.
		    n = fan_out
		  elif mode='FAN_AVG': # Average number of inputs and output connections.
		    n = (fan_in + fan_out)/2.0
		
		    truncated_normal(shape, 0.0, stddev=sqrt(factor / n))
		```
		
		* To get [Delving Deep into Rectifiers](
		   http://arxiv.org/pdf/1502.01852v1.pdf), use (Default):<br/>
		  `factor=2.0 mode='FAN_IN' uniform=False`
		* To get [Convolutional Architecture for Fast Feature Embedding](
		   http://arxiv.org/abs/1408.5093), use:<br/>
		  `factor=1.0 mode='FAN_IN' uniform=True`
		* To get [Understanding the difficulty of training deep feedforward neural
		  networks](http://jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf),
		  use:<br/>
		  `factor=1.0 mode='FAN_AVG' uniform=True.`
		* To get `xavier_initializer` use either:<br/>
		  `factor=1.0 mode='FAN_AVG' uniform=True`, or<br/>
		  `factor=1.0 mode='FAN_AVG' uniform=False`.
		
		Args:
		  factor: Float.  A multiplicative factor.
		  mode: String.  'FAN_IN', 'FAN_OUT', 'FAN_AVG'.
		  uniform: Whether to use uniform or normal distributed random initialization.
		  seed: A Python integer. Used to create random seeds. See
		        @{tf.set_random_seed} for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with unit variance.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
		  TypeError: if `mode` is not in ['FAN_IN', 'FAN_OUT', 'FAN_AVG'].
	**/
	static public function variance_scaling_initializer(?factor:Dynamic, ?mode:Dynamic, ?uniform:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns an initializer performing "Xavier" initialization for weights.
		
		This function implements the weight initialization from:
		
		Xavier Glorot and Yoshua Bengio (2010):
		         [Understanding the difficulty of training deep feedforward neural
		         networks. International conference on artificial intelligence and
		         statistics.](
		         http://www.jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf)
		
		This initializer is designed to keep the scale of the gradients roughly the
		same in all layers. In uniform distribution this ends up being the range:
		`x = sqrt(6. / (in + out)); [-x, x]` and for normal distribution a standard
		deviation of `sqrt(3. / (in + out))` is used.
		
		Args:
		  uniform: Whether to use uniform or normal distributed random initialization.
		  seed: A Python integer. Used to create random seeds. See
		        @{tf.set_random_seed} for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer for a weight matrix.
	**/
	static public function xavier_initializer(?uniform:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns an initializer performing "Xavier" initialization for weights.
		
		This function implements the weight initialization from:
		
		Xavier Glorot and Yoshua Bengio (2010):
		         [Understanding the difficulty of training deep feedforward neural
		         networks. International conference on artificial intelligence and
		         statistics.](
		         http://www.jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf)
		
		This initializer is designed to keep the scale of the gradients roughly the
		same in all layers. In uniform distribution this ends up being the range:
		`x = sqrt(6. / (in + out)); [-x, x]` and for normal distribution a standard
		deviation of `sqrt(3. / (in + out))` is used.
		
		Args:
		  uniform: Whether to use uniform or normal distributed random initialization.
		  seed: A Python integer. Used to create random seeds. See
		        @{tf.set_random_seed} for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer for a weight matrix.
	**/
	static public function xavier_initializer_conv2d(?uniform:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
}