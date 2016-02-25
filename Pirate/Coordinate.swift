public class Coordinate {

	public var x: Int
	public var y: Int

	init(x: Int, y:Int) {
		self.x = x
		self.y = y
	}

	public func AdjustWithCoordinate(coordinate: Coordinate) -> Void {
		self.x += coordinate.x
		self.y += coordinate.y
	}

}