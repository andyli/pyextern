/* This file is generated, do not edit! */
package selenium.webdriver.common.utils;
@:pythonImport("selenium.webdriver.common.utils") extern class Utils_Module {
	static public function AnyKey(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _is_connectable_exceptions : Dynamic;
	/**
		Resolve a hostname to an IP, preferring IPv4 addresses.
		
		We prefer IPv4 so that we don't change behavior from previous IPv4-only
		implementations, and because some drivers (e.g., FirefoxDriver) do not
		support IPv6 connections.
		
		If the optional port number is provided, only IPs that listen on the given
		port are considered.
		
		:Args:
		    - host - A hostname.
		    - port - Optional port number.
		
		:Returns:
		    A single IP address, as a string. If any IPv4 address is found, one is
		    returned. Otherwise, if any IPv6 address is found, one is returned. If
		    neither, then None is returned.
	**/
	static public function find_connectable_ip(host:Dynamic, ?port:Dynamic):Dynamic;
	/**
		Determines a free port using sockets.
	**/
	static public function free_port():Dynamic;
	/**
		Tries to connect to the server at port to see if it is running.
		
		:Args:
		 - port - The port to connect.
	**/
	static public function is_connectable(port:Dynamic, ?host:Dynamic):Dynamic;
	/**
		Tries to connect to the HTTP server at /status path
		and specified port to see if it responds successfully.
		
		:Args:
		 - port - The port to connect.
	**/
	static public function is_url_connectable(port:Dynamic):Dynamic;
	/**
		Joins a hostname and port together.
		
		This is a minimal implementation intended to cope with IPv6 literals. For
		example, _join_host_port('::1', 80) == '[::1]:80'.
		
		:Args:
		    - host - A hostname.
		    - port - An integer port.
	**/
	static public function join_host_port(host:Dynamic, port:Dynamic):Dynamic;
	/**
		Processes the values that will be typed in the element.
	**/
	static public function keys_to_typing(value:Dynamic):Dynamic;
}