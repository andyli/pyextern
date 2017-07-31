/* This file is generated, do not edit! */
package tensorflow.tensorboard.tensorboard;
@:pythonImport("tensorflow.tensorboard.tensorboard") extern class Tensorboard_Module {
	static public var FLAGS : Dynamic;
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
		Read the flags, and create a TensorBoard WSGI application.
		
		Args:
		  plugins: A list of plugins for TensorBoard to initialize.
		
		Raises:
		  ValueError: if a logdir is not specified.
		
		Returns:
		  A new TensorBoard WSGI application.
	**/
	static public function create_tb_app(plugins:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function main(?unused_argv:Dynamic):Dynamic;
	/**
		Create an HTTP server for TensorBoard.
		
		Args:
		  tb_app: The TensorBoard WSGI application to create a server for.
		  host: Indicates the interfaces to bind to ('::' or '0.0.0.0' for all
		      interfaces, '::1' or '127.0.0.1' for localhost). A blank value ('')
		      indicates protocol-agnostic all interfaces.
		  port: The port to bind to (0 indicates an unused port selected by the
		      operating system).
		Returns:
		  A tuple of (server, url):
		    server: An HTTP server object configured to host TensorBoard.
		    url: A best guess at a URL where TensorBoard will be accessible once the
		      server has been started.
		Raises:
		  socket.error: If a server could not be constructed with the host and port
		    specified. Also logs an error message.
	**/
	static public function make_simple_server(tb_app:Dynamic, host:Dynamic, port:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Run a TensorBoard HTTP server, and print some messages to the console.
	**/
	static public function run_simple_server(tb_app:Dynamic):Dynamic;
}