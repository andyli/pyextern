/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.vis_utils;
@:pythonImport("tensorflow.python.keras.utils.vis_utils") extern class Vis_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function add_edge(dot:Dynamic, src:Dynamic, dst:Dynamic):Dynamic;
	/**
		Returns True if PyDot and Graphviz are available.
	**/
	static public function check_pydot():Dynamic;
	static public function is_wrapped_model(layer:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert a Keras model to dot format.
		
		Args:
		  model: A Keras model instance.
		  show_shapes: whether to display shape information.
		  show_dtype: whether to display layer dtypes.
		  show_layer_names: whether to display layer names.
		  rankdir: `rankdir` argument passed to PyDot,
		      a string specifying the format of the plot:
		      'TB' creates a vertical plot;
		      'LR' creates a horizontal plot.
		  expand_nested: whether to expand nested models into clusters.
		  dpi: Dots per inch.
		  subgraph: whether to return a `pydot.Cluster` instance.
		
		Returns:
		  A `pydot.Dot` instance representing the Keras model or
		  a `pydot.Cluster` instance representing nested model if
		  `subgraph=True`.
		
		Raises:
		  ImportError: if graphviz or pydot are not available.
	**/
	static public function model_to_dot(model:Dynamic, ?show_shapes:Dynamic, ?show_dtype:Dynamic, ?show_layer_names:Dynamic, ?rankdir:Dynamic, ?expand_nested:Dynamic, ?dpi:Dynamic, ?subgraph:Dynamic):Dynamic;
	/**
		Convert `PathLike` objects to their string representation.
		
		If given a non-string typed path object, converts it to its string
		representation.
		
		If the object passed to `path` is not among the above, then it is
		returned unchanged. This allows e.g. passthrough of file objects
		through this function.
		
		Args:
		  path: `PathLike` object that represents a path
		
		Returns:
		  A string representation of the path argument, if Python support exists.
	**/
	static public function path_to_string(path:Dynamic):Dynamic;
	/**
		Converts a Keras model to dot format and save to a file.
		
		Example:
		
		```python
		input = tf.keras.Input(shape=(100,), dtype='int32', name='input')
		x = tf.keras.layers.Embedding(
		    output_dim=512, input_dim=10000, input_length=100)(input)
		x = tf.keras.layers.LSTM(32)(x)
		x = tf.keras.layers.Dense(64, activation='relu')(x)
		x = tf.keras.layers.Dense(64, activation='relu')(x)
		x = tf.keras.layers.Dense(64, activation='relu')(x)
		output = tf.keras.layers.Dense(1, activation='sigmoid', name='output')(x)
		model = tf.keras.Model(inputs=[input], outputs=[output])
		dot_img_file = '/tmp/model_1.png'
		tf.keras.utils.plot_model(model, to_file=dot_img_file, show_shapes=True)
		```
		
		Args:
		  model: A Keras model instance
		  to_file: File name of the plot image.
		  show_shapes: whether to display shape information.
		  show_dtype: whether to display layer dtypes.
		  show_layer_names: whether to display layer names.
		  rankdir: `rankdir` argument passed to PyDot,
		      a string specifying the format of the plot:
		      'TB' creates a vertical plot;
		      'LR' creates a horizontal plot.
		  expand_nested: Whether to expand nested models into clusters.
		  dpi: Dots per inch.
		
		Returns:
		  A Jupyter notebook Image object if Jupyter is installed.
		  This enables in-line display of the model plots in notebooks.
	**/
	static public function plot_model(model:Dynamic, ?to_file:Dynamic, ?show_shapes:Dynamic, ?show_dtype:Dynamic, ?show_layer_names:Dynamic, ?rankdir:Dynamic, ?expand_nested:Dynamic, ?dpi:Dynamic):Dynamic;
	static public var pydot : Dynamic;
}