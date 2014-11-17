package js.bigjs;

@:native("Big")
class Big {
	public static var DP: Int;
	public static var RM: RoundingMode;

    @:overload(function(value: String): Void{})
	@:overload(function(value: Big): Void{})
	public function new(value: Float): Void;

    public function abs(): Big;

    @:overload(function(n: String): Float{})
	@:overload(function(n: Big): Float{})
	public function cmp(n: Float): Float;

    @:overload(function(n: String): Big{})
	@:overload(function(n: Big): Big{})
	public function div(n: Float): Big;

    @:overload(function(n: String): Bool{})
	@:overload(function(n: Big): Bool{})
	public function eq(n: Float): Bool;

    @:overload(function(n: String): Bool{})
	@:overload(function(n: Big): Bool{})
	public function gt(n: Float): Bool;

    @:overload(function(n: String): Bool{})
	@:overload(function(n: Big): Bool{})
	public function gte(n: Float): Bool;

    @:overload(function(n: String): Bool{})
	@:overload(function(n: Big): Bool{})
	public function lt(n: Float): Bool;

    @:overload(function(n: String): Bool{})
	@:overload(function(n: Big): Bool{})
	public function lte(n: Float): Bool;

    @:overload(function(n: String): Big{})
	@:overload(function(n: Big): Big{})
	public function minus(n: Float): Big;

    @:overload(function(n: String): Big{})
	@:overload(function(n: Big): Big{})
	public function mod(n: Float): Big;

    @:overload(function(n: String): Big{})
	@:overload(function(n: Big): Big{})
	public function plus(n: Float): Big;

    public function pow(exp: Float): Big;

    @:overload(function(dp: Float): Big{})
	@:overload(function(dp: Float, rm: RoundingMode): Big{})

    public function round(): Big;

    public function sqrt(): Big;

    @:overload(function(n: String): Big{})
	@:overload(function(n: Big): Big{})
	public function times(n: Float): Big;

    @:overload(function(dp: Float): String{})
	public function toExponential(): String;

    @:overload(function(dp: Float): String{})
	public function toFixed(): String;

    @:overload(function(sd: Float): String{})
	public function toPrecision(): String;

    public function toString(): String;

    public function valueOf(): String;

    public function toJSON(): String;

    public var c : Array<Float>;
	public var e : Float;
	public var s : Float;
}

@:enum abstract RoundingMode(Int) {
	public var RoundTowardsZero = 0;
	public var RoundTowardsNearestAwayFromZero = 1;
	public var RoundTowardsNearestTowardsEven = 2;
	public var RoundAwayFromZero = 3;
}