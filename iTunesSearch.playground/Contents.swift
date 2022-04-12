import UIKit
import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true
 
let baseURL = URL(string: "https://itunes.apple.com/search?")

let query: [String: String] = [
    "term" : "The Strand",
    "media" : "music"
]

extension URL{
      
    func withQueries (queries: [String:String]) -> URL?{
        
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap
        { URLQueryItem(name: $0.0, value: $0.1)
    }
    return components?.url
}
}
 
let urlToSearchWith:URL = (baseURL?.withQueries(queries:query)!)!

URLSession.shared.dataTask(with: urlToSearchWith) {
    (data, response, error) in
    
    if let data = data,
       let string = String(data:data, encoding: .utf8){
        print(string)
        PlaygroundPage.current.finishExecution()
    }
}.resume()



//CONTENT SOURCE: https://www.youtube.com/watch?v=zzTSDn72b8E
