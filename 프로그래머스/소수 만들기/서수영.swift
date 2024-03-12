import Foundation

func solution(_ nums:[Int]) -> Int {
    var result = 0
    
    for i in 0..<(nums.count-2) {
        for j in i+1..<(nums.count-1) {
            for k in j+1..<(nums.count) {
                if isPrime(nums[i] + nums[j] + nums[k]) {
                    result += 1
                }
            }
        }
    }

    return result
}

func isPrime(_ num: Int) -> Bool {
    for i in 2...num/2 {
        if num%i == 0 { 
            return false 
        }
    }
    return true
}
