/* This file is generated, do not edit! */
package paho.mqtt.publish;
@:pythonImport("paho.mqtt.publish") extern class Publish_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Internal function
	**/
	static public function _do_publish(client:Dynamic):Dynamic;
	/**
		Internal callback
	**/
	static public function _on_connect(client:Dynamic, userdata:Dynamic, flags:Dynamic, rc:Dynamic):Dynamic;
	/**
		Internal v5 callback
	**/
	static public function _on_connect_v5(client:Dynamic, userdata:Dynamic, flags:Dynamic, rc:Dynamic, properties:Dynamic):Dynamic;
	/**
		Internal callback
	**/
	static public function _on_publish(client:Dynamic, userdata:Dynamic, mid:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Publish multiple messages to a broker, then disconnect cleanly.
		
		This function creates an MQTT client, connects to a broker and publishes a
		list of messages. Once the messages have been delivered, it disconnects
		cleanly from the broker.
		
		msgs : a list of messages to publish. Each message is either a dict or a
		       tuple.
		
		       If a dict, only the topic must be present. Default values will be
		       used for any missing arguments. The dict must be of the form:
		
		       msg = {'topic':"<topic>", 'payload':"<payload>", 'qos':<qos>,
		       'retain':<retain>}
		       topic must be present and may not be empty.
		       If payload is "", None or not present then a zero length payload
		       will be published.
		       If qos is not present, the default of 0 is used.
		       If retain is not present, the default of False is used.
		
		       If a tuple, then it must be of the form:
		       ("<topic>", "<payload>", qos, retain)
		
		hostname : a string containing the address of the broker to connect to.
		           Defaults to localhost.
		
		port : the port to connect to the broker on. Defaults to 1883.
		
		client_id : the MQTT client id to use. If "" or None, the Paho library will
		            generate a client id automatically.
		
		keepalive : the keepalive timeout value for the client. Defaults to 60
		            seconds.
		
		will : a dict containing will parameters for the client: will = {'topic':
		       "<topic>", 'payload':"<payload">, 'qos':<qos>, 'retain':<retain>}.
		       Topic is required, all other parameters are optional and will
		       default to None, 0 and False respectively.
		       Defaults to None, which indicates no will should be used.
		
		auth : a dict containing authentication parameters for the client:
		       auth = {'username':"<username>", 'password':"<password>"}
		       Username is required, password is optional and will default to None
		       if not provided.
		       Defaults to None, which indicates no authentication is to be used.
		
		tls : a dict containing TLS configuration parameters for the client:
		      dict = {'ca_certs':"<ca_certs>", 'certfile':"<certfile>",
		      'keyfile':"<keyfile>", 'tls_version':"<tls_version>",
		      'ciphers':"<ciphers">, 'insecure':"<bool>"}
		      ca_certs is required, all other parameters are optional and will
		      default to None if not provided, which results in the client using
		      the default behaviour - see the paho.mqtt.client documentation.
		      Alternatively, tls input can be an SSLContext object, which will be
		      processed using the tls_set_context method.
		      Defaults to None, which indicates that TLS should not be used.
		
		transport : set to "tcp" to use the default setting of transport which is
		      raw TCP. Set to "websockets" to use WebSockets as the transport.
		proxy_args: a dictionary that will be given to the client.
	**/
	static public function multiple(msgs:Dynamic, ?hostname:Dynamic, ?port:Dynamic, ?client_id:Dynamic, ?keepalive:Dynamic, ?will:Dynamic, ?auth:Dynamic, ?tls:Dynamic, ?protocol:Dynamic, ?transport:Dynamic, ?proxy_args:Dynamic):Dynamic;
	/**
		Publish a single message to a broker, then disconnect cleanly.
		
		This function creates an MQTT client, connects to a broker and publishes a
		single message. Once the message has been delivered, it disconnects cleanly
		from the broker.
		
		topic : the only required argument must be the topic string to which the
		        payload will be published.
		
		payload : the payload to be published. If "" or None, a zero length payload
		          will be published.
		
		qos : the qos to use when publishing,  default to 0.
		
		retain : set the message to be retained (True) or not (False).
		
		hostname : a string containing the address of the broker to connect to.
		           Defaults to localhost.
		
		port : the port to connect to the broker on. Defaults to 1883.
		
		client_id : the MQTT client id to use. If "" or None, the Paho library will
		            generate a client id automatically.
		
		keepalive : the keepalive timeout value for the client. Defaults to 60
		            seconds.
		
		will : a dict containing will parameters for the client: will = {'topic':
		       "<topic>", 'payload':"<payload">, 'qos':<qos>, 'retain':<retain>}.
		       Topic is required, all other parameters are optional and will
		       default to None, 0 and False respectively.
		       Defaults to None, which indicates no will should be used.
		
		auth : a dict containing authentication parameters for the client:
		       auth = {'username':"<username>", 'password':"<password>"}
		       Username is required, password is optional and will default to None
		       if not provided.
		       Defaults to None, which indicates no authentication is to be used.
		
		tls : a dict containing TLS configuration parameters for the client:
		      dict = {'ca_certs':"<ca_certs>", 'certfile':"<certfile>",
		      'keyfile':"<keyfile>", 'tls_version':"<tls_version>",
		      'ciphers':"<ciphers">, 'insecure':"<bool>"}
		      ca_certs is required, all other parameters are optional and will
		      default to None if not provided, which results in the client using
		      the default behaviour - see the paho.mqtt.client documentation.
		      Defaults to None, which indicates that TLS should not be used.
		      Alternatively, tls input can be an SSLContext object, which will be
		      processed using the tls_set_context method.
		
		transport : set to "tcp" to use the default setting of transport which is
		      raw TCP. Set to "websockets" to use WebSockets as the transport.
		proxy_args: a dictionary that will be given to the client.
	**/
	static public function single(topic:Dynamic, ?payload:Dynamic, ?qos:Dynamic, ?retain:Dynamic, ?hostname:Dynamic, ?port:Dynamic, ?client_id:Dynamic, ?keepalive:Dynamic, ?will:Dynamic, ?auth:Dynamic, ?tls:Dynamic, ?protocol:Dynamic, ?transport:Dynamic, ?proxy_args:Dynamic):Dynamic;
}