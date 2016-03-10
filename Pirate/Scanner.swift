#if os(OSX)
  import Darwin
#else
  import Glibc
#endif
import Swift

public class Scanner {

	//constants
	private let NEW_LINE: Character = "\n"
	private let EOF: Int32 = -1

	private let file: UnsafeMutablePointer<FILE>
	public var didEncounterEOF: Bool = false

	init(file: UnsafeMutablePointer<FILE>) {
		self.file = file
	}

	//reads a file until it encounters a delimiter, newline or EOF
	public func next(delimiter: Character) -> String {

		var returnedString = String()

		while(true) {

			let readValue: Int32 = fgetc(file)

			if(readValue == EOF) {
				self.didEncounterEOF = true
				return returnedString
			}

			let unsignedReadValue: UInt32 = UInt32(readValue)
			let scalar: UnicodeScalar = UnicodeScalar(unsignedReadValue)
			let char: Character = Character(scalar)

			if(char == NEW_LINE || char == delimiter) {
				return returnedString
			}

			returnedString.append(char)

		}

		return String()
	}
}
