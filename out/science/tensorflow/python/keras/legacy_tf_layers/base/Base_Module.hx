/* This file is generated, do not edit! */
package tensorflow.python.keras.legacy_tf_layers.base;
@:pythonImport("tensorflow.python.keras.legacy_tf_layers.base") extern class Base_Module {
	static public var _KERAS_STYLE_SCOPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_elements_to_collection(elements:Dynamic, collection_list:Dynamic):Dynamic;
	static public function _is_in_keras_style_scope():Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Use Keras-style variable management.
		
		All tf.layers and tf RNN cells created in this scope use Keras-style
		variable management.  Creating such layers with a scope= argument is
		disallowed, and reuse=True is disallowed.
		
		The purpose of this scope is to allow users of existing layers to
		slowly transition to a Keras layers API without breaking existing
		functionality.
		
		One example of this is when using TensorFlow's RNN classes with Keras
		Models or Networks.  Because Keras models do not properly set variable
		scopes, users of RNNs may either accidentally share scopes between two
		different models, or get errors about variables that already exist.
		
		Example:
		
		```python
		class RNNModel(tf.keras.Model):
		
		  def __init__(self, name):
		    super(RNNModel, self).__init__(name=name)
		    self.rnn = tf.compat.v1.nn.rnn_cell.MultiRNNCell(
		      [tf.compat.v1.nn.rnn_cell.LSTMCell(64) for _ in range(2)])
		
		  def call(self, input, state):
		    return self.rnn(input, state)
		
		model_1 = RNNModel("model_1")
		model_2 = RNNModel("model_2")
		
		# OK
		output_1, next_state_1 = model_1(input, state)
		# Raises an error about trying to create an already existing variable.
		output_2, next_state_2 = model_2(input, state)
		```
		
		The solution is to wrap the model construction and execution in a keras-style
		scope:
		
		```python
		with keras_style_scope():
		  model_1 = RNNModel("model_1")
		  model_2 = RNNModel("model_2")
		
		  # model_1 and model_2 are guaranteed to create their own variables.
		  output_1, next_state_1 = model_1(input, state)
		  output_2, next_state_2 = model_2(input, state)
		
		  assert len(model_1.weights) > 0
		  assert len(model_2.weights) > 0
		  assert(model_1.weights != model_2.weights)
		```
		
		Yields:
		  A keras layer style scope.
	**/
	static public function keras_style_scope():Dynamic;
	static public var print_function : Dynamic;
	/**
		Use Keras-style variable management.
		
		All tf.layers and tf RNN cells created after keras style ha been enabled
		use Keras-style variable management.  Creating such layers with a
		scope= argument is disallowed, and reuse=True is disallowed.
		
		The purpose of this function is to allow users of existing layers to
		slowly transition to Keras layers API without breaking existing
		functionality.
		
		For more details, see the documentation for `keras_style_scope`.
		
		Note, once keras style has been set, it is set globally for the entire
		program and cannot be unset.
		
		Example:
		
		```python
		set_keras_style()
		
		model_1 = RNNModel(name="model_1")
		model_2 = RNNModel(name="model_2")
		
		# model_1 and model_2 are guaranteed to create their own variables.
		output_1, next_state_1 = model_1(input, state)
		output_2, next_state_2 = model_2(input, state)
		
		assert len(model_1.weights) > 0
		assert len(model_2.weights) > 0
		assert(model_1.weights != model_2.weights)
		```
	**/
	static public function set_keras_style():Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}