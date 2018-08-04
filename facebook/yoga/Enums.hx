package facebook.yoga;

@:keep
@:unreflective
@:include('linc_yoga.h')
/**
 * Align describes align flex attribute
 */

@:native("YGAlign")
extern class YGAlign { }

abstract Align(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGAlign)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGAlign)({0}))", this);

	@:from(YGAlign)
	@:unreflective
	inline static public function fromNative(value:YGAlign) return new Align(untyped value);

	public static var Auto (default, never) = new Align(untyped __cpp__("YGAlignAuto"));
	public static var FlexStart (default, never) = new Align(untyped __cpp__("YGAlignFlexStart"));
	public static var Center (default, never) = new Align(untyped __cpp__("YGAlignCenter"));
	public static var FlexEnd (default, never) = new Align(untyped __cpp__("YGAlignFlexEnd"));
	public static var Stretch (default, never) = new Align(untyped __cpp__("YGAlignStretch"));
	public static var Baseline (default, never) = new Align(untyped __cpp__("YGAlignBaseline"));
	public static var SpaceBetween (default, never) = new Align(untyped __cpp__("YGAlignSpaceBetween"));
	public static var SpaceAround (default, never) = new Align(untyped __cpp__("YGAlignSpaceAround"));
}


@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGDimension")
extern class YGDimension { }
abstract Dimension(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGDimension)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGDimension)({0}))", this);

	@:from(YGDimension)
	@:unreflective
	inline static public function fromNative(value:YGDimension) return new Dimension(untyped value);

	public static var Width (default, never) = new Dimension(untyped __cpp__("YGDimensionWidth"));
	public static var Height (default, never) = new Dimension(untyped __cpp__("YGDimensionHeight"));
}


@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGDirection")
extern class YGDirection { }
/**
 * Direction represents right-to-left or left-to-right direction
 */
abstract Direction(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGDirection)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGDirection)({0}))", this);

	@:from(YGDirection)
	@:unreflective
	inline static public function fromNative(value:YGDirection) return new Direction(untyped value);

	public static var Inherit(default, never) = new Direction(untyped __cpp__("YGDirectionInherit"));
	public static var LTR(default, never) = new Direction(untyped __cpp__("YGDirectionLTR"));
	public static var RTL(default, never) = new Direction(untyped __cpp__("YGDirectionRTL"));
}


@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGDisplay")
extern class YGDisplay { }
/**
 * `display` property
 */
abstract  Display(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGDisplay)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGDisplay)({0}))", this);

	@:from(YGDisplay)
	@:unreflective
	inline static public function fromNative(value:YGDisplay) return new Display(untyped value);

	public static var Flex(default, never) = new Display(untyped __cpp__("YGDisplayFlex"));
	public static var None(default, never) = new Display(untyped __cpp__("YGDisplayNone"));
}


@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGEdge")
extern class YGEdge { }
abstract Edge(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGEdge)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGEdge)({0}))", this);

	@:from(YGEdge)
	@:unreflective
	inline static public function fromNative(value:YGEdge) return new Edge(untyped value);


	public static var Left(default, never) = new Edge(untyped __cpp__("YGEdgeLeft"));
	public static var Top(default, never) = new Edge(untyped __cpp__("YGEdgeTop"));
	public static var Right(default, never) = new Edge(untyped __cpp__("YGEdgeRight"));
	public static var Bottom(default, never) = new Edge(untyped __cpp__("YGEdgeBottom"));
	public static var Start(default, never) = new Edge(untyped __cpp__("YGEdgeStart"));
	public static var End(default, never) = new Edge(untyped __cpp__("YGEdgeEnd"));
	public static var Horizontal(default, never) = new Edge(untyped __cpp__("YGEdgeHorizontal"));
	public static var Vertical(default, never) = new Edge(untyped __cpp__("YGEdgeVertical"));
	public static var All(default, never) = new Edge(untyped __cpp__("YGEdgeAll"));
}


@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGExperimentalFeature")
extern class YGExperimentalFeature { }

