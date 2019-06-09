package facebook.yoga;

using facebook.yoga.Enums;
import facebook.yoga.StdArray.StdArrayFloat2;
import facebook.yoga.StdArray.StdArrayFloat4;
import facebook.yoga.StdArray.StdArrayFloat6;

@:include('linc_yoga.h')
@:structAccess
// Layout
@:native('::YGLayout')
extern class Layout {
	@:native('position')
	public var position:StdArrayFloat4;
	@:native('dimensions')
	public var dimensions:StdArrayFloat2;
	@:native('margin')
	public var margin:StdArrayFloat6;
	@:native('border')
	public var border:StdArrayFloat6;
	@:native('padding')
	public var padding:StdArrayFloat6;
	@:native('direction')
	public var direction:Direction;
	@:native('computedFlexBasisGeneration')
	public var computedFlexBasisGeneration:Int;
	@:native('computedFlexBasis')
	public var computedFlexBasis:Float;
	@:native('hadOverFlow')
	public var hadOverflow:Bool;
	// Instead of recomputing the entire layout every single time, we
	// cache some information to break early when nothing changed
	@:native('generationCount')
	public var generationCount:Int;
	@:native('lastParentDirection')
	public var lastParentDirection:Direction;
	@:native('nextCachedMeasurementsIndex')
	public var nextCachedMeasurementsIndex:Int;
	@:native('cachedMeasurements')
	public var cachedMeasurements:Array<CachedMeasurement>;
	@:native('measuredDimensions')
	public var measuredDimensions:StdArrayFloat2;
	@:native('cachedLayout')
	public var cachedLayout:CachedMeasurement;
	@:native('::linc::yoga::NewLayout')
	static function init():Layout;
}
