import UIKit

var str = "142/89"
enum BPError : Error {
    case noValidSystolic
    case noValidDiastolic
}

struct BP {
    var systolic : Int
    var diastolic : Int

    init(bpString : String) throws {
        let separated = bpString.split(separator: "/")
        guard let systolic = Int(separated[0]) else { throw BPError.noValidSystolic }
        guard let diastolic = Int(separated[1]) else {throw BPError.noValidDiastolic}
        self.systolic = systolic
        self.diastolic = diastolic
    }
}

var newBP : BP
do {
    newBP = try BP(bpString: str)
    print(newBP.systolic)
    print(newBP.diastolic)
} catch {
    let error = error
    print (error.self)
}

var newValue = try? BP(bpString: "142/87")
var anotherValue = 15
