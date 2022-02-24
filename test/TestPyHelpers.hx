import utest.Assert;
using PyHelpers;

class MyClass {
    public var a:Int;
    public var b:Int;
    public function new(a:Int, b:Int):Void {
        this.a = a;
        this.b = b;
    }

    public function set(?a:Int, ?b:Int):Void {
        if (a != null)
            this.a = a;
        if (b != null)
            this.b = b;
    }

    static public function noop(a:Int = 0, b:Int = 0):{a:Int, b:Int} {
        return { a: a, b: b };
    }
}

class TestPyHelpers extends utest.Test {
    public function testConstructorSimple() {
        final o = (MyClass.new).call(123, 456);
        Assert.equals(123, o.a);
        Assert.equals(456, o.b);
    }

    public function testConstructorSupplyAll() {
        final o = (MyClass.new).call(a => 123, b => 456);
        Assert.equals(123, o.a);
        Assert.equals(456, o.b);
    }

    public function testInstanceMethodSimple() {
        final o = new MyClass(123, 456);
        o.set.call(1, 2);
        Assert.equals(1, o.a);
        Assert.equals(2, o.b);
    }

    public function testInstanceMethodSupplyNone() {
        final o = new MyClass(123, 456);
        o.set.call();
        Assert.equals(123, o.a);
        Assert.equals(456, o.b);
    }

    public function testInstanceMethodSupplyPartial1() {
        final o = new MyClass(123, 456);
        o.set.call(a => 1);
        Assert.equals(1, o.a);
        Assert.equals(456, o.b);
    }

    public function testInstanceMethodSupplyPartial2() {
        final o = new MyClass(123, 456);
        o.set.call(b => 1);
        Assert.equals(123, o.a);
        Assert.equals(1, o.b);
    }

    public function testInstanceMethodSupplyAll() {
        final o = new MyClass(123, 456);
        o.set.call(a => 1, b => 2);
        Assert.equals(1, o.a);
        Assert.equals(2, o.b);
    }

    public function testStaticMethodSimple() {
        final v = MyClass.noop.call(1, 2);
        Assert.equals(1, v.a);
        Assert.equals(2, v.b);
    }

    public function testStaticMethodPartial1() {
        final v = MyClass.noop.call(a => 1);
        Assert.equals(1, v.a);
        Assert.equals(0, v.b);
    }

    public function testStaticMethodPartial2() {
        final v = MyClass.noop.call(b => 2);
        Assert.equals(0, v.a);
        Assert.equals(2, v.b);
    }

    public function testStaticMethodSupplyAll() {
        final v = MyClass.noop.call(a => 3, b => 2);
        Assert.equals(3, v.a);
        Assert.equals(2, v.b);
    }

    public function testStaticMethodSupplyReversed() {
        final v = MyClass.noop.call(b => 2, a => 3);
        Assert.equals(3, v.a);
        Assert.equals(2, v.b);
    }
}