abstract ExperimentalFeature(Int) from Int to Int{
	inline public function new(i:Int) { this = i; }

	@:to(YGExperimentalFeature)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGExperimentalFeature)({0}))", this);

	@:from(YGExperimentalFeature)
	@:unreflective
	inline static public function fromNative(value:YGExperimentalFeature) return new ExperimentalFeature(untyped value);

	public static var WebFlexBasis(default, never) = new ExperimentalFeature(untyped __cpp__("YGExperimentalFeature"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGFlexDirection")
extern class YGFlexDirection { }
abstract FlexDirection(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGFlexDirection)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGFlexDirection)({0}))", this);

	@:from(YGFlexDirection)
	@:unreflective
	inline static public function fromNative(value:YGFlexDirection) return new FlexDirection(untyped value);
	
	public static var Column(default, never) = new FlexDirection(untyped __cpp__("YGFlexDirectionColumn"));
	public static var ColumnReverse(default, never) = new FlexDirection(untyped __cpp__("YGFlexDirectionColumnReverse"));
	public static var Row(default, never) = new FlexDirection(untyped __cpp__("YGFlexDirectionRow"));
	public static var RowReverse(default, never) = new FlexDirection(untyped __cpp__("YGFlexDirectionRowReverse"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGJustify")
extern class YGJustify { }
abstract Justify(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGJustify)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGJustify)({0}))", this);

	@:from(YGJustify)
	@:unreflective
	inline static public function fromNative(value:YGFlexDirection) return new Justify(untyped value);

	public static var FlexStart(default, never) = new Justify(untyped __cpp__("YGJustifyFlexStart"));
	public static var FlexEnd(default, never) = new Justify(untyped __cpp__("YGJustifyFlexEnd"));
	public static var Center(default, never) = new Justify(untyped __cpp__("YGJustifyCenter"));
	public static var SpaceBetween(default, never) = new Justify(untyped __cpp__("YGJustifySpaceBetween"));
	public static var SpaceAround(default, never) = new Justify(untyped __cpp__("YGJustifySpaceAround"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGLogLevel")
extern class YGLogLevel { }
abstract LogLevel(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGLogLevel)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGLogLevel)({0}))", this);

	@:from(YGLogLevel)
	@:unreflective
	inline static public function fromNative(value:YGLogLevel) return new LogLevel(untyped value);

	public static var Error(default, never) = new LogLevel(untyped __cpp__("YGLogLevelError"));
	public static var Warn(default, never) = new LogLevel(untyped __cpp__("YGLogLevelWarn"));
	public static var Info(default, never) = new LogLevel(untyped __cpp__("YGLogLevelInfo"));
	public static var Debug(default, never) = new LogLevel(untyped __cpp__("YGLogLevelDebug"));
	public static var Verbose(default, never) = new LogLevel(untyped __cpp__("YGLogLevelVerbose"));
	public static var Fatal(default, never) = new LogLevel(untyped __cpp__("YGLogLevelFatal"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGMeasureMode")
extern class YGMeasureMode { }
abstract MeasureMode(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGMeasureMode)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGMeasureMode)({0}))", this);

	@:from(YGMeasureMode)
	@:unreflective
	inline static public function fromNative(value:YGMeasureMode) return new MeasureMode(untyped value);

	public static var Undefined(default, never) = new MeasureMode(untyped __cpp__("YGMeasureModeUndefined"));
	public static var Exactly(default, never) = new MeasureMode(untyped __cpp__("YGMeasureModeExactly"));
	public static var AtMost(default, never) = new MeasureMode(untyped __cpp__("YGMeasureModeAtMost"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGNodeType")
extern class YGNodeType { }
abstract NodeType(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGNodeType)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGNodeType)({0}))", this);

	@:from(YGNodeType)
	@:unreflective
	inline static public function fromNative(value:YGNodeType) return new NodeType(untyped value);

	public static var Default(default, never) = new NodeType(untyped __cpp__("YGNodeTypeDefault"));
	public static var Text(default, never) = new NodeType(untyped __cpp__("YGNodeTypeText"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGOverflow")
extern class YGOverflow { }
abstract Overflow(Int) from Int to Int {

	inline public function new(i:Int) { this = i; }

	@:to(YGOverflow)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGOverflow)({0}))", this);

	@:from(YGOverflow)
	@:unreflective
	inline static public function fromNative(value:YGOverflow) return new Overflow(untyped value);

	public static var Visible (default, never) = new Overflow(untyped __cpp__("YGOverflowVisible"));
	public static var Hidden (default, never) = new Overflow(untyped __cpp__("YGOverflowHidden"));
	public static var Scroll (default, never) = new Overflow(untyped __cpp__("YGOverflowScroll"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGPositionType")
extern class YGPositionType { }
abstract PositionType(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGPositionType)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGPositionType)({0}))", this);

	@:from(YGPositionType)
	@:unreflective
	inline static public function fromNative(value:YGPositionType) return new PositionType(untyped value);

	public static var Relative (default, never) = new PositionType(untyped __cpp__("YGPositionTypeRelative"));
	public static var Absolute (default, never) = new PositionType(untyped __cpp__("YGPositionTypeAbsolute"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGPrintOptions")
extern class YGPrintOptions { }
abstract PrintOptions(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGPrintOptions)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGPrintOptions)({0}))", this);

	@:from(YGPrintOptions)
	@:unreflective
	inline static public function fromNative(value:YGPrintOptions) return new PrintOptions(untyped value);

	public static var Layout (default, never) = new PrintOptions(untyped __cpp__("YGPrintOptionsLayout"));
	public static var Style (default, never) = new PrintOptions(untyped __cpp__("YGPrintOptionsStyle"));
	public static var Children (default, never) = new PrintOptions(untyped __cpp__("YGPrintOptionsChildren"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGUnit")
extern class YGUnit { }
abstract Unit(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGUnit)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGUnit)({0}))", this);

	@:from(YGUnit)
	@:unreflective
	inline static public function fromNative(value:YGUnit) return new Unit(untyped value);

	public static var Undefined (default, never) = new Unit(untyped __cpp__("YGUnitUndefined"));
	public static var Point (default, never) = new Unit(untyped __cpp__("YGUnitPoint"));
	public static var Percent (default, never) = new Unit(untyped __cpp__("YGUnitPercent"));
	public static var Auto (default, never) = new Unit(untyped __cpp__("YGUnitAuto"));
}

