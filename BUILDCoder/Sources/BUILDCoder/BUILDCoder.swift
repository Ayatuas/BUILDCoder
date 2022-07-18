import Cocoa

public struct BUILDCoder {

    public init() {
        
    }
    
    public func readFileContent(_ fileUrl: String, _ type: BUILD.Type) {
        // make sure the file exists
        guard FileManager.default.fileExists(atPath: fileUrl) else {
            preconditionFailure("file expected at \(fileUrl) is missing")
        }
        // open the file for reading
        // note: user should be prompted the first time to allow reading from this location
        guard let filePointer:UnsafeMutablePointer<FILE> = fopen(fileUrl,"r") else {
            preconditionFailure("Could not open file at \(fileUrl)")
        }
        
        var sourceCodeContent: String
        var position: Int
        var end: Int
        var token: Character
        
        defer {
            fclose(filePointer)
        }
        
        switch type {
        case _ as idx.Type:
            print(".idx file")
        case _ as bazel.Type:
            print(".bazel file")
            break
        default:
            print("unknown type")
        }
        
        while true {
            guard let char = nextToken(filePointer) else {
                break
            }
        }
        
        
        
        
    }
    
    public func nextToken(_ filePointer: UnsafeMutablePointer<FILE>) -> Character?{
        let ch = getc(filePointer)
        if (ch > 0) {
            guard let token = UnicodeScalar(UInt32(ch)) else {
                print("error")
                return nil
            }
            return Character(token)
        }
        return nil
    }
    
}
