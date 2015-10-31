/* This file is generated, do not edit! */
package matplotlib.backends.backend_tkagg;
@:pythonImport("matplotlib.backends.backend_tkagg", "NavigationToolbar2TkAgg") extern class NavigationToolbar2TkAgg {
	public function _Button(text:Dynamic, file:Dynamic, command:Dynamic, ?extension:Dynamic):Dynamic;
	/**
		Internal function.
	**/
	public function _Misc__winfo_getint(x:Dynamic):Dynamic;
	/**
		Internal function.
	**/
	public function _Misc__winfo_parseitem(t:Dynamic):Dynamic;
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
		Return the resource value for a KEY given as string.
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Construct a frame widget with the parent MASTER.
		
		Valid resource names: background, bd, bg, borderwidth, class,
		colormap, container, cursor, height, highlightbackground,
		highlightcolor, highlightthickness, relief, takefocus, visual, width.
	**/
	@:native("__init__")
	public function ___init__(canvas:Dynamic, window:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the window path name of this widget.
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
		Internal function.
	**/
	public function _bind(what:Dynamic, sequence:Dynamic, func:Dynamic, add:Dynamic, ?needcleanup:Dynamic):Dynamic;
	/**
		Internal function.
	**/
	public function _configure(cmd:Dynamic, cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Internal function.
	**/
	public function _displayof(displayof:Dynamic):Dynamic;
	public function _do(name:Dynamic, ?args:Dynamic):Dynamic;
	/**
		Internal function.
	**/
	public function _getboolean(string:Dynamic):Dynamic;
	/**
		Call Tcl configure command and return the result as a dict.
	**/
	public function _getconfigure(args:Dynamic):Dynamic;
	public function _getconfigure1(args:Dynamic):Dynamic;
	/**
		Internal function.
	**/
	public function _getdoubles(string:Dynamic):Dynamic;
	/**
		Internal function.
	**/
	public function _getints(string:Dynamic):Dynamic;
	/**
		Internal function.
	**/
	public function _grid_configure(command:Dynamic, index:Dynamic, cnf:Dynamic, kw:Dynamic):Dynamic;
	public function _gridconvvalue(value:Dynamic):Dynamic;
	/**
		This is where you actually build the GUI widgets (called by
		__init__).  The icons ``home.xpm``, ``back.xpm``, ``forward.xpm``,
		``hand.xpm``, ``zoom_to_rect.xpm`` and ``filesave.xpm`` are standard
		across backends (there are ppm versions in CVS also).
		
		You just need to set the callbacks
		
		home         : self.home
		back         : self.back
		forward      : self.forward
		hand         : self.pan
		zoom_to_rect : self.zoom
		filesave     : self.save_figure
		
		You only need to define the last one - the others are in the base
		class implementation.
	**/
	public function _init_toolbar():Dynamic;
	/**
		Return the Tkinter instance of a widget identified by
		its Tcl name NAME.
	**/
	public function _nametowidget(name:Dynamic):Dynamic;
	static public var _noarg_ : Dynamic;
	/**
		Internal function.
	**/
	public function _options(cnf:Dynamic, ?kw:Dynamic):Dynamic;
	/**
		Return a newly created Tcl function. If this
		function is called, the Python function FUNC will
		be executed. An optional function SUBST can
		be given which will be executed before FUNC.
	**/
	public function _register(func:Dynamic, ?subst:Dynamic, ?needcleanup:Dynamic):Dynamic;
	/**
		Internal function.
	**/
	public function _report_exception():Dynamic;
	/**
		Internal function.
	**/
	public function _root():Dynamic;
	public function _set_cursor(event:Dynamic):Dynamic;
	/**
		Internal function. Sets up information about children.
	**/
	public function _setup(master:Dynamic, cnf:Dynamic):Dynamic;
	static public var _subst_format : Dynamic;
	static public var _subst_format_str : Dynamic;
	/**
		Internal function.
	**/
	public function _substitute(args:Dynamic):Dynamic;
	public function _switch_off_zoom_mode(event:Dynamic):Dynamic;
	public function _switch_on_zoom_mode(event:Dynamic):Dynamic;
	static public var _tclCommands : Dynamic;
	/**
		Update the viewlim and position from the view and
		position stack for each axes
	**/
	public function _update_view():Dynamic;
	/**
		Internal function.
	**/
	public var _windowingsystem : Dynamic;
	/**
		Call function once after given time.
		
		MS specifies the time in milliseconds. FUNC gives the
		function which shall be called. Additional parameters
		are given as parameters to the function call.  Return
		identifier to cancel scheduling with after_cancel.
	**/
	public function after(ms:Dynamic, ?func:Dynamic, args:Dynamic):Dynamic;
	/**
		Cancel scheduling of function identified with ID.
		
		Identifier returned by after or after_idle must be
		given as first parameter.
	**/
	public function after_cancel(id:Dynamic):Dynamic;
	/**
		Call FUNC once if the Tcl main loop has no event to
		process.
		
		Return an identifier to cancel the scheduling with
		after_cancel.
	**/
	public function after_idle(func:Dynamic, args:Dynamic):Dynamic;
	/**
		The anchor value controls how to place the grid within the
		master when no row/column has any weight.
		
		The default anchor is nw.
	**/
	public function anchor(?anchor:Dynamic):Dynamic;
	/**
		move back up the view lim stack
	**/
	public function back(args:Dynamic):Dynamic;
	/**
		Return a tuple of integer coordinates for the bounding
		box of this widget controlled by the geometry manager grid.
		
		If COLUMN, ROW is given the bounding box applies from
		the cell with row and column 0 to the specified
		cell. If COL2 and ROW2 are given the bounding box
		starts at that cell.
		
		The returned integers specify the offset of the upper left
		corner in the master widget and the width and height.
	**/
	public function bbox(?column:Dynamic, ?row:Dynamic, ?col2:Dynamic, ?row2:Dynamic):Dynamic;
	/**
		Ring a display's bell.
	**/
	public function bell(?displayof:Dynamic):Dynamic;
	/**
		Bind to this widget at event SEQUENCE a call to function FUNC.
		
		SEQUENCE is a string of concatenated event
		patterns. An event pattern is of the form
		<MODIFIER-MODIFIER-TYPE-DETAIL> where MODIFIER is one
		of Control, Mod2, M2, Shift, Mod3, M3, Lock, Mod4, M4,
		Button1, B1, Mod5, M5 Button2, B2, Meta, M, Button3,
		B3, Alt, Button4, B4, Double, Button5, B5 Triple,
		Mod1, M1. TYPE is one of Activate, Enter, Map,
		ButtonPress, Button, Expose, Motion, ButtonRelease
		FocusIn, MouseWheel, Circulate, FocusOut, Property,
		Colormap, Gravity Reparent, Configure, KeyPress, Key,
		Unmap, Deactivate, KeyRelease Visibility, Destroy,
		Leave and DETAIL is the button number for ButtonPress,
		ButtonRelease and DETAIL is the Keysym for KeyPress and
		KeyRelease. Examples are
		<Control-Button-1> for pressing Control and mouse button 1 or
		<Alt-A> for pressing A and the Alt key (KeyPress can be omitted).
		An event pattern can also be a virtual event of the form
		<<AString>> where AString can be arbitrary. This
		event can be generated by event_generate.
		If events are concatenated they must appear shortly
		after each other.
		
		FUNC will be called if the event sequence occurs with an
		instance of Event as argument. If the return value of FUNC is
		"break" no further bound function is invoked.
		
		An additional boolean parameter ADD specifies whether FUNC will
		be called additionally to the other bound function or whether
		it will replace the previous function.
		
		Bind will return an identifier to allow deletion of the bound function with
		unbind without memory leak.
		
		If FUNC or SEQUENCE is omitted the bound function or list
		of bound events are returned.
	**/
	public function bind(?sequence:Dynamic, ?func:Dynamic, ?add:Dynamic):Dynamic;
	/**
		Bind to all widgets at an event SEQUENCE a call to function FUNC.
		An additional boolean parameter ADD specifies whether FUNC will
		be called additionally to the other bound function or whether
		it will replace the previous function. See bind for the return value.
	**/
	public function bind_all(?sequence:Dynamic, ?func:Dynamic, ?add:Dynamic):Dynamic;
	/**
		Bind to widgets with bindtag CLASSNAME at event
		SEQUENCE a call of function FUNC. An additional
		boolean parameter ADD specifies whether FUNC will be
		called additionally to the other bound function or
		whether it will replace the previous function. See bind for
		the return value.
	**/
	public function bind_class(className:Dynamic, ?sequence:Dynamic, ?func:Dynamic, ?add:Dynamic):Dynamic;
	/**
		Set or get the list of bindtags for this widget.
		
		With no argument return the list of all bindtags associated with
		this widget. With a list of strings as argument the bindtags are
		set to this list. The bindtags determine in which order events are
		processed (see bind).
	**/
	public function bindtags(?tagList:Dynamic):Dynamic;
	/**
		Return the resource value for a KEY given as string.
	**/
	public function cget(key:Dynamic):Dynamic;
	public function check():Dynamic;
	/**
		Append STRING to the Tk clipboard.
		
		A widget specified at the optional displayof keyword
		argument specifies the target display. The clipboard
		can be retrieved with selection_get.
	**/
	public function clipboard_append(string:Dynamic, kw:Dynamic):Dynamic;
	/**
		Clear the data in the Tk clipboard.
		
		A widget specified for the optional displayof keyword
		argument specifies the target display.
	**/
	public function clipboard_clear(kw:Dynamic):Dynamic;
	/**
		Retrieve data from the clipboard on window's display.
		
		The window keyword defaults to the root window of the Tkinter
		application.
		
		The type keyword specifies the form in which the data is
		to be returned and should be an atom name such as STRING
		or FILE_NAME.  Type defaults to STRING, except on X11, where the default
		is to try UTF8_STRING and fall back to STRING.
		
		This command is equivalent to:
		
		selection_get(CLIPBOARD)
	**/
	public function clipboard_get(kw:Dynamic):Dynamic;
	/**
		Configure column INDEX of a grid.
		
		Valid resources are minsize (minimum size of the column),
		weight (how much does additional space propagate to this column)
		and pad (how much space to let additionally).
	**/
	public function columnconfigure(index:Dynamic, ?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Configure resources of a widget.
		
		The values for resources are specified as keyword
		arguments. To get an overview about
		the allowed keyword arguments call the method keys.
	**/
	public function config(?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Configure resources of a widget.
		
		The values for resources are specified as keyword
		arguments. To get an overview about
		the allowed keyword arguments call the method keys.
	**/
	public function configure(?cnf:Dynamic, kw:Dynamic):Dynamic;
	public function configure_subplots():Dynamic;
	/**
		Internal function.
		
		Delete the Tcl command provided in NAME.
	**/
	public function deletecommand(name:Dynamic):Dynamic;
	/**
		Destroy this and all descendants widgets.
	**/
	public function destroy(args:Dynamic):Dynamic;
	/**
		the drag callback in pan/zoom mode
	**/
	public function drag_pan(event:Dynamic):Dynamic;
	/**
		the drag callback in zoom mode
	**/
	public function drag_zoom(event:Dynamic):Dynamic;
	/**
		Redraw the canvases, update the locators
	**/
	public function draw():Dynamic;
	/**
		Draw a rectangle rubberband to indicate zoom limits
	**/
	public function draw_rubberband(event:Dynamic, x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic):Dynamic;
	/**
		update drawing area only if idle
	**/
	public function dynamic_update():Dynamic;
	/**
		Bind a virtual event VIRTUAL (of the form <<Name>>)
		to an event SEQUENCE such that the virtual event is triggered
		whenever SEQUENCE occurs.
	**/
	public function event_add(virtual:Dynamic, sequences:Dynamic):Dynamic;
	/**
		Unbind a virtual event VIRTUAL from SEQUENCE.
	**/
	public function event_delete(virtual:Dynamic, sequences:Dynamic):Dynamic;
	/**
		Generate an event SEQUENCE. Additional
		keyword arguments specify parameter of the event
		(e.g. x, y, rootx, rooty).
	**/
	public function event_generate(sequence:Dynamic, kw:Dynamic):Dynamic;
	/**
		Return a list of all virtual events or the information
		about the SEQUENCE bound to the virtual event VIRTUAL.
	**/
	public function event_info(?virtual:Dynamic):Dynamic;
	/**
		Direct input focus to this widget.
		
		If the application currently does not have the focus
		this widget will get the focus if the application gets
		the focus through the window manager.
	**/
	public function focus():Dynamic;
	/**
		Return the widget which has currently the focus on the
		display where this widget is located.
		
		Return None if the application does not have the focus.
	**/
	public function focus_displayof():Dynamic;
	/**
		Direct input focus to this widget even if the
		application does not have the focus. Use with
		caution!
	**/
	public function focus_force():Dynamic;
	/**
		Return the widget which has currently the focus in the
		application.
		
		Use focus_displayof to allow working with several
		displays. Return None if application does not have
		the focus.
	**/
	public function focus_get():Dynamic;
	/**
		Return the widget which would have the focus if top level
		for this widget gets the focus from the window manager.
	**/
	public function focus_lastfor():Dynamic;
	/**
		Direct input focus to this widget.
		
		If the application currently does not have the focus
		this widget will get the focus if the application gets
		the focus through the window manager.
	**/
	public function focus_set():Dynamic;
	/**
		Unmap this widget and do not use it for the packing order.
	**/
	public function forget():Dynamic;
	public function form(?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Move forward in the view lim stack
	**/
	public function forward(args:Dynamic):Dynamic;
	/**
		Return a boolean value for Tcl boolean values true and false given as parameter.
	**/
	public function getboolean(s:Dynamic):Dynamic;
	public function getdouble(s:Dynamic):Dynamic;
	public function getint(s:Dynamic):Dynamic;
	/**
		Return value of Tcl variable NAME.
	**/
	public function getvar(?name:Dynamic):Dynamic;
	/**
		Return widget which has currently the grab in this application
		or None.
	**/
	public function grab_current():Dynamic;
	/**
		Release grab for this widget if currently set.
	**/
	public function grab_release():Dynamic;
	/**
		Set grab for this widget.
		
		A grab directs all events to this and descendant
		widgets in the application.
	**/
	public function grab_set():Dynamic;
	/**
		Set global grab for this widget.
		
		A global grab directs all events to this and
		descendant widgets on the display. Use with caution -
		other applications do not get events anymore.
	**/
	public function grab_set_global():Dynamic;
	/**
		Return None, "local" or "global" if this widget has
		no, a local or a global grab.
	**/
	public function grab_status():Dynamic;
	/**
		Position a widget in the parent widget in a grid. Use as options:
		column=number - use cell identified with given column (starting with 0)
		columnspan=number - this widget will span several columns
		in=master - use master to contain this widget
		in_=master - see 'in' option description
		ipadx=amount - add internal padding in x direction
		ipady=amount - add internal padding in y direction
		padx=amount - add padding in x direction
		pady=amount - add padding in y direction
		row=number - use cell identified with given row (starting with 0)
		rowspan=number - this widget will span several rows
		sticky=NSEW - if cell is larger on which sides will this
		              widget stick to the cell boundary
	**/
	public function grid(?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		The anchor value controls how to place the grid within the
		master when no row/column has any weight.
		
		The default anchor is nw.
	**/
	public function grid_anchor(?anchor:Dynamic):Dynamic;
	/**
		Return a tuple of integer coordinates for the bounding
		box of this widget controlled by the geometry manager grid.
		
		If COLUMN, ROW is given the bounding box applies from
		the cell with row and column 0 to the specified
		cell. If COL2 and ROW2 are given the bounding box
		starts at that cell.
		
		The returned integers specify the offset of the upper left
		corner in the master widget and the width and height.
	**/
	public function grid_bbox(?column:Dynamic, ?row:Dynamic, ?col2:Dynamic, ?row2:Dynamic):Dynamic;
	/**
		Configure column INDEX of a grid.
		
		Valid resources are minsize (minimum size of the column),
		weight (how much does additional space propagate to this column)
		and pad (how much space to let additionally).
	**/
	public function grid_columnconfigure(index:Dynamic, ?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Position a widget in the parent widget in a grid. Use as options:
		column=number - use cell identified with given column (starting with 0)
		columnspan=number - this widget will span several columns
		in=master - use master to contain this widget
		in_=master - see 'in' option description
		ipadx=amount - add internal padding in x direction
		ipady=amount - add internal padding in y direction
		padx=amount - add padding in x direction
		pady=amount - add padding in y direction
		row=number - use cell identified with given row (starting with 0)
		rowspan=number - this widget will span several rows
		sticky=NSEW - if cell is larger on which sides will this
		              widget stick to the cell boundary
	**/
	public function grid_configure(?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Unmap this widget.
	**/
	public function grid_forget():Dynamic;
	/**
		Return information about the options
		for positioning this widget in a grid.
	**/
	public function grid_info():Dynamic;
	/**
		Return a tuple of column and row which identify the cell
		at which the pixel at position X and Y inside the master
		widget is located.
	**/
	public function grid_location(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Set or get the status for propagation of geometry information.
		
		A boolean argument specifies whether the geometry information
		of the slaves will determine the size of this widget. If no argument
		is given, the current setting will be returned.
	**/
	public function grid_propagate(?flag:Dynamic):Dynamic;
	/**
		Unmap this widget but remember the grid options.
	**/
	public function grid_remove():Dynamic;
	/**
		Configure row INDEX of a grid.
		
		Valid resources are minsize (minimum size of the row),
		weight (how much does additional space propagate to this row)
		and pad (how much space to let additionally).
	**/
	public function grid_rowconfigure(index:Dynamic, ?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Return a tuple of the number of column and rows in the grid.
	**/
	public function grid_size():Dynamic;
	/**
		Return a list of all slaves of this widget
		in its packing order.
	**/
	public function grid_slaves(?row:Dynamic, ?column:Dynamic):Dynamic;
	/**
		Restore the original view
	**/
	public function home(args:Dynamic):Dynamic;
	/**
		Return a list of all existing image names.
	**/
	public function image_names():Dynamic;
	/**
		Return a list of all available image types (e.g. phote bitmap).
	**/
	public function image_types():Dynamic;
	/**
		Return information about the packing options
		for this widget.
	**/
	public function info():Dynamic;
	/**
		Return a list of all resource names of this widget.
	**/
	public function keys():Dynamic;
	/**
		Raise this widget in the stacking order.
	**/
	public function lift(?aboveThis:Dynamic):Dynamic;
	/**
		Return a tuple of column and row which identify the cell
		at which the pixel at position X and Y inside the master
		widget is located.
	**/
	public function location(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Lower this widget in the stacking order.
	**/
	public function lower(?belowThis:Dynamic):Dynamic;
	/**
		Call the mainloop of Tk.
	**/
	public function mainloop(?n:Dynamic):Dynamic;
	public function mouse_move(event:Dynamic):Dynamic;
	/**
		Return the Tkinter instance of a widget identified by
		its Tcl name NAME.
	**/
	public function nametowidget(name:Dynamic):Dynamic;
	/**
		Set a VALUE (second parameter) for an option
		PATTERN (first parameter).
		
		An optional third parameter gives the numeric priority
		(defaults to 80).
	**/
	public function option_add(pattern:Dynamic, value:Dynamic, ?priority:Dynamic):Dynamic;
	/**
		Clear the option database.
		
		It will be reloaded if option_add is called.
	**/
	public function option_clear():Dynamic;
	/**
		Return the value for an option NAME for this widget
		with CLASSNAME.
		
		Values with higher priority override lower values.
	**/
	public function option_get(name:Dynamic, className:Dynamic):Dynamic;
	/**
		Read file FILENAME into the option database.
		
		An optional second parameter gives the numeric
		priority.
	**/
	public function option_readfile(fileName:Dynamic, ?priority:Dynamic):Dynamic;
	/**
		Pack a widget in the parent widget. Use as options:
		after=widget - pack it after you have packed widget
		anchor=NSEW (or subset) - position widget according to
		                          given direction
		before=widget - pack it before you will pack widget
		expand=bool - expand widget if parent size grows
		fill=NONE or X or Y or BOTH - fill widget if widget grows
		in=master - use master to contain this widget
		in_=master - see 'in' option description
		ipadx=amount - add internal padding in x direction
		ipady=amount - add internal padding in y direction
		padx=amount - add padding in x direction
		pady=amount - add padding in y direction
		side=TOP or BOTTOM or LEFT or RIGHT -  where to add this widget.
	**/
	public function pack(?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Pack a widget in the parent widget. Use as options:
		after=widget - pack it after you have packed widget
		anchor=NSEW (or subset) - position widget according to
		                          given direction
		before=widget - pack it before you will pack widget
		expand=bool - expand widget if parent size grows
		fill=NONE or X or Y or BOTH - fill widget if widget grows
		in=master - use master to contain this widget
		in_=master - see 'in' option description
		ipadx=amount - add internal padding in x direction
		ipady=amount - add internal padding in y direction
		padx=amount - add padding in x direction
		pady=amount - add padding in y direction
		side=TOP or BOTTOM or LEFT or RIGHT -  where to add this widget.
	**/
	public function pack_configure(?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Unmap this widget and do not use it for the packing order.
	**/
	public function pack_forget():Dynamic;
	/**
		Return information about the packing options
		for this widget.
	**/
	public function pack_info():Dynamic;
	/**
		Set or get the status for propagation of geometry information.
		
		A boolean argument specifies whether the geometry information
		of the slaves will determine the size of this widget. If no argument
		is given the current setting will be returned.
	**/
	public function pack_propagate(?flag:Dynamic):Dynamic;
	/**
		Return a list of all slaves of this widget
		in its packing order.
	**/
	public function pack_slaves():Dynamic;
	/**
		Activate the pan/zoom tool. pan with left button, zoom with right
	**/
	public function pan(args:Dynamic):Dynamic;
	/**
		Place a widget in the parent widget. Use as options:
		in=master - master relative to which the widget is placed
		in_=master - see 'in' option description
		x=amount - locate anchor of this widget at position x of master
		y=amount - locate anchor of this widget at position y of master
		relx=amount - locate anchor of this widget between 0.0 and 1.0
		              relative to width of master (1.0 is right edge)
		rely=amount - locate anchor of this widget between 0.0 and 1.0
		              relative to height of master (1.0 is bottom edge)
		anchor=NSEW (or subset) - position anchor according to given direction
		width=amount - width of this widget in pixel
		height=amount - height of this widget in pixel
		relwidth=amount - width of this widget between 0.0 and 1.0
		                  relative to width of master (1.0 is the same width
		                  as the master)
		relheight=amount - height of this widget between 0.0 and 1.0
		                   relative to height of master (1.0 is the same
		                   height as the master)
		bordermode="inside" or "outside" - whether to take border width of
		                                   master widget into account
	**/
	public function place(?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Place a widget in the parent widget. Use as options:
		in=master - master relative to which the widget is placed
		in_=master - see 'in' option description
		x=amount - locate anchor of this widget at position x of master
		y=amount - locate anchor of this widget at position y of master
		relx=amount - locate anchor of this widget between 0.0 and 1.0
		              relative to width of master (1.0 is right edge)
		rely=amount - locate anchor of this widget between 0.0 and 1.0
		              relative to height of master (1.0 is bottom edge)
		anchor=NSEW (or subset) - position anchor according to given direction
		width=amount - width of this widget in pixel
		height=amount - height of this widget in pixel
		relwidth=amount - width of this widget between 0.0 and 1.0
		                  relative to width of master (1.0 is the same width
		                  as the master)
		relheight=amount - height of this widget between 0.0 and 1.0
		                   relative to height of master (1.0 is the same
		                   height as the master)
		bordermode="inside" or "outside" - whether to take border width of
		                                   master widget into account
	**/
	public function place_configure(?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Unmap this widget.
	**/
	public function place_forget():Dynamic;
	/**
		Return information about the placing options
		for this widget.
	**/
	public function place_info():Dynamic;
	/**
		Return a list of all slaves of this widget
		in its packing order.
	**/
	public function place_slaves():Dynamic;
	/**
		Called whenver a mouse button is pressed.
	**/
	public function press(event:Dynamic):Dynamic;
	/**
		the press mouse button in pan/zoom mode callback
	**/
	public function press_pan(event:Dynamic):Dynamic;
	/**
		the press mouse button in zoom to rect mode callback
	**/
	public function press_zoom(event:Dynamic):Dynamic;
	/**
		Set or get the status for propagation of geometry information.
		
		A boolean argument specifies whether the geometry information
		of the slaves will determine the size of this widget. If no argument
		is given the current setting will be returned.
	**/
	public function propagate(?flag:Dynamic):Dynamic;
	/**
		push the current view limits and position onto the stack
	**/
	public function push_current():Dynamic;
	/**
		Quit the Tcl interpreter. All widgets will be destroyed.
	**/
	public function quit():Dynamic;
	/**
		Return a newly created Tcl function. If this
		function is called, the Python function FUNC will
		be executed. An optional function SUBST can
		be given which will be executed before FUNC.
	**/
	public function register(func:Dynamic, ?subst:Dynamic, ?needcleanup:Dynamic):Dynamic;
	/**
		this will be called whenever mouse button is released
	**/
	public function release(event:Dynamic):Dynamic;
	/**
		the release mouse button callback in pan/zoom mode
	**/
	public function release_pan(event:Dynamic):Dynamic;
	/**
		the release mouse button callback in zoom to rect mode
	**/
	public function release_zoom(event:Dynamic):Dynamic;
	/**
		Remove the rubberband
	**/
	public function remove_rubberband():Dynamic;
	/**
		Configure row INDEX of a grid.
		
		Valid resources are minsize (minimum size of the row),
		weight (how much does additional space propagate to this row)
		and pad (how much space to let additionally).
	**/
	public function rowconfigure(index:Dynamic, ?cnf:Dynamic, kw:Dynamic):Dynamic;
	/**
		Save the current figure
	**/
	public function save_figure(args:Dynamic):Dynamic;
	/**
		Clear the current X selection.
	**/
	public function selection_clear(kw:Dynamic):Dynamic;
	/**
		Return the contents of the current X selection.
		
		A keyword parameter selection specifies the name of
		the selection and defaults to PRIMARY.  A keyword
		parameter displayof specifies a widget on the display
		to use. A keyword parameter type specifies the form of data to be
		fetched, defaulting to STRING except on X11, where UTF8_STRING is tried
		before STRING.
	**/
	public function selection_get(kw:Dynamic):Dynamic;
	/**
		Specify a function COMMAND to call if the X
		selection owned by this widget is queried by another
		application.
		
		This function must return the contents of the
		selection. The function will be called with the
		arguments OFFSET and LENGTH which allows the chunking
		of very long selections. The following keyword
		parameters can be provided:
		selection - name of the selection (default PRIMARY),
		type - type of the selection (e.g. STRING, FILE_NAME).
	**/
	public function selection_handle(command:Dynamic, kw:Dynamic):Dynamic;
	/**
		Become owner of X selection.
		
		A keyword parameter selection specifies the name of
		the selection (default PRIMARY).
	**/
	public function selection_own(kw:Dynamic):Dynamic;
	/**
		Return owner of X selection.
		
		The following keyword parameter can
		be provided:
		selection - name of the selection (default PRIMARY),
		type - type of the selection (e.g. STRING, FILE_NAME).
	**/
	public function selection_own_get(kw:Dynamic):Dynamic;
	/**
		Send Tcl command CMD to different interpreter INTERP to be executed.
	**/
	public function send(interp:Dynamic, cmd:Dynamic, args:Dynamic):Dynamic;
	public function set_active(ind:Dynamic):Dynamic;
	/**
		Set the current cursor to one of the :class:`Cursors`
		enums values
	**/
	public function set_cursor(cursor:Dynamic):Dynamic;
	/**
		Enable or disable back/forward button
	**/
	public function set_history_buttons():Dynamic;
	/**
		Display a message on toolbar or in status bar
	**/
	public function set_message(s:Dynamic):Dynamic;
	/**
		Set Tcl variable NAME to VALUE.
	**/
	public function setvar(?name:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Return a tuple of the number of column and rows in the grid.
	**/
	public function size():Dynamic;
	/**
		Return a list of all slaves of this widget
		in its packing order.
	**/
	public function slaves():Dynamic;
	/**
		Change the color scheme to light brown as used in Tk 3.6 and before.
	**/
	public function tk_bisque():Dynamic;
	/**
		The widget under mouse will get automatically focus. Can not
		be disabled easily.
	**/
	public function tk_focusFollowsMouse():Dynamic;
	/**
		Return the next widget in the focus order which follows
		widget which has currently the focus.
		
		The focus order first goes to the next child, then to
		the children of the child recursively and then to the
		next sibling which is higher in the stacking order.  A
		widget is omitted if it has the takefocus resource set
		to 0.
	**/
	public function tk_focusNext():Dynamic;
	/**
		Return previous widget in the focus order. See tk_focusNext for details.
	**/
	public function tk_focusPrev():Dynamic;
	/**
		Do not use. Needed in Tk 3.6 and earlier.
	**/
	public function tk_menuBar(args:Dynamic):Dynamic;
	/**
		Set a new color scheme for all widget elements.
		
		A single color as argument will cause that all colors of Tk
		widget elements are derived from this.
		Alternatively several keyword parameters and its associated
		colors can be given. The following keywords are valid:
		activeBackground, foreground, selectColor,
		activeForeground, highlightBackground, selectBackground,
		background, highlightColor, selectForeground,
		disabledForeground, insertBackground, troughColor.
	**/
	public function tk_setPalette(args:Dynamic, kw:Dynamic):Dynamic;
	/**
		Set Tcl internal variable, whether the look and feel
		should adhere to Motif.
		
		A parameter of 1 means adhere to Motif (e.g. no color
		change if mouse passes over slider).
		Returns the set value.
	**/
	public function tk_strictMotif(?boolean:Dynamic):Dynamic;
	/**
		Raise this widget in the stacking order.
	**/
	public function tkraise(?aboveThis:Dynamic):Dynamic;
	static public var toolitems : Dynamic;
	/**
		Unbind for this widget for event SEQUENCE  the
		function identified with FUNCID.
	**/
	public function unbind(sequence:Dynamic, ?funcid:Dynamic):Dynamic;
	/**
		Unbind for all widgets for event SEQUENCE all functions.
	**/
	public function unbind_all(sequence:Dynamic):Dynamic;
	/**
		Unbind for a all widgets with bindtag CLASSNAME for event SEQUENCE
		all functions.
	**/
	public function unbind_class(className:Dynamic, sequence:Dynamic):Dynamic;
	/**
		Reset the axes stack
	**/
	public function update():Dynamic;
	/**
		Enter event loop until all idle callbacks have been called. This
		will update the display of windows but not process events caused by
		the user.
	**/
	public function update_idletasks():Dynamic;
	/**
		Wait until the variable is modified.
		
		A parameter of type IntVar, StringVar, DoubleVar or
		BooleanVar must be given.
	**/
	public function wait_variable(?name:Dynamic):Dynamic;
	/**
		Wait until the visibility of a WIDGET changes
		(e.g. it appears).
		
		If no parameter is given self is used.
	**/
	public function wait_visibility(?window:Dynamic):Dynamic;
	/**
		Wait until a WIDGET is destroyed.
		
		If no parameter is given self is used.
	**/
	public function wait_window(?window:Dynamic):Dynamic;
	/**
		Wait until the variable is modified.
		
		A parameter of type IntVar, StringVar, DoubleVar or
		BooleanVar must be given.
	**/
	public function waitvar(?name:Dynamic):Dynamic;
	/**
		Return integer which represents atom NAME.
	**/
	public function winfo_atom(name:Dynamic, ?displayof:Dynamic):Dynamic;
	/**
		Return name of atom with identifier ID.
	**/
	public function winfo_atomname(id:Dynamic, ?displayof:Dynamic):Dynamic;
	/**
		Return number of cells in the colormap for this widget.
	**/
	public function winfo_cells():Dynamic;
	/**
		Return a list of all widgets which are children of this widget.
	**/
	public function winfo_children():Dynamic;
	/**
		Return window class name of this widget.
	**/
	public function winfo_class():Dynamic;
	/**
		Return true if at the last color request the colormap was full.
	**/
	public function winfo_colormapfull():Dynamic;
	/**
		Return the widget which is at the root coordinates ROOTX, ROOTY.
	**/
	public function winfo_containing(rootX:Dynamic, rootY:Dynamic, ?displayof:Dynamic):Dynamic;
	/**
		Return the number of bits per pixel.
	**/
	public function winfo_depth():Dynamic;
	/**
		Return true if this widget exists.
	**/
	public function winfo_exists():Dynamic;
	/**
		Return the number of pixels for the given distance NUMBER
		(e.g. "3c") as float.
	**/
	public function winfo_fpixels(number:Dynamic):Dynamic;
	/**
		Return geometry string for this widget in the form "widthxheight+X+Y".
	**/
	public function winfo_geometry():Dynamic;
	/**
		Return height of this widget.
	**/
	public function winfo_height():Dynamic;
	/**
		Return identifier ID for this widget.
	**/
	public function winfo_id():Dynamic;
	/**
		Return the name of all Tcl interpreters for this display.
	**/
	public function winfo_interps(?displayof:Dynamic):Dynamic;
	/**
		Return true if this widget is mapped.
	**/
	public function winfo_ismapped():Dynamic;
	/**
		Return the window mananger name for this widget.
	**/
	public function winfo_manager():Dynamic;
	/**
		Return the name of this widget.
	**/
	public function winfo_name():Dynamic;
	/**
		Return the name of the parent of this widget.
	**/
	public function winfo_parent():Dynamic;
	/**
		Return the pathname of the widget given by ID.
	**/
	public function winfo_pathname(id:Dynamic, ?displayof:Dynamic):Dynamic;
	/**
		Rounded integer value of winfo_fpixels.
	**/
	public function winfo_pixels(number:Dynamic):Dynamic;
	/**
		Return the x coordinate of the pointer on the root window.
	**/
	public function winfo_pointerx():Dynamic;
	/**
		Return a tuple of x and y coordinates of the pointer on the root window.
	**/
	public function winfo_pointerxy():Dynamic;
	/**
		Return the y coordinate of the pointer on the root window.
	**/
	public function winfo_pointery():Dynamic;
	/**
		Return requested height of this widget.
	**/
	public function winfo_reqheight():Dynamic;
	/**
		Return requested width of this widget.
	**/
	public function winfo_reqwidth():Dynamic;
	/**
		Return tuple of decimal values for red, green, blue for
		COLOR in this widget.
	**/
	public function winfo_rgb(color:Dynamic):Dynamic;
	/**
		Return x coordinate of upper left corner of this widget on the
		root window.
	**/
	public function winfo_rootx():Dynamic;
	/**
		Return y coordinate of upper left corner of this widget on the
		root window.
	**/
	public function winfo_rooty():Dynamic;
	/**
		Return the screen name of this widget.
	**/
	public function winfo_screen():Dynamic;
	/**
		Return the number of the cells in the colormap of the screen
		of this widget.
	**/
	public function winfo_screencells():Dynamic;
	/**
		Return the number of bits per pixel of the root window of the
		screen of this widget.
	**/
	public function winfo_screendepth():Dynamic;
	/**
		Return the number of pixels of the height of the screen of this widget
		in pixel.
	**/
	public function winfo_screenheight():Dynamic;
	/**
		Return the number of pixels of the height of the screen of
		this widget in mm.
	**/
	public function winfo_screenmmheight():Dynamic;
	/**
		Return the number of pixels of the width of the screen of
		this widget in mm.
	**/
	public function winfo_screenmmwidth():Dynamic;
	/**
		Return one of the strings directcolor, grayscale, pseudocolor,
		staticcolor, staticgray, or truecolor for the default
		colormodel of this screen.
	**/
	public function winfo_screenvisual():Dynamic;
	/**
		Return the number of pixels of the width of the screen of
		this widget in pixel.
	**/
	public function winfo_screenwidth():Dynamic;
	/**
		Return information of the X-Server of the screen of this widget in
		the form "XmajorRminor vendor vendorVersion".
	**/
	public function winfo_server():Dynamic;
	/**
		Return the toplevel widget of this widget.
	**/
	public function winfo_toplevel():Dynamic;
	/**
		Return true if the widget and all its higher ancestors are mapped.
	**/
	public function winfo_viewable():Dynamic;
	/**
		Return one of the strings directcolor, grayscale, pseudocolor,
		staticcolor, staticgray, or truecolor for the
		colormodel of this widget.
	**/
	public function winfo_visual():Dynamic;
	/**
		Return the X identifier for the visual for this widget.
	**/
	public function winfo_visualid():Dynamic;
	/**
		Return a list of all visuals available for the screen
		of this widget.
		
		Each item in the list consists of a visual name (see winfo_visual), a
		depth and if INCLUDEIDS=1 is given also the X identifier.
	**/
	public function winfo_visualsavailable(?includeids:Dynamic):Dynamic;
	/**
		Return the height of the virtual root window associated with this
		widget in pixels. If there is no virtual root window return the
		height of the screen.
	**/
	public function winfo_vrootheight():Dynamic;
	/**
		Return the width of the virtual root window associated with this
		widget in pixel. If there is no virtual root window return the
		width of the screen.
	**/
	public function winfo_vrootwidth():Dynamic;
	/**
		Return the x offset of the virtual root relative to the root
		window of the screen of this widget.
	**/
	public function winfo_vrootx():Dynamic;
	/**
		Return the y offset of the virtual root relative to the root
		window of the screen of this widget.
	**/
	public function winfo_vrooty():Dynamic;
	/**
		Return the width of this widget.
	**/
	public function winfo_width():Dynamic;
	/**
		Return the x coordinate of the upper left corner of this widget
		in the parent.
	**/
	public function winfo_x():Dynamic;
	/**
		Return the y coordinate of the upper left corner of this widget
		in the parent.
	**/
	public function winfo_y():Dynamic;
	/**
		Activate zoom to rect mode
	**/
	public function zoom(args:Dynamic):Dynamic;
}