package facebook.yoga;

using facebook.yoga.Enums;

@:unreflective
@:include('linc_yoga.h')
@:native("YGValue")
@:structAccess
extern class Value {
	@:native('linc::yoga::setValue')
	public static function set(value:Float, unit:Unit):Value;
	@:native("value") public var value:Float;
	@:native("unit") public var unit:Unit;
}