@:keep
@:unreflective
@:include('linc_yoga.h')

@:native("YGWrap")
extern class YGWrap { }
abstract Wrap(Int) from Int to Int {
	inline public function new(i:Int) { this = i; }

	@:to(YGWrap)
	@:unreflective
	inline public function toNative() return untyped __cpp__("((YGWrap)({0}))", this);

	@:from(YGWrap)
	@:unreflective
	inline static public function fromNative(value:YGWrap) return new Wrap(untyped value);

	public static var NoWrap (default, never) = new Wrap(untyped __cpp__("YGWrapNoWrap"));
	public static var Wrap (default, never) = new Wrap(untyped __cpp__("YGWrapWrap"));
	public static var WrapReverse (default, never) = new Wrap(untyped __cpp__("YGWrapWrapReverse"));
}




class Enums {
	// EdgeCount is count of edges
	public static var edgeCount = 9;

	public static var experimentalFeatureCount = 1;

	public static var measureModeCount = 3;

	public static var valueUndefined:Value = {value: Math.NaN, unit:Unit.Undefined};

	public static var valueAuto:Value = {value: Math.NaN, unit:Unit.Auto};

	// ValueZero defines a zero value
	public static var valueZero:Value = {value: 0, unit: Unit.Point};



	// AlignToString returns string version of Align enum
	public static inline function  alignToString(value:Align):String {
		return switch value {
			case Align.Auto: "auto";
			case Align.FlexStart: "flex-start";
			case Align.Center: "center";
			case Align.FlexEnd: "flex-end";
			case Align.Stretch: "stretch";
			case Align.Baseline: "baseline";
			case Align.SpaceBetween: "space-between";
			case Align.SpaceAround: "space-around";
			default: "unknown";
		}
	}	

	// DimensionToString returns string version of Dimension enum
	public static inline function dimensionToString(value:Dimension):String {
		return switch value {
			case Dimension.Width: "width";
			case Dimension.Height: "height";
			default: "unknown";
		}
	}

	// DirectionToString returns string version of Direction enum
	public static inline function directionToString(value:Direction):String {
		return switch value {
			case Direction.Inherit: "inherit";
			case Direction.LTR: "ltr";
			case Direction.RTL: "rtl";
			default: "unknown";
		}	
	}

