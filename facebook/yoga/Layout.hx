package facebook.yoga;

using facebook.yoga.Enums;

typedef Layout = {
	var position:Array<Float>;
	var dimensions:Array<Float>;
	var margin:Array<Float>;
	var border:Array<Float>;
	var padding:Array<Float>;
	var direction:Direction;

	var computedFlexBasisGeneration:Int;
	var computedFlexBasis:Float;
	var hadOverflow:Bool;

	// Instead of recomputing the entire layout every single time, we
	// cache some information to break early when nothing changed
	var generationCount:Int;
	var lastParentDirection:Direction;

	var nextCachedMeasurementsIndex:Int;
	var cachedMeasurements:Array<CachedMeasurement>;

	var measuredDimensions:Array<Float>;

	var cachedLayout:CachedMeasurement;
}