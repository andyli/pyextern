/* This file is generated, do not edit! */
package tensorflow.initializers;
@:pythonImport("tensorflow.initializers") extern class Initializers_Module {
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
		Returns an Op that initializes global variables.
		
		This is just a shortcut for `variables_initializer(global_variables())`
		
		Returns:
		  An Op that initializes global variables in the graph.
	**/
	static public function global_variables():Dynamic;
	/**
		He normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(2 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_normal(?seed:Dynamic):Dynamic;
	/**
		He uniform variance scaling initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(6 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_uniform(?seed:Dynamic):Dynamic;
	/**
		LeCun normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(1 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    - [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		    - [Efficient
		    Backprop](http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf)
	**/
	static public function lecun_normal(?seed:Dynamic):Dynamic;
	/**
		LeCun uniform initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(3 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    LeCun 98, Efficient Backprop,
		    http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf
	**/
	static public function lecun_uniform(?seed:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all local variables.
		
		This is just a shortcut for `variables_initializer(local_variables())`
		
		Returns:
		  An Op that initializes all local variables in the graph.
	**/
	static public function local_variables():Dynamic;
	/**
		Returns an Op that initializes all tables of the default graph.
		
		Args:
		  name: Optional name for the initialization op.
		
		Returns:
		  An Op that initializes all tables.  Note that if there are
		  not tables the returned Op is a NoOp.
	**/
	static public function tables_initializer(?name:Dynamic):Dynamic;
	/**
		Returns an Op that initializes a list of variables.
		
		After you launch the graph in a session, you can run the returned Op to
		initialize all the variables in `var_list`. This Op runs all the
		initializers of the variables in `var_list` in parallel.
		
		Calling `initialize_variables()` is equivalent to passing the list of
		initializers to `Group()`.
		
		If `var_list` is empty, however, the function still returns an Op that can
		be run. That Op just has no effect.
		
		Args:
		  var_list: List of `Variable` objects to initialize.
		  name: Optional name for the returned operation.
		
		Returns:
		  An Op that run the initializers of all the specified variables.
	**/
	static public function variables(var_list:Dynamic, ?name:Dynamic):Dynamic;
}