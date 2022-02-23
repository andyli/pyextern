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
}

class TestPyHelpers extends utest.Test {
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
}