package facebook.yoga;

using facebook.yoga.Enums;



@:unreflective
@:keep
@:include('linc_yoga.h')

//Layout
@:structAccess
@:native('::cpp::Struct<YGLayout>')
extern class Layout {
	@:native('position')
	public var position:Array<Float>;

	@:native('dimensions')
	public var dimensions:Array<Float>;

	@:native('margin')
	public var margin:Array<Float>;

	@:native('border')
	public var border:Array<Float>;

	@:native('padding')
	public var padding:Array<Float>;

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
	public var measuredDimensions:Array<Float>;

	@:native('cachedLayout')
	public var cachedLayout:CachedMeasurement;

	@:native('::linc::yoga::layout::NewLayout')
	public function init():Layout;
}