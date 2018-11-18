/* This file is generated, do not edit! */
package tensorflow.python.distribute.estimator_training;
@:pythonImport("tensorflow.python.distribute.estimator_training") extern class Estimator_training_Module {
	static public var CHIEF : Dynamic;
	static public var EVALUATOR : Dynamic;
	static public var PS : Dynamic;
	static public var WORKER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Counts the number of parameter servers in cluster_spec.
	**/
	static public function _count_ps(cluster_spec:Dynamic):Dynamic;
	/**
		Counts the number of workers (including chief) in cluster_spec.
	**/
	static public function _count_worker(cluster_spec:Dynamic, chief_task_type:Dynamic):Dynamic;
	/**
		Returns the global id of the given task type in a cluster.
	**/
	static public function _get_global_id(cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic, chief_task_type:Dynamic):Dynamic;
	/**
		Initializes run config from distribute coordinator's worker context.
	**/
	static public function _init_run_config_from_worker_context(config:Dynamic, worker_context:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Initializes RunConfig for distribution strategies.
	**/
	static public function init_run_config(config:Dynamic, tf_config:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Checks the config to see whether to run distribute coordinator.
	**/
	static public function should_run_distribute_coordinator(config:Dynamic):Dynamic;
	/**
		Run distribute coordinator for Estimator's `train_and_evaluate`.
		
		Args:
		  estimator: An `Estimator` instance to train and evaluate.
		  train_spec: A `TrainSpec` instance to specify the training specification.
		  eval_spec: A `EvalSpec` instance to specify the evaluation and export
		    specification.
		  executor_cls: the evaluation executor class of Estimator.
		
		Raises:
		  ValueError: if `distribute_coordinator_mode` is None in RunConfig.
	**/
	static public function train_and_evaluate(estimator:Dynamic, train_spec:Dynamic, eval_spec:Dynamic, executor_cls:Dynamic):Dynamic;
}