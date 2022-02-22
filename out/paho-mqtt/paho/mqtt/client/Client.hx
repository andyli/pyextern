/* This file is generated, do not edit! */
package paho.mqtt.client;
@:pythonImport("paho.mqtt.client", "Client") extern class Client {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		client_id is the unique client id string used when connecting to the
		broker. If client_id is zero length or None, then the behaviour is
		defined by which protocol version is in use. If using MQTT v3.1.1, then
		a zero length client id will be sent to the broker and the broker will
		generate a random for the client. If using MQTT v3.1 then an id will be
		randomly generated. In both cases, clean_session must be True. If this
		is not the case a ValueError will be raised.
		
		clean_session is a boolean that determines the client type. If True,
		the broker will remove all information about this client when it
		disconnects. If False, the client is a persistent client and
		subscription information and queued messages will be retained when the
		client disconnects.
		Note that a client will never discard its own outgoing messages on
		disconnect. Calling connect() or reconnect() will cause the messages to
		be resent.  Use reinitialise() to reset a client to its original state.
		The clean_session argument only applies to MQTT versions v3.1.1 and v3.1.
		It is not accepted if the MQTT version is v5.0 - use the clean_start
		argument on connect() instead.
		
		userdata is user defined data of any type that is passed as the "userdata"
		parameter to callbacks. It may be updated at a later point with the
		user_data_set() function.
		
		The protocol argument allows explicit setting of the MQTT version to
		use for this client. Can be paho.mqtt.client.MQTTv311 (v3.1.1),
		paho.mqtt.client.MQTTv31 (v3.1) or paho.mqtt.client.MQTTv5 (v5.0),
		with the default being v3.1.1.
		
		Set transport to "websockets" to use WebSockets as the transport
		mechanism. Set to "tcp" to use raw TCP, which is the default.
	**/
	@:native("__init__")
	public function ___init__(?client_id:Dynamic, ?clean_session:Dynamic, ?userdata:Dynamic, ?protocol:Dynamic, ?transport:Dynamic, ?reconnect_on_failure:Dynamic):Dynamic;
	/**
		client_id is the unique client id string used when connecting to the
		broker. If client_id is zero length or None, then the behaviour is
		defined by which protocol version is in use. If using MQTT v3.1.1, then
		a zero length client id will be sent to the broker and the broker will
		generate a random for the client. If using MQTT v3.1 then an id will be
		randomly generated. In both cases, clean_session must be True. If this
		is not the case a ValueError will be raised.
		
		clean_session is a boolean that determines the client type. If True,
		the broker will remove all information about this client when it
		disconnects. If False, the client is a persistent client and
		subscription information and queued messages will be retained when the
		client disconnects.
		Note that a client will never discard its own outgoing messages on
		disconnect. Calling connect() or reconnect() will cause the messages to
		be resent.  Use reinitialise() to reset a client to its original state.
		The clean_session argument only applies to MQTT versions v3.1.1 and v3.1.
		It is not accepted if the MQTT version is v5.0 - use the clean_start
		argument on connect() instead.
		
		userdata is user defined data of any type that is passed as the "userdata"
		parameter to callbacks. It may be updated at a later point with the
		user_data_set() function.
		
		The protocol argument allows explicit setting of the MQTT version to
		use for this client. Can be paho.mqtt.client.MQTTv311 (v3.1.1),
		paho.mqtt.client.MQTTv31 (v3.1) or paho.mqtt.client.MQTTv5 (v5.0),
		with the default being v3.1.1.
		
		Set transport to "websockets" to use WebSockets as the transport
		mechanism. Set to "tcp" to use raw TCP, which is the default.
	**/
	public function new(?client_id:Dynamic, ?clean_session:Dynamic, ?userdata:Dynamic, ?protocol:Dynamic, ?transport:Dynamic, ?reconnect_on_failure:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Call the socket_close callback with the about-to-be-closed socket
	**/
	public function _call_socket_close(sock:Dynamic):Dynamic;
	/**
		Call the socket_open callback with the just-opened socket
	**/
	public function _call_socket_open():Dynamic;
	/**
		Call the socket_register_write callback with the unwritable socket
	**/
	public function _call_socket_register_write():Dynamic;
	/**
		Call the socket_unregister_write callback with the writable socket
	**/
	public function _call_socket_unregister_write(?sock:Dynamic):Dynamic;
	public function _check_clean_session():Dynamic;
	public function _check_keepalive():Dynamic;
	public function _create_socket_connection():Dynamic;
	public function _do_on_disconnect(rc:Dynamic, ?properties:Dynamic):Dynamic;
	public function _do_on_publish(mid:Dynamic):Dynamic;
	public function _easy_log(level:Dynamic, fmt:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _filter_wildcard_len_check(sub:Dynamic):Dynamic;
	public function _get_proxy():Dynamic;
	public function _handle_connack():Dynamic;
	public function _handle_disconnect():Dynamic;
	public function _handle_on_connect_fail():Dynamic;
	public function _handle_on_message(message:Dynamic):Dynamic;
	public function _handle_pingreq():Dynamic;
	public function _handle_pingresp():Dynamic;
	public function _handle_pubackcomp(cmd:Dynamic):Dynamic;
	public function _handle_publish():Dynamic;
	public function _handle_pubrec():Dynamic;
	public function _handle_pubrel():Dynamic;
	public function _handle_suback():Dynamic;
	public function _handle_unsuback():Dynamic;
	public function _loop(?timeout:Dynamic):Dynamic;
	public function _loop_rc_handle(rc:Dynamic, ?properties:Dynamic):Dynamic;
	public function _messages_reconnect_reset():Dynamic;
	public function _messages_reconnect_reset_in():Dynamic;
	public function _messages_reconnect_reset_out():Dynamic;
	public function _mid_generate():Dynamic;
	public function _pack_remaining_length(packet:Dynamic, remaining_length:Dynamic):Dynamic;
	public function _pack_str16(packet:Dynamic, data:Dynamic):Dynamic;
	public function _packet_handle():Dynamic;
	public function _packet_queue(command:Dynamic, packet:Dynamic, mid:Dynamic, qos:Dynamic, ?info:Dynamic):Dynamic;
	public function _packet_read():Dynamic;
	public function _packet_write():Dynamic;
	static public function _proxy_is_valid(p:Dynamic):Dynamic;
	public function _reconnect_wait():Dynamic;
	public function _reset_sockets(?sockpair_only:Dynamic):Dynamic;
	public function _send_command_with_mid(command:Dynamic, mid:Dynamic, dup:Dynamic):Dynamic;
	public function _send_connect(keepalive:Dynamic):Dynamic;
	public function _send_disconnect(?reasoncode:Dynamic, ?properties:Dynamic):Dynamic;
	public function _send_pingreq():Dynamic;
	public function _send_pingresp():Dynamic;
	public function _send_puback(mid:Dynamic):Dynamic;
	public function _send_pubcomp(mid:Dynamic):Dynamic;
	public function _send_publish(mid:Dynamic, topic:Dynamic, ?payload:Dynamic, ?qos:Dynamic, ?retain:Dynamic, ?dup:Dynamic, ?info:Dynamic, ?properties:Dynamic):Dynamic;
	public function _send_pubrec(mid:Dynamic):Dynamic;
	public function _send_pubrel(mid:Dynamic):Dynamic;
	public function _send_simple_command(command:Dynamic):Dynamic;
	public function _send_subscribe(dup:Dynamic, topics:Dynamic, ?properties:Dynamic):Dynamic;
	public function _send_unsubscribe(dup:Dynamic, topics:Dynamic, ?properties:Dynamic):Dynamic;
	/**
		Close the connection to the server.
	**/
	public function _sock_close():Dynamic;
	public function _sock_recv(bufsize:Dynamic):Dynamic;
	public function _sock_send(buf:Dynamic):Dynamic;
	public function _thread_main():Dynamic;
	static public function _topic_wildcard_len_check(topic:Dynamic):Dynamic;
	public function _update_inflight():Dynamic;
	/**
		Connect to a remote broker.
		
		host is the hostname or IP address of the remote broker.
		port is the network port of the server host to connect to. Defaults to
		1883. Note that the default port for MQTT over SSL/TLS is 8883 so if you
		are using tls_set() the port may need providing.
		keepalive: Maximum period in seconds between communications with the
		broker. If no other messages are being exchanged, this controls the
		rate at which the client will send ping messages to the broker.
		clean_start: (MQTT v5.0 only) True, False or MQTT_CLEAN_START_FIRST_ONLY.
		Sets the MQTT v5.0 clean_start flag always, never or on the first successful connect only,
		respectively.  MQTT session data (such as outstanding messages and subscriptions)
		is cleared on successful connect when the clean_start flag is set.
		properties: (MQTT v5.0 only) the MQTT v5.0 properties to be sent in the
		MQTT connect packet.
	**/
	public function connect(host:Dynamic, ?port:Dynamic, ?keepalive:Dynamic, ?bind_address:Dynamic, ?bind_port:Dynamic, ?clean_start:Dynamic, ?properties:Dynamic):Dynamic;
	/**
		Connect to a remote broker asynchronously. This is a non-blocking
		connect call that can be used with loop_start() to provide very quick
		start.
		
		host is the hostname or IP address of the remote broker.
		port is the network port of the server host to connect to. Defaults to
		1883. Note that the default port for MQTT over SSL/TLS is 8883 so if you
		are using tls_set() the port may need providing.
		keepalive: Maximum period in seconds between communications with the
		broker. If no other messages are being exchanged, this controls the
		rate at which the client will send ping messages to the broker.
		clean_start: (MQTT v5.0 only) True, False or MQTT_CLEAN_START_FIRST_ONLY.
		Sets the MQTT v5.0 clean_start flag always, never or on the first successful connect only,
		respectively.  MQTT session data (such as outstanding messages and subscriptions)
		is cleared on successful connect when the clean_start flag is set.
		properties: (MQTT v5.0 only) the MQTT v5.0 properties to be sent in the
		MQTT connect packet.  Use the Properties class.
	**/
	public function connect_async(host:Dynamic, ?port:Dynamic, ?keepalive:Dynamic, ?bind_address:Dynamic, ?bind_port:Dynamic, ?clean_start:Dynamic, ?properties:Dynamic):Dynamic;
	public function connect_callback():Dynamic;
	public function connect_fail_callback():Dynamic;
	/**
		Connect to a remote broker.
		
		domain is the DNS domain to search for SRV records; if None,
		try to determine local domain name.
		keepalive, bind_address, clean_start and properties are as for connect()
	**/
	public function connect_srv(?domain:Dynamic, ?keepalive:Dynamic, ?bind_address:Dynamic, ?clean_start:Dynamic, ?properties:Dynamic):Dynamic;
	public function disable_logger():Dynamic;
	/**
		Disconnect a connected client from the broker.
		reasoncode: (MQTT v5.0 only) a ReasonCodes instance setting the MQTT v5.0
		reasoncode to be sent with the disconnect.  It is optional, the receiver
		then assuming that 0 (success) is the value.
		properties: (MQTT v5.0 only) a Properties instance setting the MQTT v5.0 properties
		to be included. Optional - if not set, no properties are sent.
	**/
	public function disconnect(?reasoncode:Dynamic, ?properties:Dynamic):Dynamic;
	public function disconnect_callback():Dynamic;
	/**
		Sets the client in a bridge mode instead of client mode.
		
		Must be called before connect() to have any effect.
		Requires brokers that support bridge mode.
		
		Under bridge mode, the broker will identify the client as a bridge and
		not send it's own messages back to it. Hence a subsciption of # is
		possible without message loops. This feature also correctly propagates
		the retain flag on the messages.
		
		Currently Mosquitto and RSMB support this feature. This feature can
		be used to create a bridge between multiple broker.
	**/
	public function enable_bridge_mode():Dynamic;
	/**
		Enables a logger to send log messages to 
	**/
	public function enable_logger(?logger:Dynamic):Dynamic;
	/**
		Returns the current status of the connection
		
		True if connection exists
		False if connection is closed
	**/
	public function is_connected():Dynamic;
	public function log_callback():Dynamic;
	/**
		Process network events.
		
		It is strongly recommended that you use loop_start(), or
		loop_forever(), or if you are using an external event loop using
		loop_read(), loop_write(), and loop_misc(). Using loop() on it's own is
		no longer recommended.
		
		This function must be called regularly to ensure communication with the
		broker is carried out. It calls select() on the network socket to wait
		for network events. If incoming data is present it will then be
		processed. Outgoing commands, from e.g. publish(), are normally sent
		immediately that their function is called, but this is not always
		possible. loop() will also attempt to send any remaining outgoing
		messages, which also includes commands that are part of the flow for
		messages with QoS>0.
		
		timeout: The time in seconds to wait for incoming/outgoing network
		    traffic before timing out and returning.
		max_packets: Not currently used.
		
		Returns MQTT_ERR_SUCCESS on success.
		Returns >0 on error.
		
		A ValueError will be raised if timeout < 0
	**/
	public function loop(?timeout:Dynamic, ?max_packets:Dynamic):Dynamic;
	/**
		This function calls the network loop functions for you in an
		infinite blocking loop. It is useful for the case where you only want
		to run the MQTT client loop in your program.
		
		loop_forever() will handle reconnecting for you if reconnect_on_failure is
		true (this is the default behavior). If you call disconnect() in a callback
		it will return.
		
		
		timeout: The time in seconds to wait for incoming/outgoing network
		  traffic before timing out and returning.
		max_packets: Not currently used.
		retry_first_connection: Should the first connection attempt be retried on failure.
		  This is independent of the reconnect_on_failure setting.
		
		Raises OSError/WebsocketConnectionError on first connection failures unless retry_first_connection=True
	**/
	public function loop_forever(?timeout:Dynamic, ?max_packets:Dynamic, ?retry_first_connection:Dynamic):Dynamic;
	/**
		Process miscellaneous network events. Use in place of calling loop() if you
		wish to call select() or equivalent on.
		
		Do not use if you are using the threaded interface loop_start().
	**/
	public function loop_misc():Dynamic;
	/**
		Process read network events. Use in place of calling loop() if you
		wish to handle your client reads as part of your own application.
		
		Use socket() to obtain the client socket to call select() or equivalent
		on.
		
		Do not use if you are using the threaded interface loop_start().
	**/
	public function loop_read(?max_packets:Dynamic):Dynamic;
	/**
		This is part of the threaded client interface. Call this once to
		start a new thread to process network traffic. This provides an
		alternative to repeatedly calling loop() yourself.
	**/
	public function loop_start():Dynamic;
	/**
		This is part of the threaded client interface. Call this once to
		stop the network thread previously created with loop_start(). This call
		will block until the network thread finishes.
		
		The force parameter is currently ignored.
	**/
	public function loop_stop(?force:Dynamic):Dynamic;
	/**
		Process write network events. Use in place of calling loop() if you
		wish to handle your client writes as part of your own application.
		
		Use socket() to obtain the client socket to call select() or equivalent
		on.
		
		Use want_write() to determine if there is data waiting to be written.
		
		Do not use if you are using the threaded interface loop_start().
	**/
	public function loop_write(?max_packets:Dynamic):Dynamic;
	/**
		Set the maximum number of messages with QoS>0 that can be part way
		through their network flow at once. Defaults to 20.
	**/
	public function max_inflight_messages_set(inflight:Dynamic):Dynamic;
	/**
		Set the maximum number of messages in the outgoing message queue.
		0 means unlimited.
	**/
	public function max_queued_messages_set(queue_size:Dynamic):Dynamic;
	public function message_callback():Dynamic;
	/**
		Register a message callback for a specific topic.
		Messages that match 'sub' will be passed to 'callback'. Any
		non-matching messages will be passed to the default on_message
		callback.
		
		Call multiple times with different 'sub' to define multiple topic
		specific callbacks.
		
		Topic specific callbacks may be removed with
		message_callback_remove().
	**/
	public function message_callback_add(sub:Dynamic, callback:Dynamic):Dynamic;
	/**
		Remove a message callback previously registered with
		message_callback_add().
	**/
	public function message_callback_remove(sub:Dynamic):Dynamic;
	/**
		No longer used, remove in version 2.0
	**/
	public function message_retry_set(retry:Dynamic):Dynamic;
	/**
		If implemented, called when the broker responds to our connection
		request.
	**/
	public var on_connect : Dynamic;
	/**
		If implemented, called when the client failed to connect
		to the broker.
	**/
	public var on_connect_fail : Dynamic;
	/**
		If implemented, called when the client disconnects from the broker.
		        
	**/
	public var on_disconnect : Dynamic;
	/**
		If implemented, called when the client has log information.
		Defined to allow debugging.
	**/
	public var on_log : Dynamic;
	/**
		If implemented, called when a message has been received on a topic
		that the client subscribes to.
		
		This callback will be called for every message received. Use
		message_callback_add() to define multiple callbacks that will be called
		for specific topic filters.
	**/
	public var on_message : Dynamic;
	/**
		If implemented, called when a message that was to be sent using the
		publish() call has completed transmission to the broker.
		
		For messages with QoS levels 1 and 2, this means that the appropriate
		handshakes have completed. For QoS 0, this simply means that the message
		has left the client.
		This callback is important because even if the publish() call returns
		success, it does not always mean that the message has been sent.
	**/
	public var on_publish : Dynamic;
	/**
		If implemented, called just before the socket is closed.
	**/
	public var on_socket_close : Dynamic;
	/**
		If implemented, called just after the socket was opend.
	**/
	public var on_socket_open : Dynamic;
	/**
		If implemented, called when the socket needs writing but can't.
	**/
	public var on_socket_register_write : Dynamic;
	/**
		If implemented, called when the socket doesn't need writing anymore.
	**/
	public var on_socket_unregister_write : Dynamic;
	/**
		If implemented, called when the broker responds to a subscribe
		request.
	**/
	public var on_subscribe : Dynamic;
	/**
		If implemented, called when the broker responds to an unsubscribe
		request.
	**/
	public var on_unsubscribe : Dynamic;
	/**
		Configure proxying of MQTT connection. Enables support for SOCKS or
		HTTP proxies.
		
		Proxying is done through the PySocks library. Brief descriptions of the
		proxy_args parameters are below; see the PySocks docs for more info.
		
		(Required)
		proxy_type: One of {socks.HTTP, socks.SOCKS4, or socks.SOCKS5}
		proxy_addr: IP address or DNS name of proxy server
		
		(Optional)
		proxy_rdns: boolean indicating whether proxy lookup should be performed
		    remotely (True, default) or locally (False)
		proxy_username: username for SOCKS5 proxy, or userid for SOCKS4 proxy
		proxy_password: password for SOCKS5 proxy
		
		Must be called before connect() or connect_async().
	**/
	public function proxy_set(?proxy_args:python.KwArgs<Dynamic>):Dynamic;
	/**
		Publish a message on a topic.
		
		This causes a message to be sent to the broker and subsequently from
		the broker to any clients subscribing to matching topics.
		
		topic: The topic that the message should be published on.
		payload: The actual message to send. If not given, or set to None a
		zero length message will be used. Passing an int or float will result
		in the payload being converted to a string representing that number. If
		you wish to send a true int/float, use struct.pack() to create the
		payload you require.
		qos: The quality of service level to use.
		retain: If set to true, the message will be set as the "last known
		good"/retained message for the topic.
		properties: (MQTT v5.0 only) the MQTT v5.0 properties to be included.
		Use the Properties class.
		
		Returns a MQTTMessageInfo class, which can be used to determine whether
		the message has been delivered (using info.is_published()) or to block
		waiting for the message to be delivered (info.wait_for_publish()). The
		message ID and return code of the publish() call can be found at
		info.mid and info.rc.
		
		For backwards compatibility, the MQTTMessageInfo class is iterable so
		the old construct of (rc, mid) = client.publish(...) is still valid.
		
		rc is MQTT_ERR_SUCCESS to indicate success or MQTT_ERR_NO_CONN if the
		client is not currently connected.  mid is the message ID for the
		publish request. The mid value can be used to track the publish request
		by checking against the mid argument in the on_publish() callback if it
		is defined.
		
		A ValueError will be raised if topic is None, has zero length or is
		invalid (contains a wildcard), except if the MQTT version used is v5.0.
		For v5.0, a zero length topic can be used when a Topic Alias has been set.
		
		A ValueError will be raised if qos is not one of 0, 1 or 2, or if
		the length of the payload is greater than 268435455 bytes.
	**/
	public function publish(topic:Dynamic, ?payload:Dynamic, ?qos:Dynamic, ?retain:Dynamic, ?properties:Dynamic):Dynamic;
	public function publish_callback():Dynamic;
	/**
		Reconnect the client after a disconnect. Can only be called after
		connect()/connect_async().
	**/
	public function reconnect():Dynamic;
	/**
		Configure the exponential reconnect delay
		
		When connection is lost, wait initially min_delay seconds and
		double this time every attempt. The wait is capped at max_delay.
		Once the client is fully connected (e.g. not only TCP socket, but
		received a success CONNACK), the wait timer is reset to min_delay.
	**/
	public function reconnect_delay_set(?min_delay:Dynamic, ?max_delay:Dynamic):Dynamic;
	public function reinitialise(?client_id:Dynamic, ?clean_session:Dynamic, ?userdata:Dynamic):Dynamic;
	/**
		Return the socket or ssl object for this client.
	**/
	public function socket():Dynamic;
	public function socket_close_callback():Dynamic;
	public function socket_open_callback():Dynamic;
	public function socket_register_write_callback():Dynamic;
	public function socket_unregister_write_callback():Dynamic;
	/**
		Subscribe the client to one or more topics.
		
		This function may be called in three different ways (and a further three for MQTT v5.0):
		
		Simple string and integer
		-------------------------
		e.g. subscribe("my/topic", 2)
		
		topic: A string specifying the subscription topic to subscribe to.
		qos: The desired quality of service level for the subscription.
		     Defaults to 0.
		options and properties: Not used.
		
		Simple string and subscribe options (MQTT v5.0 only)
		----------------------------------------------------
		e.g. subscribe("my/topic", options=SubscribeOptions(qos=2))
		
		topic: A string specifying the subscription topic to subscribe to.
		qos: Not used.
		options: The MQTT v5.0 subscribe options.
		properties: a Properties instance setting the MQTT v5.0 properties
		to be included. Optional - if not set, no properties are sent.
		
		String and integer tuple
		------------------------
		e.g. subscribe(("my/topic", 1))
		
		topic: A tuple of (topic, qos). Both topic and qos must be present in
		       the tuple.
		qos and options: Not used.
		properties: Only used for MQTT v5.0.  A Properties instance setting the
		MQTT v5.0 properties. Optional - if not set, no properties are sent.
		
		String and subscribe options tuple (MQTT v5.0 only)
		---------------------------------------------------
		e.g. subscribe(("my/topic", SubscribeOptions(qos=1)))
		
		topic: A tuple of (topic, SubscribeOptions). Both topic and subscribe
		        options must be present in the tuple.
		qos and options: Not used.
		properties: a Properties instance setting the MQTT v5.0 properties
		to be included. Optional - if not set, no properties are sent.
		
		List of string and integer tuples
		---------------------------------
		e.g. subscribe([("my/topic", 0), ("another/topic", 2)])
		
		This allows multiple topic subscriptions in a single SUBSCRIPTION
		command, which is more efficient than using multiple calls to
		subscribe().
		
		topic: A list of tuple of format (topic, qos). Both topic and qos must
		       be present in all of the tuples.
		qos, options and properties: Not used.
		
		List of string and subscribe option tuples (MQTT v5.0 only)
		-----------------------------------------------------------
		e.g. subscribe([("my/topic", SubscribeOptions(qos=0), ("another/topic", SubscribeOptions(qos=2)])
		
		This allows multiple topic subscriptions in a single SUBSCRIPTION
		command, which is more efficient than using multiple calls to
		subscribe().
		
		topic: A list of tuple of format (topic, SubscribeOptions). Both topic and subscribe
		        options must be present in all of the tuples.
		qos and options: Not used.
		properties: a Properties instance setting the MQTT v5.0 properties
		to be included. Optional - if not set, no properties are sent.
		
		The function returns a tuple (result, mid), where result is
		MQTT_ERR_SUCCESS to indicate success or (MQTT_ERR_NO_CONN, None) if the
		client is not currently connected.  mid is the message ID for the
		subscribe request. The mid value can be used to track the subscribe
		request by checking against the mid argument in the on_subscribe()
		callback if it is defined.
		
		Raises a ValueError if qos is not 0, 1 or 2, or if topic is None or has
		zero string length, or if topic is not a string, tuple or list.
	**/
	public function subscribe(topic:Dynamic, ?qos:Dynamic, ?options:Dynamic, ?properties:Dynamic):Dynamic;
	public function subscribe_callback():Dynamic;
	/**
		Configure verification of the server hostname in the server certificate.
		
		If value is set to true, it is impossible to guarantee that the host
		you are connecting to is not impersonating your server. This can be
		useful in initial server testing, but makes it possible for a malicious
		third party to impersonate your server through DNS spoofing, for
		example.
		
		Do not use this function in a real system. Setting value to true means
		there is no point using encryption.
		
		Must be called before connect() and after either tls_set() or
		tls_set_context().
	**/
	public function tls_insecure_set(value:Dynamic):Dynamic;
	/**
		Configure network encryption and authentication options. Enables SSL/TLS support.
		
		ca_certs : a string path to the Certificate Authority certificate files
		that are to be treated as trusted by this client. If this is the only
		option given then the client will operate in a similar manner to a web
		browser. That is to say it will require the broker to have a
		certificate signed by the Certificate Authorities in ca_certs and will
		communicate using TLS v1,2, but will not attempt any form of
		authentication. This provides basic network encryption but may not be
		sufficient depending on how the broker is configured.
		By default, on Python 2.7.9+ or 3.4+, the default certification
		authority of the system is used. On older Python version this parameter
		is mandatory.
		
		certfile and keyfile are strings pointing to the PEM encoded client
		certificate and private keys respectively. If these arguments are not
		None then they will be used as client information for TLS based
		authentication.  Support for this feature is broker dependent. Note
		that if either of these files in encrypted and needs a password to
		decrypt it, then this can be passed using the keyfile_password
		argument - you should take precautions to ensure that your password is
		not hard coded into your program by loading the password from a file
		for example. If you do not provide keyfile_password, the password will
		be requested to be typed in at a terminal window.
		
		cert_reqs allows the certificate requirements that the client imposes
		on the broker to be changed. By default this is ssl.CERT_REQUIRED,
		which means that the broker must provide a certificate. See the ssl
		pydoc for more information on this parameter.
		
		tls_version allows the version of the SSL/TLS protocol used to be
		specified. By default TLS v1.2 is used. Previous versions are allowed
		but not recommended due to possible security problems.
		
		ciphers is a string specifying which encryption ciphers are allowable
		for this connection, or None to use the defaults. See the ssl pydoc for
		more information.
		
		Must be called before connect() or connect_async().
	**/
	public function tls_set(?ca_certs:Dynamic, ?certfile:Dynamic, ?keyfile:Dynamic, ?cert_reqs:Dynamic, ?tls_version:Dynamic, ?ciphers:Dynamic, ?keyfile_password:Dynamic):Dynamic;
	/**
		Configure network encryption and authentication context. Enables SSL/TLS support.
		
		context : an ssl.SSLContext object. By default this is given by
		`ssl.create_default_context()`, if available.
		
		Must be called before connect() or connect_async().
	**/
	public function tls_set_context(?context:Dynamic):Dynamic;
	public function topic_callback(sub:Dynamic):Dynamic;
	/**
		Unsubscribe the client from one or more topics.
		
		topic: A single string, or list of strings that are the subscription
		       topics to unsubscribe from.
		properties: (MQTT v5.0 only) a Properties instance setting the MQTT v5.0 properties
		to be included. Optional - if not set, no properties are sent.
		
		Returns a tuple (result, mid), where result is MQTT_ERR_SUCCESS
		to indicate success or (MQTT_ERR_NO_CONN, None) if the client is not
		currently connected.
		mid is the message ID for the unsubscribe request. The mid value can be
		used to track the unsubscribe request by checking against the mid
		argument in the on_unsubscribe() callback if it is defined.
		
		Raises a ValueError if topic is None or has zero string length, or is
		not a string or list.
	**/
	public function unsubscribe(topic:Dynamic, ?properties:Dynamic):Dynamic;
	public function unsubscribe_callback():Dynamic;
	/**
		Set the user data variable passed to callbacks. May be any data type.
	**/
	public function user_data_set(userdata:Dynamic):Dynamic;
	/**
		Set a username and optionally a password for broker authentication.
		
		Must be called before connect() to have any effect.
		Requires a broker that supports MQTT v3.1.
		
		username: The username to authenticate with. Need have no relationship to the client id. Must be unicode
		    [MQTT-3.1.3-11].
		    Set to None to reset client back to not using username/password for broker authentication.
		password: The password to authenticate with. Optional, set to None if not required. If it is unicode, then it
		    will be encoded as UTF-8.
	**/
	public function username_pw_set(username:Dynamic, ?password:Dynamic):Dynamic;
	/**
		Call to determine if there is network data waiting to be written.
		Useful if you are calling select() yourself rather than using loop().
	**/
	public function want_write():Dynamic;
	/**
		Removes a will that was previously configured with will_set().
		
		Must be called before connect() to have any effect.
	**/
	public function will_clear():Dynamic;
	/**
		Set a Will to be sent by the broker in case the client disconnects unexpectedly.
		
		This must be called before connect() to have any effect.
		
		topic: The topic that the will message should be published on.
		payload: The message to send as a will. If not given, or set to None a
		zero length message will be used as the will. Passing an int or float
		will result in the payload being converted to a string representing
		that number. If you wish to send a true int/float, use struct.pack() to
		create the payload you require.
		qos: The quality of service level to use for the will.
		retain: If set to true, the will message will be set as the "last known
		good"/retained message for the topic.
		properties: (MQTT v5.0 only) a Properties instance setting the MQTT v5.0 properties
		to be included with the will message. Optional - if not set, no properties are sent.
		
		Raises a ValueError if qos is not 0, 1 or 2, or if topic is None or has
		zero string length.
	**/
	public function will_set(topic:Dynamic, ?payload:Dynamic, ?qos:Dynamic, ?retain:Dynamic, ?properties:Dynamic):Dynamic;
	/**
		Set the path and headers for a websocket connection
		
		path is a string starting with / which should be the endpoint of the
		mqtt connection on the remote server
		
		headers can be either a dict or a callable object. If it is a dict then
		the extra items in the dict are added to the websocket headers. If it is
		a callable, then the default websocket headers are passed into this
		function and the result is used as the new headers.
	**/
	public function ws_set_options(?path:Dynamic, ?headers:Dynamic):Dynamic;
}