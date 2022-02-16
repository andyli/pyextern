/* This file is generated, do not edit! */
package tensorflow.python.keras.wrappers.scikit_learn;
@:pythonImport("tensorflow.python.keras.wrappers.scikit_learn") extern class Scikit_learn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks if a callable accepts a given keyword argument.
		
		Args:
		    fn: Callable to inspect.
		    name: Check if `fn` can be called with `name` as a keyword argument.
		    accept_all: What to return if there is no parameter called `name` but the
		      function accepts a `**kwargs` argument.
		
		Returns:
		    bool, whether `fn` accepts a `name` keyword argument.
	**/
	static public function has_arg(fn:Dynamic, name:Dynamic, ?accept_all:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Converts a class vector (integers) to binary class matrix.
		
		E.g. for use with categorical_crossentropy.
		
		Args:
		    y: class vector to be converted into a matrix
		        (integers from 0 to num_classes).
		    num_classes: total number of classes. If `None`, this would be inferred
		      as the (largest number in `y`) + 1.
		    dtype: The data type expected by the input. Default: `'float32'`.
		
		Returns:
		    A binary matrix representation of the input. The classes axis is placed
		    last.
		
		Example:
		
		>>> a = tf.keras.utils.to_categorical([0, 1, 2, 3], num_classes=4)
		>>> a = tf.constant(a, shape=[4, 4])
		>>> print(a)
		tf.Tensor(
		  [[1. 0. 0. 0.]
		   [0. 1. 0. 0.]
		   [0. 0. 1. 0.]
		   [0. 0. 0. 1.]], shape=(4, 4), dtype=float32)
		
		>>> b = tf.constant([.9, .04, .03, .03,
		...                  .3, .45, .15, .13,
		...                  .04, .01, .94, .05,
		...                  .12, .21, .5, .17],
		...                 shape=[4, 4])
		>>> loss = tf.keras.backend.categorical_crossentropy(a, b)
		>>> print(np.around(loss, 5))
		[0.10536 0.82807 0.1011  1.77196]
		
		>>> loss = tf.keras.backend.categorical_crossentropy(a, a)
		>>> print(np.around(loss, 5))
		[0. 0. 0. 0.]
		
		Raises:
		    Value Error: If input contains string value
	**/
	static public function to_categorical(y:Dynamic, ?num_classes:Dynamic, ?dtype:Dynamic):Dynamic;
}