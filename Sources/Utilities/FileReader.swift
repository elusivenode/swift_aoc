import Foundation

class FileReader {
    static func readContents(fromFile path: String) throws -> String {
        guard let contents = try? String(contentsOf: URL(fileURLWithPath: path)) else {
            throw FileReaderError.unableToReadFile
        }
        return contents
    }
}

enum FileReaderError: Error {
    case unableToReadFile
}