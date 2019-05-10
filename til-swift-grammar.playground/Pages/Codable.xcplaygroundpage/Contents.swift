import Foundation

/* JSON Encoding */
struct MovieInfo: Codable {
    var name: String?
    var year: String?
    var count: Int?
}

let ones = MovieInfo(name: "엑스맨", year: "2000", count: 3)

let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

do {
    let data = try encoder.encode(ones)
    print(String(data: data, encoding: .utf8)!)
} catch {
    print(error)
}

/* JSON Decoding*/
let json = """
{
  "name" : "아이언맨",
  "year" : "2008",
  "count" : 100
}
""".data(using: .utf8)!

let decoder = JSONDecoder()

do {
    let movieData = try decoder.decode(MovieInfo.self, from: json)
    print("\(movieData.name!), \(movieData.year!), \(movieData.count!)")
} catch {
    print(error)
}


/* codingkey */
struct HeroInfo: Codable {
    var name: String = ""
    var age: Int = 0
    var ability: String = ""
    
    enum CodingKeys: String, CodingKey {
        case name = "heroName"
        case age = "heroAge"
        case ability
    }
}


var ironMan = HeroInfo(name: "Tony", age: 40, ability: "nop")

let jsonEncoder = JSONEncoder()
jsonEncoder.outputFormatting = .prettyPrinted

do {
    let txt = try jsonEncoder.encode(ironMan)
    print(String(data: txt, encoding: .utf8)!)
} catch {
    print(error)
}



let json2 = """
    {
    "heroAge" : 40,
    "ability" : "nop",
    "heroName" : "Tony"
    }
""".data(using: .utf8)!


do {
    let heroData = try decoder.decode(HeroInfo.self, from: json2)
    print("\(heroData.name), \(heroData.age), \(heroData.ability)")
} catch {
    print(error)
}
