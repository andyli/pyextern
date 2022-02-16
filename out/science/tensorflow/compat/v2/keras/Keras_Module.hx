/* This file is generated, do not edit! */
package tensorflow.compat.v2.keras;
@:pythonImport("tensorflow.compat.v2.keras") extern class Keras_Module {
	/**
		`Input()` is used to instantiate a Keras tensor.
		
		A Keras tensor is a symbolic tensor-like object,
		which we augment with certain attributes that allow us to build a Keras model
		just by knowing the inputs and outputs of the model.
		
		For instance, if `a`, `b` and `c` are Keras tensors,
		it becomes possible to do:
		`model = Model(input=[a, b], output=c)`
		
		Args:
		    shape: A shape tuple (integers), not including the batch size.
		        For instance, `shape=(32,)` indicates that the expected input
		        will be batches of 32-dimensional vectors. Elements of this tuple
		        can be None; 'None' elements represent dimensions where the shape is
		        not known.
		    batch_size: optional static batch size (integer).
		    name: An optional name string for the layer.
		        Should be unique in a model (do not reuse the same name twice).
		        It will be autogenerated if it isn't provided.
		    dtype: The data type expected by the input, as a string
		        (`float32`, `float64`, `int32`...)
		    sparse: A boolean specifying whether the placeholder to be created is
		        sparse. Only one of 'ragged' and 'sparse' can be True. Note that,
		        if `sparse` is False, sparse tensors can still be passed into the
		        input - they will be densified with a default value of 0.
		    tensor: Optional existing tensor to wrap into the `Input` layer.
		        If set, the layer will use the `tf.TypeSpec` of this tensor rather
		        than creating a new placeholder tensor.
		    ragged: A boolean specifying whether the placeholder to be created is
		        ragged. Only one of 'ragged' and 'sparse' can be True. In this case,
		        values of 'None' in the 'shape' argument represent ragged dimensions.
		        For more information about RaggedTensors, see
		        [this guide](https://www.tensorflow.org/guide/ragged_tensors).
		    type_spec: A `tf.TypeSpec` object to create the input placeholder from.
		        When provided, all other args except name must be None.
		    **kwargs: deprecated arguments support. Supports `batch_shape` and
		        `batch_input_shape`.
		
		Returns:
		  A `tensor`.
		
		Example:
		
		```python
		# this is a logistic regression in Keras
		x = Input(shape=(32,))
		y = Dense(16, activation='softmax')(x)
		model = Model(x, y)
		```
		
		Note that even if eager execution is enabled,
		`Input` produces a symbolic tensor-like object (i.e. a placeholder).
		This symbolic tensor-like object can be used with lower-level
		TensorFlow ops that take tensors as inputs, as such:
		
		```python
		x = Input(shape=(32,))
		y = tf.square(x)  # This op will be treated like a layer
		model = Model(x, y)
		```
		
		(This behavior does not work for higher-order TensorFlow APIs such as
		control flow and being directly watched by a `tf.GradientTape`).
		
		However, the resulting model will not track any variables that were
		used as inputs to TensorFlow ops. All variable usages must happen within
		Keras layers to make sure they will be tracked by the model's weights.
		
		The Keras Input can also create a placeholder from an arbitrary `tf.TypeSpec`,
		e.g:
		
		```python
		x = Input(type_spec=tf.RaggedTensorSpec(shape=[None, None],
		                                        dtype=tf.float32, ragged_rank=1))
		y = x.values
		model = Model(x, y)
		```
		When passing an arbitrary `tf.TypeSpec`, it must represent the signature of an
		entire batch instead of just one example.
		
		Raises:
		  ValueError: If both `sparse` and `ragged` are provided.
		  ValueError: If both `shape` and (`batch_input_shape` or `batch_shape`) are
		    provided.
		  ValueError: If `shape`, `tensor` and `type_spec` are None.
		  ValueError: If arguments besides `type_spec` are non-None while `type_spec`
		              is passed.
		  ValueError: if any unrecognized parameters are provided.
	**/
	static public function Input(?shape:Dynamic, ?batch_size:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?sparse:Dynamic, ?tensor:Dynamic, ?ragged:Dynamic, ?type_spec:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
}