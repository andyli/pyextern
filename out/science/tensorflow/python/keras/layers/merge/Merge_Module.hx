/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.merge;
@:pythonImport("tensorflow.python.keras.layers.merge") extern class Merge_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Functional interface to the `tf.keras.layers.Add` layer.
		
		Args:
		    inputs: A list of input tensors (at least 2) with the same shape.
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor as the sum of the inputs. It has the same shape as the inputs.
		
		Examples:
		
		>>> input_shape = (2, 3, 4)
		>>> x1 = tf.random.normal(input_shape)
		>>> x2 = tf.random.normal(input_shape)
		>>> y = tf.keras.layers.add([x1, x2])
		>>> print(y.shape)
		(2, 3, 4)
		
		Used in a functional model:
		
		>>> input1 = tf.keras.layers.Input(shape=(16,))
		>>> x1 = tf.keras.layers.Dense(8, activation='relu')(input1)
		>>> input2 = tf.keras.layers.Input(shape=(32,))
		>>> x2 = tf.keras.layers.Dense(8, activation='relu')(input2)
		>>> added = tf.keras.layers.add([x1, x2])
		>>> out = tf.keras.layers.Dense(4)(added)
		>>> model = tf.keras.models.Model(inputs=[input1, input2], outputs=out)
	**/
	static public function add(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `tf.keras.layers.Average` layer.
		
		Example:
		
		>>> x1 = np.ones((2, 2))
		>>> x2 = np.zeros((2, 2))
		>>> y = tf.keras.layers.Average()([x1, x2])
		>>> y.numpy().tolist()
		[[0.5, 0.5], [0.5, 0.5]]
		
		Usage in a functional model:
		
		>>> input1 = tf.keras.layers.Input(shape=(16,))
		>>> x1 = tf.keras.layers.Dense(8, activation='relu')(input1)
		>>> input2 = tf.keras.layers.Input(shape=(32,))
		>>> x2 = tf.keras.layers.Dense(8, activation='relu')(input2)
		>>> avg = tf.keras.layers.Average()([x1, x2])
		>>> out = tf.keras.layers.Dense(4)(avg)
		>>> model = tf.keras.models.Model(inputs=[input1, input2], outputs=out)
		
		Args:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the average of the inputs.
		
		Raises:
		  ValueError: If there is a shape mismatch between the inputs and the shapes
		    cannot be broadcasted to match.
	**/
	static public function average(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Concatenate` layer.
		
		>>> x = np.arange(20).reshape(2, 2, 5)
		>>> print(x)
		[[[ 0  1  2  3  4]
		  [ 5  6  7  8  9]]
		 [[10 11 12 13 14]
		  [15 16 17 18 19]]]
		>>> y = np.arange(20, 30).reshape(2, 1, 5)
		>>> print(y)
		[[[20 21 22 23 24]]
		 [[25 26 27 28 29]]]
		>>> tf.keras.layers.concatenate([x, y],
		...                             axis=1)
		<tf.Tensor: shape=(2, 3, 5), dtype=int64, numpy=
		array([[[ 0,  1,  2,  3,  4],
		      [ 5,  6,  7,  8,  9],
		      [20, 21, 22, 23, 24]],
		     [[10, 11, 12, 13, 14],
		      [15, 16, 17, 18, 19],
		      [25, 26, 27, 28, 29]]])>
		
		Args:
		    inputs: A list of input tensors (at least 2).
		    axis: Concatenation axis.
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the concatenation of the inputs alongside axis `axis`.
	**/
	static public function concatenate(inputs:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Dot` layer.
		
		Args:
		    inputs: A list of input tensors (at least 2).
		    axes: Integer or tuple of integers,
		        axis or axes along which to take the dot product.
		    normalize: Whether to L2-normalize samples along the
		        dot product axis before taking the dot product.
		        If set to True, then the output of the dot product
		        is the cosine proximity between the two samples.
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the dot product of the samples from the inputs.
	**/
	static public function dot(inputs:Dynamic, axes:Dynamic, ?normalize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to compute maximum (element-wise) list of `inputs`.
		
		This is equivalent to the `tf.keras.layers.Maximum` layer.
		
		For example:
		
		```python
		input1 = tf.keras.layers.Input(shape=(16,))
		x1 = tf.keras.layers.Dense(8, activation='relu')(input1) #shape=(None, 8)
		input2 = tf.keras.layers.Input(shape=(32,))
		x2 = tf.keras.layers.Dense(8, activation='relu')(input2) #shape=(None, 8)
		max_inp=tf.keras.layers.maximum([x1,x2]) #shape=(None, 8)
		out = tf.keras.layers.Dense(4)(max_inp)
		model = tf.keras.models.Model(inputs=[input1, input2], outputs=out)
		```
		
		Args:
		    inputs: A list of input tensors (at least 2) of same shape.
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor (of same shape as input tensor) with the element-wise
		    maximum of the inputs.
		
		Raises:
		    ValueError: If input tensors are of different shape.
	**/
	static public function maximum(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Minimum` layer.
		
		Args:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the element-wise minimum of the inputs.
	**/
	static public function minimum(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Multiply` layer.
		
		Example:
		
		>>> x1 = np.arange(3.0)
		>>> x2 = np.arange(3.0)
		>>> tf.keras.layers.multiply([x1, x2])
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([0., 1., 4.], ...)>
		
		Usage in a functional model:
		
		>>> input1 = tf.keras.layers.Input(shape=(16,))
		>>> x1 = tf.keras.layers.Dense(8, activation='relu')(input1) #shape=(None, 8)
		>>> input2 = tf.keras.layers.Input(shape=(32,))
		>>> x2 = tf.keras.layers.Dense(8, activation='relu')(input2) #shape=(None, 8)
		>>> out = tf.keras.layers.multiply([x1,x2]) #shape=(None, 8)
		>>> out = tf.keras.layers.Dense(4)(out)
		>>> model = tf.keras.models.Model(inputs=[input1, input2], outputs=out)
		
		Args:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the element-wise product of the inputs.
	**/
	static public function multiply(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Subtract` layer.
		
		Args:
		    inputs: A list of input tensors (exactly 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the difference of the inputs.
		
		Examples:
		
		```python
		    import keras
		
		    input1 = keras.layers.Input(shape=(16,))
		    x1 = keras.layers.Dense(8, activation='relu')(input1)
		    input2 = keras.layers.Input(shape=(32,))
		    x2 = keras.layers.Dense(8, activation='relu')(input2)
		    subtracted = keras.layers.subtract([x1, x2])
		
		    out = keras.layers.Dense(4)(subtracted)
		    model = keras.models.Model(inputs=[input1, input2], outputs=out)
		```
	**/
	static public function subtract(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}