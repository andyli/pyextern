import haxe.macro.*;

class Test {
    #if macro
    static function importPackages() {
        final packages = switch(Sys.getEnv("GENLIBS")) {
            case null:
                throw "env var GENLIBS not defined";
            case libs:
                [for (p in libs.split(",")) p.split(".").map(pyextern.Utils.lowerCaseFirstLetter).join(".")];
        };
        final classPath = switch(Sys.getEnv("CLASSPATH")) {
            case null:
                throw "env var CLASSPATH not defined";
            case v:
                v;
        };
        Compiler.addClassPath(classPath);
        for (p in packages) {
            Sys.print('Trying to include $p... ');
            Compiler.include(p, true, null, null, true);
            Sys.println('ok');
        }
    }
    #end
    static function main():Void {}
}