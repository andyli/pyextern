/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets.synthetic;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets.synthetic") extern class Synthetic_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return Archimedes spiral
		
		Args:
		  theta: array-like, angles from polar coordinates to be converted
		  theta_offset: float, angle offset in radians (2*pi = 0)
	**/
	static public function _archimedes_spiral(theta:Dynamic, ?theta_offset:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return Equiangular (Bernoulli's) spiral
		
		Args:
		  theta: array-like, angles from polar coordinates to be converted
		  theta_offset: float, angle offset in radians (2*pi = 0)
		
		Kwargs:
		  exp_scale: growth rate of the exponential
	**/
	static public function _bernoulli_spiral(theta:Dynamic, ?theta_offset:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return Parabolic (Fermat's) spiral
		
		Args:
		  theta: array-like, angles from polar coordinates to be converted
		  theta_offset: float, angle offset in radians (2*pi = 0)
	**/
	static public function _fermat_spiral(theta:Dynamic, ?theta_offset:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create circles separated by some value (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Consider using synthetic datasets from scikits.learn.
		
		Args:
		  n_samples: int, number of datapoints to generate
		  noise: float or None, standard deviation of the Gaussian noise added
		  seed: int or None, seed for the noise
		  factor: float, size factor of the inner circles with respect to the outer
		    ones
		  n_classes: int, number of classes to generate
		
		Returns:
		  Shuffled features and labels for 'circles' synthetic dataset of type
		  `base.Dataset`
		
		Note:
		  The multi-class support might not work as expected if `noise` is enabled
		
		TODO:
		  - Generation of unbalanced data
		
		Credit goes to (under BSD 3 clause):
		  B. Thirion,
		  G. Varoquaux,
		  A. Gramfort,
		  V. Michel,
		  O. Grisel,
		  G. Louppe,
		  J. Nothman
	**/
	static public function circles(?n_samples:Dynamic, ?noise:Dynamic, ?seed:Dynamic, ?factor:Dynamic, ?n_classes:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Create spirals (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Consider using synthetic datasets from scikits.learn.
		
		Currently only binary classification is supported for spiral generation
		
		Args:
		  n_samples: int, number of datapoints to generate
		  noise: float or None, standard deviation of the Gaussian noise added
		  seed: int or None, seed for the noise
		  n_loops: int, number of spiral loops, doesn't play well with 'bernoulli'
		  mode: str, how the spiral should be generated. Current implementations:
		    'archimedes': a spiral with equal distances between branches
		    'bernoulli': logarithmic spiral with branch distances increasing
		    'fermat': a spiral with branch distances decreasing (sqrt)
		
		Returns:
		  Shuffled features and labels for 'spirals' synthetic dataset of type
		  `base.Dataset`
		
		Raises:
		  ValueError: If the generation `mode` is not valid
		
		TODO:
		  - Generation of unbalanced data
	**/
	static public function spirals(?n_samples:Dynamic, ?noise:Dynamic, ?seed:Dynamic, ?mode:Dynamic, ?n_loops:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}