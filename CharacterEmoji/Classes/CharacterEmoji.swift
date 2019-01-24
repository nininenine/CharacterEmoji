

import UIKit

public class CharacterEmoji : NSObject{

    public enum ASC: Int {
        case a = 97 // 27
        case A = 65 // 27
        case number = 48 // 10
        case space = 32 // 33 包含數字0~9
    }

    // emoji 解密
    public func characterToString(str: String) -> String {
        var output = ""
        for s in str.unicodeScalars {
            var value = 0
            value = Int(s.value) - 128416
            if value > 122 {
                value -= 192
            }
            output += UnicodeScalar(value)!.description
        }
        
        return output
    }
    
    public func replacingString(message: String) -> String {
        var str = message
        str = str.replacingOccurrences(of: "\n", with: "")
        str = str.replacingOccurrences(of: " ", with: "")
        return str
    }

    public func extractStr(_ str:String, _ pattern:String) -> String
    {
        do{
            let regex = try NSRegularExpression(pattern: pattern , options: .caseInsensitive)
            
            let firstMatch = regex.firstMatch(in: str, options: .reportProgress, range: NSMakeRange(0, str.count))
            if firstMatch != nil {
                let resultRange = firstMatch?.range(at: 0)
                let result = (str as NSString).substring(with: resultRange!)
                //print(result)
                return result
            }
        }catch{
            print(error)
            return ""
        }
        return ""
        
    }
    
}