	// DisplayToString returns string version of Display enum
	public static inline function displayToString(value:Display):String {
		return switch value {
			case Display.Flex: "flex";
			case Display.None: "none";
			default: "unknown";
		}	
	}	

	// EdgeToString returns string version of Edge enum
	public static inline function edgeToString(value:Edge):String {
		return switch value {
			case Edge.Left: "left";
			case Edge.Top: "top";
			case Edge.Right: "right";
			case Edge.Bottom: "bottom";
			case Edge.Start: "start";
			case Edge.End: "end";
			case Edge.Horizontal: "horizontal";
			case Edge.Vertical: "vertical";
			case Edge.All: "all";
			default: "unknown";
		}	
	}


	// ExperimentalFeatureToString returns string version of ExperimentalFeature enum
	public static inline function experimentalFeatureToString(value:ExperimentalFeature):String {
		return switch value {
			case ExperimentalFeature.WebFlexBasis: "web-flex-basis";
			default: "unknown";
		}
		
	}	

	// FlexDirectionToString returns string version of FlexDirection enum
	public static inline function flexDirectionToString(value:FlexDirection):String {
		return switch value {
			case FlexDirection.Column: "column";
			case FlexDirection.ColumnReverse: "column-reverse";
			case FlexDirection.Row: "row";
			case FlexDirection.RowReverse: "row-reverse";
			default: "unknown";
		}	
	}

	// JustifyToString returns string version of Justify enum
	public static inline function justifyToString(value:Justify):String {
		return switch value {
			case Justify.FlexStart: "flex-start";
			case Justify.Center: "center";
			case Justify.FlexEnd: "flex-end";
			case Justify.SpaceBetween: "space-between";
			case Justify.SpaceAround: "space-around";
			default: "unknown";
		}		
	}

	// LogLevelToString returns string version of LogLevel enum
	public static inline function logLevelToString(value:LogLevel):String {
		return switch value {
			case LogLevel.Error: "error";
			case LogLevel.Warn: "warn";
			case LogLevel.Info: "info";
			case LogLevel.Debug: "debug";
			case LogLevel.Verbose: "verbose";
			case LogLevel.Fatal: "fatal";
			default: "unknown";
		}	
	}

	// MeasureModeToString returns string version of MeasureMode enum
	public static inline function measureModeToString(value:MeasureMode):String {
		return switch value {
			case MeasureMode.Undefined: "undefined";
			case MeasureMode.Exactly: "exactly";
			case MeasureMode.AtMost: "at-most";
			default: "unknown";
		}	
	}


	// NodeTypeToString returns string version of NodeType enum
	public static inline function nodeTypeToString(value:NodeType):String {
		return switch value {
			case NodeType.Default: "default";
			case NodeType.Text: "text";
			default: "unknown";
		}
	}

	// OverflowToString returns string version of Overflow enum
	public static inline function overflowToString(value:Overflow):String {
		return switch value {
			case Overflow.Visible: "visible";
			case Overflow.Hidden: "hidden";
			case Overflow.Scroll: "scroll";
			default: "unknown";
		}
	}

	// PositionTypeToString returns string version of PositionType enum
	public static inline function positionTypeToString(value:PositionType):String {
		return switch value {
			case PositionType.Relative: "relative";
			case PositionType.Absolute: "absolute";
			default: "unknown";
		}
	}

	// PrintOptionsToString returns string version of PrintOptions enum
	public static inline function printOptionsToString(value:PrintOptions):String {
		return switch value {
			case PrintOptions.Layout: "layout";
			case PrintOptions.Style: "style";
			case PrintOptions.Children: "children";
			default: "unknown";
		}		
	}

	// UnitToString returns string version of Unit enum
	public static inline function unitToString(value:Unit):String {
		return switch value {
			case Unit.Undefined: "undefined";
			case Unit.Point: "point";
			case Unit.Percent: "percent";
			case Unit.Auto: "auto";
			default: "unknown";
		}	
	}

	// WrapToString returns string version of Wrap enum
	public static inline function wrapToString(value:Wrap):String {
		return switch value {
			case Wrap.NoWrap: "no-wrap";
			case Wrap.Wrap: "wrap";
			case Wrap.WrapReverse: "wrap-reverse";
			default: "unknown";
		}		
	}	
}
