
#if os(OSX)
  import Darwin
#else
  import Glibc
#endif

let tectonicShift: Coordinate = Coordinate(x:1, y:0)

public func main() -> Void {
	var shouldAddToFront = true
	let file: UnsafeMutablePointer<FILE> = fopen("pirateinput.txt", "r")
	let scanner: Scanner = Scanner(file:file)
	let finalCoordinateRow: CoordinateRow = CoordinateRow()

	while(!scanner.didEncounterEOF){
		let input: String = scanner.next("=")
		let row = convertStringToCoordinateRow(input)
		if(shouldAddToFront) {
			finalCoordinateRow.addCoordinateRowToFront(row)
			shouldAddToFront = false
		} else {
			finalCoordinateRow.addCoordinateRowToBack(row)
			shouldAddToFront = true
		}
	}
	printFinalOutput(finalCoordinateRow)

}

public func convertStringToCoordinateRow(row: String) -> CoordinateRow {
	let coordinateStringArray = row.characters.split { $0 == " " }.map(String.init)
	let newRow: CoordinateRow = CoordinateRow()
	for coordinate in coordinateStringArray {
		let newCoordinate: Coordinate = convertStringToCoordinate(coordinate)
		newRow.addCoordinateToBack(newCoordinate)
	}
	return newRow
}

public func convertStringToCoordinate(coordinate: String) -> Coordinate {
	let coordinateString = coordinate.characters.split { $0 == ","}.map(String.init)
	let x: Int? = Int(coordinateString[0])
	let y: Int? = Int(coordinateString[1])
	let newCoordinate = Coordinate(x:x!, y:y!)
	newCoordinate.adjustWithCoordinate(tectonicShift)
	return newCoordinate
}

public func printFinalOutput(coordinateRow: CoordinateRow) -> Void {
	print(coordinateRow.repr("\n"))
}

main()
