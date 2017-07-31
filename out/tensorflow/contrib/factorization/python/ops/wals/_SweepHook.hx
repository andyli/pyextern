/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.wals;
@:pythonImport("tensorflow.contrib.factorization.python.ops.wals", "_SweepHook") extern class _SweepHook {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initializes SweepHook.
		
		Args:
		  is_row_sweep_var: A Boolean tf.Variable, determines whether we are
		    currently doing a row or column sweep. It is updated by the hook.
		  train_op: An op. All the ops created by the hook will have
		    control_dependencies on train_op.
		  num_rows: int, the total number of rows to be processed.
		  num_cols: int, the total number of columns to be processed.
		  processed_row_indices: A Tensor of type int64. The indices of the input
		    rows that are processed during the current sweep. All elements of
		    processed_row_indices must be in [0, num_rows).
		  processed_col_indices: A Tensor of type int64. The indices of the input
		    columns that are processed during the current sweep. All elements of
		    processed_col_indices must be in [0, num_cols).
		  row_prep_ops: list of ops, to be run before the beginning of each row
		    sweep, in the given order.
		  col_prep_ops: list of ops, to be run before the beginning of each column
		    sweep, in the given order.
		  cache_init_ops: list of ops, to be run once before training, in the given
		    order. These are typically local initialization ops (such as cache
		    initialization).
	**/
	@:native("__init__")
	public function ___init__(is_row_sweep_var:Dynamic, train_op:Dynamic, num_rows:Dynamic, num_cols:Dynamic, processed_row_indices:Dynamic, processed_col_indices:Dynamic, row_prep_ops:Dynamic, col_prep_ops:Dynamic, cache_init_ops:Dynamic):Dynamic;
	/**
		Initializes SweepHook.
		
		Args:
		  is_row_sweep_var: A Boolean tf.Variable, determines whether we are
		    currently doing a row or column sweep. It is updated by the hook.
		  train_op: An op. All the ops created by the hook will have
		    control_dependencies on train_op.
		  num_rows: int, the total number of rows to be processed.
		  num_cols: int, the total number of columns to be processed.
		  processed_row_indices: A Tensor of type int64. The indices of the input
		    rows that are processed during the current sweep. All elements of
		    processed_row_indices must be in [0, num_rows).
		  processed_col_indices: A Tensor of type int64. The indices of the input
		    columns that are processed during the current sweep. All elements of
		    processed_col_indices must be in [0, num_cols).
		  row_prep_ops: list of ops, to be run before the beginning of each row
		    sweep, in the given order.
		  col_prep_ops: list of ops, to be run before the beginning of each column
		    sweep, in the given order.
		  cache_init_ops: list of ops, to be run once before training, in the given
		    order. These are typically local initialization ops (such as cache
		    initialization).
	**/
	public function new(is_row_sweep_var:Dynamic, train_op:Dynamic, num_rows:Dynamic, num_cols:Dynamic, processed_row_indices:Dynamic, processed_col_indices:Dynamic, row_prep_ops:Dynamic, col_prep_ops:Dynamic, cache_init_ops:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Creates ops to update is_row_sweep_var and to increment global_step.
		
		Creates two boolean tensors processed_rows and processed_cols, which keep
		track of which rows/cols have been processed during the current sweep.
		Returns ops that should be run after each row / col update.
		  - When is_row_sweep_var is True, it sets
		    processed_rows[processed_row_indices] to True.
		  - When is_row_sweep_var is False, it sets
		    processed_cols[processed_col_indices] to True .
		When all rows or all cols have been processed, negates is_row_sweep_var and
		resets processed_rows and processed_cols to False.
		All of the ops created by this function have control_dependencies on
		train_op.
		
		Args:
		  processed_row_indices: A Tensor. The indices of the input rows that are
		    processed during the current sweep.
		  processed_col_indices: A Tensor. The indices of the input columns that
		    are processed during the current sweep.
		  train_op: An op. All the ops created by this function have
		    control_dependencies on train_op.
		Returns:
		  A list consisting of:
		    is_sweep_done: A Boolean tensor, determines whether the sweep is done,
		      i.e. all rows (during a row sweep) or all columns (during a column
		      sweep) have been processed.
		    switch_ops: An op that updates is_row_sweep_var when is_sweep_done is
		      True. Has control_dependencies on train_op.
		    global_step_incr_op: An op that increments the global_step counter. Has
		      control_dependenciens on switch_ops.
	**/
	public function _create_switch_ops(processed_row_indices:Dynamic, processed_col_indices:Dynamic, train_op:Dynamic):Dynamic;
	/**
		Called when new TensorFlow session is created.
		
		This is called to signal the hooks that a new session has been created. This
		has two essential differences with the situation in which `begin` is called:
		
		* When this is called, the graph is finalized and ops can no longer be added
		    to the graph.
		* This method will also be called as a result of recovering a wrapped
		    session, not only at the beginning of the overall session.
		
		Args:
		  session: A TensorFlow Session that has been created.
		  coord: A Coordinator object which keeps track of all threads.
	**/
	public function after_create_session(session:Dynamic, coord:Dynamic):Dynamic;
	/**
		Called after each call to run().
		
		The `run_values` argument contains results of requested ops/tensors by
		`before_run()`.
		
		The `run_context` argument is the same one send to `before_run` call.
		`run_context.request_stop()` can be called to stop the iteration.
		
		If `session.run()` raises any exceptions then `after_run()` is not called.
		
		Args:
		  run_context: A `SessionRunContext` object.
		  run_values: A SessionRunValues object.
	**/
	public function after_run(run_context:Dynamic, run_values:Dynamic):Dynamic;
	/**
		Runs the appropriate prep ops, and requests running update ops.
	**/
	public function before_run(run_context:Dynamic):Dynamic;
	/**
		Called once before using the session.
		
		When called, the default graph is the one that will be launched in the
		session.  The hook can modify the graph by adding new operations to it.
		After the `begin()` call the graph will be finalized and the other callbacks
		can not modify the graph anymore. Second call of `begin()` on the same
		graph, should not change the graph.
	**/
	public function begin():Dynamic;
	/**
		Called at the end of session.
		
		The `session` argument can be used in case the hook wants to run final ops,
		such as saving a last checkpoint.
		
		If `session.run()` raises exception other than OutOfRangeError or
		StopIteration then `end()` is not called.
		Note the difference between `end()` and `after_run()` behavior when
		`session.run()` raises OutOfRangeError or StopIteration. In that case
		`end()` is called but `after_run()` is not called.
		
		Args:
		  session: A TensorFlow Session that will be soon closed.
	**/
	public function end(session:Dynamic):Dynamic;
}