/* This file is generated, do not edit! */
package keras.backend.common;
@:pythonImport("keras.backend.common") extern class Common_Module {
	static public var _EPSILON : Dynamic;
	static public var _FLOATX : Dynamic;
	static public var _IMAGE_DATA_FORMAT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Cast a Numpy array to the default Keras float type.
		
		# Arguments
		    x: Numpy array.
		
		# Returns
		    The same Numpy array, cast to its new type.
		
		# Example
		```python
		    >>> from keras import backend as K
		    >>> K.floatx()
		    'float32'
		    >>> arr = numpy.array([1.0, 2.0], dtype='float64')
		    >>> arr.dtype
		    dtype('float64')
		    >>> new_arr = K.cast_to_floatx(arr)
		    >>> new_arr
		    array([ 1.,  2.], dtype=float32)
		    >>> new_arr.dtype
		    dtype('float32')
		```
	**/
	static public function cast_to_floatx(x:Dynamic):Dynamic;
	/**
		Returns the value of the fuzz
		factor used in numeric expressions.
		
		# Returns
		    A float.
		
		# Example
		```python
		    >>> keras.backend.epsilon()
		    1e-08
		```
	**/
	static public function epsilon():Dynamic;
	/**
		Returns the default float type, as a string.
		(e.g. 'float16', 'float32', 'float64').
		
		# Returns
		    String, the current default float type.
		
		# Example
		```python
		    >>> keras.backend.floatx()
		    'float32'
		```
	**/
	static public function floatx():Dynamic;
	/**
		Returns the default image data format convention ('channels_first' or 'channels_last').
		
		# Returns
		    A string, either `'channels_first'` or `'channels_last'`
		
		# Example
		```python
		    >>> keras.backend.image_data_format()
		    'channels_first'
		```
	**/
	static public function image_data_format():Dynamic;
	/**
		Legacy getter for `image_data_format`.
		
		# Returns
		    string, one of `'th'`, `'tf'`
	**/
	static public function image_dim_ordering():Dynamic;
	/**
		Sets the value of the fuzz
		factor used in numeric expressions.
		
		# Arguments
		    e: float. New value of epsilon.
		
		# Example
		```python
		    >>> from keras import backend as K
		    >>> K.epsilon()
		    1e-08
		    >>> K.set_epsilon(1e-05)
		    >>> K.epsilon()
		    1e-05
		```
	**/
	static public function set_epsilon(e:Dynamic):Dynamic;
	/**
		Sets the default float type.
		
		# Arguments
		    floatx: String, 'float16', 'float32', or 'float64'.
		
		# Example
		```python
		    >>> from keras import backend as K
		    >>> K.floatx()
		    'float32'
		    >>> K.set_floatx('float16')
		    >>> K.floatx()
		    'float16'
		```
	**/
	static public function set_floatx(floatx:Dynamic):Dynamic;
	/**
		Sets the value of the data format convention.
		
		# Arguments
		    data_format: string. `'channels_first'` or `'channels_last'`.
		
		# Example
		```python
		    >>> from keras import backend as K
		    >>> K.image_data_format()
		    'channels_first'
		    >>> K.set_image_data_format('channels_last')
		    >>> K.image_data_format()
		    'channels_last'
		```
	**/
	static public function set_image_data_format(data_format:Dynamic):Dynamic;
	/**
		Legacy setter for `image_data_format`.
		
		# Arguments
		    dim_ordering: string. `tf` or `th`.
		
		# Example
		```python
		    >>> from keras import backend as K
		    >>> K.image_data_format()
		    'channels_first'
		    >>> K.set_image_data_format('channels_last')
		    >>> K.image_data_format()
		    'channels_last'
		```
		
		# Raises
		    ValueError: if `dim_ordering` is invalid.
	**/
	static public function set_image_dim_ordering(dim_ordering:Dynamic):Dynamic;
}