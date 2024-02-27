func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var nowX = 0
    var nowY = 0

    let width = park[0].count
    let height = park.count

    let park = park.map{ Array($0) }
    let routes = routes.compactMap{$0.split(separator: " ")}

    for x in 0..<height {
        for y in 0..<width {
            if park[x][y] == "S" {
                nowX = x
                nowY = y
            }
        }
    }

    for route in routes {
        let max = Int(route[1])!

         switch route[0] {
             case "E":
                 guard 0..<width ~= (nowY+max) else {break}
                 for cmp in 1...max {
                     if park[nowX][nowY + cmp] == "X" {
                         nowY -= max
                         break
                     }
                 }
                 nowY += max
             case "W":
                 guard 0..<width ~= (nowY - max) else {break}
                 for cmp in 1...max {
                     if park[nowX][nowY - cmp] == "X" {
                         nowY += max
                         break
                     }
                 }
                 nowY -= max
             case "S":
                 guard 0..<height ~=  (nowX + max) else {break}
                 for cmp in 1...max {
                     if park[nowX + cmp][nowY] == "X" {
                         nowX -= max
                         break
                     }
                 }
                 nowX += max
             case "N":
                 guard 0..<width ~= (nowX - max) else {break}
                 for cmp in 1...max {
                     if park[nowX - cmp][nowY] == "X" {
                         nowX += max
                         break
                     }
                 }
                 nowX -= max
             default:
                 break
         }
        print(route, nowX, nowY)
    }

    return [nowX, nowY]
}
