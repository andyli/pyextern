/* This file is generated, do not edit! */
package docutils.statemachine;
@:pythonImport("docutils.statemachine", "State") extern class State {
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
		Initialize a `State` object; make & add initial transitions.
		
		Parameters:
		
		- `statemachine`: the controlling `StateMachine` object.
		- `debug`: a boolean; produce verbose output if true.
	**/
	@:native("__init__")
	public function ___init__(state_machine:Dynamic, ?debug:Dynamic):Dynamic;
	/**
		Initialize a `State` object; make & add initial transitions.
		
		Parameters:
		
		- `statemachine`: the controlling `StateMachine` object.
		- `debug`: a boolean; produce verbose output if true.
	**/
	public function new(state_machine:Dynamic, ?debug:Dynamic):Void;
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
		Make and add transitions listed in `self.initial_transitions`.
	**/
	public function add_initial_transitions():Dynamic;
	/**
		Add a transition to the start of the transition list.
		
		Parameter `transition`: a ready-made transition 3-tuple.
		
		Exception: `DuplicateTransitionError`.
	**/
	public function add_transition(name:Dynamic, transition:Dynamic):Dynamic;
	/**
		Add a list of transitions to the start of the transition list.
		
		Parameters:
		
		- `names`: a list of transition names.
		- `transitions`: a mapping of names to transition tuples.
		
		Exceptions: `DuplicateTransitionError`, `UnknownTransitionError`.
	**/
	public function add_transitions(names:Dynamic, transitions:Dynamic):Dynamic;
	/**
		Handle beginning-of-file. Return unchanged `context`, empty result.
		
		Override in subclasses.
		
		Parameter `context`: application-defined storage.
	**/
	public function bof(context:Dynamic):Dynamic;
	/**
		Handle end-of-file. Return empty result.
		
		Override in subclasses.
		
		Parameter `context`: application-defined storage.
	**/
	public function eof(context:Dynamic):Dynamic;
	static public var initial_transitions : Dynamic;
	/**
		Make & return a transition tuple based on `name`.
		
		This is a convenience function to simplify transition creation.
		
		Parameters:
		
		- `name`: a string, the name of the transition pattern & method. This
		  `State` object must have a method called '`name`', and a dictionary
		  `self.patterns` containing a key '`name`'.
		- `next_state`: a string, the name of the next `State` object for this
		  transition. A value of ``None`` (or absent) implies no state change
		  (i.e., continue with the same state).
		
		Exceptions: `TransitionPatternNotFound`, `TransitionMethodNotFound`.
	**/
	public function make_transition(name:Dynamic, ?next_state:Dynamic):Dynamic;
	/**
		Return a list of transition names and a transition mapping.
		
		Parameter `name_list`: a list, where each entry is either a transition
		name string, or a 1- or 2-tuple (transition name, optional next state
		name).
	**/
	public function make_transitions(name_list:Dynamic):Dynamic;
	static public var nested_sm : Dynamic;
	static public var nested_sm_kwargs : Dynamic;
	/**
		Called when there is no match from `StateMachine.check_line()`.
		
		Return the same values returned by transition methods:
		
		- context: unchanged;
		- next state name: ``None``;
		- empty result list.
		
		Override in subclasses to catch this event.
	**/
	public function no_match(context:Dynamic, transitions:Dynamic):Dynamic;
	/**
		A "do nothing" transition method.
		
		Return unchanged `context` & `next_state`, empty result. Useful for
		simple state changes (actionless transitions).
	**/
	public function nop(match:Dynamic, context:Dynamic, next_state:Dynamic):Dynamic;
	static public var patterns : Dynamic;
	/**
		Remove a transition by `name`.
		
		Exception: `UnknownTransitionError`.
	**/
	public function remove_transition(name:Dynamic):Dynamic;
	/**
		Initialize this `State` before running the state machine; called from
		`self.state_machine.run()`.
	**/
	public function runtime_init():Dynamic;
	/**
		Remove circular references to objects no longer required.
	**/
	public function unlink():Dynamic;
}