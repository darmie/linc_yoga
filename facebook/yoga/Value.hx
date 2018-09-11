package facebook.yoga;

using facebook.yoga.Enums;

@:unreflective
@:structAccess
@:include('linc_yoga.h')
@:native("YGValue")
extern class Value {
	public function new() {}
	@:native('linc::yoga::setValue')
	public static function set(value:Float, unit:Unit):Value;
	@:native("YGValue::value") public var value:Float;
	@:native("YGValue::unit") public var unit:Unit;
}
