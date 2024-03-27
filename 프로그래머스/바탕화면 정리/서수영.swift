import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var lux = wallpaper.count
    var luy = wallpaper[0].count
    var rdx = 0
    var rdy = 0
    
    //width
    for i in 0..<wallpaper[0].count {
        for line in wallpaper {
            let l = Array(line)
            if l[i] == "#" {
                if luy > i { luy = i }
            }
            if l[wallpaper[0].count-1-i] == "#" {
                if rdy < wallpaper[0].count-i { rdy = wallpaper[0].count-i}
            }
        }
    }
    
    //height
    for i in 0..<wallpaper.count {
        if wallpaper[i].contains("#") {
            if lux > i { lux = i }
            if rdx-1 < i { rdx = i+1 }
        }
    }
    
    return [lux, luy, rdx, rdy]
}
