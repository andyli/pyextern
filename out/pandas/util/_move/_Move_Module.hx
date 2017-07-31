/* This file is generated, do not edit! */
package pandas.util._move;
@:pythonImport("pandas.util._move") extern class _Move_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Moves a bytes object that is about to be destroyed into a mutable buffer
		without copying the data.
		
		Parameters
		----------
		bytes_rvalue : bytes with 1 refcount.
		    The bytes object that you want to move into a mutable buffer. This
		    cannot be a named object. It must only have a single reference.
		
		Returns
		-------
		buf : stolenbuf
		    An object that supports the buffer protocol which can give a mutable
		    view of the data that was previously owned by ``bytes_rvalue``.
		
		Raises
		------
		BadMove
		    Raised when a move is attempted on an object with more than one
		    reference.
		
		Notes
		-----
		If you want to use this function you are probably wrong.
		
		Warning: Do not call this function through *unpacking. This can
		potentially trick the reference checks which may allow you to get a
		mutable reference to a shared string!
	**/
	static public function move_into_mutable_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
}