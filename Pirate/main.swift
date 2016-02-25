
public func main() -> Void {
	let row = CoordinateRow()
	let c1 = Coordinate(x:1,y:1)
	let c2 = Coordinate(x:2,y:2)
	let c3 = Coordinate(x:3,y:3)
	let c4 = Coordinate(x:4,y:4)
	let c5 = Coordinate(x:5,y:5)
	row.addCoordinateToFront(c1)
	row.addCoordinateToFront(c2)
	row.addCoordinateToFront(c3)
	row.addCoordinateToFront(c4)
	row.addCoordinateToFront(c5)

	for var i = 0; i < row.numberOfElements; i+=1 {
		print(row.row[i])
	}
}

main()