/* This file is generated, do not edit! */
package tensorflow.tools.docs.doc_controls;
@:pythonImport("tensorflow.tools.docs.doc_controls") extern class Doc_controls_Module {
	static public var _DO_NOT_DOC : Dynamic;
	static public var _DO_NOT_DOC_INHERITABLE : Dynamic;
	static public var _FOR_SUBCLASS_IMPLEMENTERS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		A decorator: Do not generate docs for this method.
		
		This version of the decorator is "inherited" by subclasses. No docs will be
		generated for the decorated method in any subclass. Even if the sub-class
		overrides the method.
		
		For example, to ensure that `method1` is **never documented** use this
		decorator on the base-class:
		
		```
		class Parent(object):
		  @do_not_doc_inheritable
		  def method1(self):
		    pass
		  def method2(self):
		    pass
		
		class Child(Parent):
		  def method1(self):
		    pass
		  def method2(self):
		    pass
		```
		This will produce the following docs:
		
		```
		/Parent.md
		  # method2
		/Child.md
		  # method2
		```
		
		When generating docs for a class's arributes, the `__mro__` is searched and
		the attribute will be skipped if this decorator is detected on the attribute
		on any class in the `__mro__`.
		
		Note: This is implemented by adding a hidden attribute on the object, so it
		cannot be used on objects which do not allow new attributes to be added. So
		this decorator must go *below* `@property`, `@classmethod`,
		or `@staticmethod`:
		
		```
		class Example(object):
		  @property
		  @do_not_doc_inheritable
		  def x(self):
		    return self._x
		```
		
		Args:
		  obj: The class-attribute to hide from the generated docs.
		
		Returns:
		  obj
	**/
	static public function do_not_doc_inheritable(obj:Dynamic):Dynamic;
	/**
		A decorator: Do not generate docs for this object.
		
		For example the following classes:
		
		```
		class Parent(object):
		  def method1(self):
		    pass
		  def method2(self):
		    pass
		
		class Child(Parent):
		  def method1(self):
		    pass
		  def method2(self):
		    pass
		```
		
		Produce the following api_docs:
		
		```
		/Parent.md
		  # method1
		  # method2
		/Child.md
		  # method1
		  # method2
		```
		
		This decorator allows you to skip classes or methods:
		
		```
		@do_not_generate_docs
		class Parent(object):
		  def method1(self):
		    pass
		  def method2(self):
		    pass
		
		class Child(Parent):
		  @do_not_generate_docs
		  def method1(self):
		    pass
		  def method2(self):
		    pass
		```
		
		This will only produce the following docs:
		
		```
		/Child.md
		  # method2
		```
		
		Note: This is implemented by adding a hidden attribute on the object, so it
		cannot be used on objects which do not allow new attributes to be added. So
		this decorator must go *below* `@property`, `@classmethod`,
		or `@staticmethod`:
		
		```
		class Example(object):
		  @property
		  @do_not_generate_docs
		  def x(self):
		    return self._x
		```
		
		Args:
		  obj: The object to hide from the generated docs.
		
		Returns:
		  obj
	**/
	static public function do_not_generate_docs(obj:Dynamic):Dynamic;
	/**
		A decorator: Only generate docs for this method in the defining class.
		
		Also group this method's docs with and `@abstractmethod` in the class's docs.
		
		No docs will generated for this class attribute in sub-classes.
		
		The canonical use case for this is `tf.keras.layers.Layer.call`: It's a
		public method, essential for anyone implementing a subclass, but it should
		never be called directly.
		
		Works on method, or other class-attributes.
		
		When generating docs for a class's arributes, the `__mro__` is searched and
		the attribute will be skipped if this decorator is detected on the attribute
		on any **parent** class in the `__mro__`.
		
		For example:
		
		```
		class Parent(object):
		  @for_subclass_implementers
		  def method1(self):
		    pass
		  def method2(self):
		    pass
		
		class Child1(Parent):
		  def method1(self):
		    pass
		  def method2(self):
		    pass
		
		class Child2(Parent):
		  def method1(self):
		    pass
		  def method2(self):
		    pass
		```
		
		This will produce the following docs:
		
		```
		/Parent.md
		  # method1
		  # method2
		/Child1.md
		  # method2
		/Child2.md
		  # method2
		```
		
		Note: This is implemented by adding a hidden attribute on the object, so it
		cannot be used on objects which do not allow new attributes to be added. So
		this decorator must go *below* `@property`, `@classmethod`,
		or `@staticmethod`:
		
		```
		class Example(object):
		  @property
		  @for_subclass_implementers
		  def x(self):
		    return self._x
		```
		
		Args:
		  obj: The class-attribute to hide from the generated docs.
		
		Returns:
		  obj
	**/
	static public function for_subclass_implementers(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns true if docs generation should be skipped for this object.
		
		checks for the `do_not_generate_docs` or `do_not_doc_inheritable` decorators.
		
		Args:
		  obj: The object to document, or skip.
		
		Returns:
		  True if the object should be skipped
	**/
	static public function should_skip(obj:Dynamic):Dynamic;
	/**
		Returns true if docs should be skipped for this class attribute.
		
		Args:
		  cls: The class the attribute belongs to.
		  name: The name of the attribute.
		
		Returns:
		  True if the attribute should be skipped.
	**/
	static public function should_skip_class_attr(cls:Dynamic, name:Dynamic):Dynamic;
}