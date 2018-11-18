/* This file is generated, do not edit! */
package keras.layers.convolutional;
@:pythonImport("keras.layers.convolutional") extern class Convolutional_Module {
	static public function AtrousConv1D(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function AtrousConv2D(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function AtrousConvolution1D(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function AtrousConvolution2D(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Converts a tuple or a list to the correct `data_format`.
		
		It does so by switching the positions of its elements.
		
		# Arguments
		    shape: Tuple or list, often representing shape,
		        corresponding to `'channels_last'`.
		    target_format: A string, either `'channels_first'` or `'channels_last'`.
		    spatial_axes: A tuple of integers.
		        Correspond to the indexes of the spatial axes.
		        For example, if you pass a shape
		        representing (batch_size, timesteps, rows, cols, channels),
		        then `spatial_axes=(2, 3)`.
		
		# Returns
		    A tuple or list, with the elements permuted according
		    to `target_format`.
		
		# Example
		```python
		    >>> from keras.utils.generic_utils import transpose_shape
		    >>> transpose_shape((16, 128, 128, 32),'channels_first', spatial_axes=(1, 2))
		    (16, 32, 128, 128)
		    >>> transpose_shape((16, 128, 128, 32), 'channels_last', spatial_axes=(1, 2))
		    (16, 128, 128, 32)
		    >>> transpose_shape((128, 128, 32), 'channels_first', spatial_axes=(0, 1))
		    (32, 128, 128)
		```
		
		# Raises
		    ValueError: if `value` or the global `data_format` invalid.
	**/
	static public function transpose_shape(shape:Dynamic, target_format:Dynamic, spatial_axes:Dynamic):Dynamic;
}