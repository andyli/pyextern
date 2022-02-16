/* This file is generated, do not edit! */
package tensorflow.python.distribute.combinations;
@:pythonImport("tensorflow.python.distribute.combinations") extern class Combinations_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _env : Dynamic;
	/**
		Returns a context manager that enters a session that is configured for the MultiWorkerMirroredStrategy.
		
		Args:
		  kwargs: a dict. Keyword arguments passed to the test.
		
		Returns:
		  A context manager. If MultiWorkerMirroredStrategy is the  one and only one
		  strategy in kwargs and it's in graph mode, it's the seesion that is
		  configured for that strategy.  Otherwise, it's a no-op context manager.
	**/
	static public function _multi_worker_session(kwargs:Dynamic):Dynamic;
	/**
		Decorate test_method so that it runs in each worker.
		
		We use `multi_process_runner` to simulate multiple workers. Since we run the
		this function in the main process and all worker processes, this decoration
		behaves differently in the main process and worker procssses. In the main
		process, it spawns subprocesses and runs the test on each of them; in a worker
		process, it executes test in the same way as a normal test, e.g.
		setUp()/tearDown() are called before/after the test.
		
		Args:
		  test_method: a function which must be a test method.
		
		Returns:
		  Decorated `test_method`. Note that the decorated function has additional
		  arguments.
	**/
	static public function _multi_worker_test(test_method:Dynamic):Dynamic;
	/**
		Returns the number of workers including the chief.
	**/
	static public function _num_total_workers(has_chief:Dynamic, num_workers:Dynamic):Dynamic;
	static public var _running_in_worker : Dynamic;
	static public function _set_total_phsyical_gpus():Dynamic;
	/**
		Executes the test with the given test_id.
		
		This is a simple wrapper around TestRunner to be used with
		multi_process_runner. Similar to test.main(), but it executes only one test
		specified by test_id and returns whether the test succeeds. If the test fails,
		the function prints failures and errors to stdout.
		
		Args:
		  test_id: TestCase.id()
		  test_env: a TestEnvironment object.
		
		Returns:
		  A boolean indicates whether the test succeeds.
	**/
	static public function _test_runner(test_id:Dynamic, test_env:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Generate combinations based on its keyword arguments.
		
		Two sets of returned combinations can be concatenated using +.  Their product
		can be computed using `times()`.
		
		Args:
		  **kwargs: keyword arguments of form `option=[possibilities, ...]`
		       or `option=the_only_possibility`.
		
		Returns:
		  a list of dictionaries for each combination. Keys in the dictionaries are
		  the keyword argument names.  Each key has one value - one of the
		  corresponding keyword argument values.
	**/
	static public function combine(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Concats combinations.
	**/
	static public function concat(?combined:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the object holds the test environment information.
		
		Tests should modifies this in the main process if needed, and it will be
		passed to the worker processes each time a test case is ran.
		
		Returns:
		  a TestEnvironment object.
	**/
	static public function env():Dynamic;
	/**
		Distributed adapter of `tf.__internal__.test.combinations.generate`.
		
		All tests with distributed strategy should use this one instead of
		`tf.__internal__.test.combinations.generate`. This function has support of
		strategy combinations, GPU/TPU and multi worker support.
		
		See `tf.__internal__.test.combinations.generate` for usage.
	**/
	static public function generate(combinations:Dynamic, ?test_combinations:Dynamic):Dynamic;
	/**
		Whether it's in the main test process.
		
		This is normally used to prepare the test environment which should only happen
		in the main process.
		
		Returns:
		  A boolean.
	**/
	static public function in_main_process():Dynamic;
	static public function no_tf_function(f:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tf_function(?func:Dynamic, ?input_signature:Dynamic, ?autograph:Dynamic, ?jit_compile:Dynamic, ?experimental_implements:Dynamic, ?experimental_autograph_options:Dynamic, ?experimental_relax_shapes:Dynamic, ?experimental_compile:Dynamic, ?experimental_follow_type_hints:Dynamic):Dynamic;
	/**
		Generate a product of N sets of combinations.
		
		times(combine(a=[1,2]), combine(b=[3,4])) == combine(a=[1,2], b=[3,4])
		
		Args:
		  *combined: N lists of dictionaries that specify combinations.
		
		Returns:
		  a list of dictionaries for each combination.
		
		Raises:
		  ValueError: if some of the inputs have overlapping keys.
	**/
	static public function times(?combined:python.VarArgs<Dynamic>):Dynamic;
}