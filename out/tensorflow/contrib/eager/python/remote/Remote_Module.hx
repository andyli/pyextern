/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.remote;
@:pythonImport("tensorflow.contrib.eager.python.remote") extern class Remote_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Connects to a single machine to enable remote execution on it.
		
		Will make devices on the remote host available to use. Note that calling this
		more than once will work, but will invalidate any tensor handles on the old
		remote devices.
		
		Using the default job_name of worker, you can schedule ops to run remotely as
		follows:
		```python
		# Enable eager execution, and connect to the remote host.
		tf.enable_eager_execution()
		tf.contrib.eager.connect_to_remote_host("exampleaddr.com:9876")
		
		with ops.device("job:worker/replica:0/task:1/device:CPU:0"):
		  # The following tensors should be resident on the remote device, and the op
		  # will also execute remotely.
		  x1 = array_ops.ones([2, 2])
		  x2 = array_ops.ones([2, 2])
		  y = math_ops.matmul(x1, x2)
		```
		
		Args:
		  remote_host: The addr of the remote server in host-port format.
		  job_name: The job name under which the new server will be accessible.
		
		Raises:
		  ValueError: if remote_host is None.
	**/
	static public function connect_to_remote_host(?remote_host:Dynamic, ?job_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}