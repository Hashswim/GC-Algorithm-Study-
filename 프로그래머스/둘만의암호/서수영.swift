import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
                   "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    skip.forEach {
        alphabet.remove(at: alphabet.firstIndex(of: String($0))!)
    }

    var result = [String]()
    
    for chr in s {
        var i = alphabet.firstIndex(of: String(chr))!
        i = (i+index)%(26-skip.count)
            
        result.append(alphabet[i])
    }
    
    return result.joined()
}
