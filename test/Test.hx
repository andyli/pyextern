import utest.Runner;
import utest.ui.Report;
class Test {
    static function main():Void {
        utest.UTest.run([
            new TestPyHelpers(),
        ]);
    }
}
