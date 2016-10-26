/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.queues;
@:pythonImport("tensorflow.contrib.slim.python.slim.queues") extern class Queues_Module {
	/**
		Creates a context manager that handles starting and stopping queue runners.
		
		Args:
		  session: the currently running session.
		
		Yields:
		  a context in which queues are run.
		
		Raises:
		  NestedQueueRunnerError: if a QueueRunners context is nested within another.
	**/
	static public function QueueRunners(session:Dynamic):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _queue_runner_lock : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}