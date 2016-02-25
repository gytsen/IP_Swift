public class CoordinateRow {
	
	let MAX_NUMBER_OF_ELEMENTS: Int = 100

	var row: [Coordinate?]
	var numberOfElements: Int

	init(){
		row = [Coordinate?](count:MAX_NUMBER_OF_ELEMENTS, repeatedValue: nil)
		numberOfElements = 0
	}

	init(withRow:[Coordinate?], numberOfElements: Int){
		self.row = withRow
		self.numberOfElements = numberOfElements
	}	

	public func getElementAtIndex(Index: Int) -> Coordinate? {
		return row[Index]
	}

	public func addCoordinateToBack(coordinate: Coordinate?) -> Void {
		row[numberOfElements] = coordinate
		numberOfElements += 1
	}

	public func deleteLastElementOfRow() -> Void {
		row[numberOfElements] = nil
		numberOfElements -= 1
	}

	public func addCoordinateToFront(coordinate: Coordinate?) -> Void {
		for var i = numberOfElements; i > 0; i-=1 {
			row[i] = row[i-1]
		}
		row[0] = coordinate
		numberOfElements+=1
	}

	public func addCoordinateRowToBack(coordinateRow: CoordinateRow) -> Void {
		for var i = 0; i < coordinateRow.numberOfElements; i+=1 {
			let coordinateToAdd: Coordinate? = coordinateRow.getElementAtIndex(i)
			addCoordinateToBack(coordinateToAdd)
		}
	}

	public func addCoordinateRowToFront(coordinateRow: CoordinateRow) -> Void {
		for var i = coordinateRow.numberOfElements - 1; i > 0; i-=1 {
			let coordinateToAdd: Coordinate? = coordinateRow.getElementAtIndex(i)
			addCoordinateToFront(coordinateToAdd)
		}
	}


}