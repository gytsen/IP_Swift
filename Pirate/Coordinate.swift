public class Coordinate {

	public var x: Int
	public var y: Int

	init(x: Int, y:Int) {
		self.x = x
		self.y = y
	}

	init(coordinate: Coordinate) {
		self.x = coordinate.x
		self.y = coordinate.y
	}

	public func repr() -> String {
		return "\(self.x),\(self.y)"
	}

	public func adjustWithCoordinate(coordinate: Coordinate) -> Void {
		self.x += coordinate.x
		self.y += coordinate.y
	}

}