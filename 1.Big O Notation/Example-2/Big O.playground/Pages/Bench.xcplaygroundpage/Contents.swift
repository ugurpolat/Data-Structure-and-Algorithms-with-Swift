var numbers = Array(0..<1000)
let sortTime = BenchTimer.measureBlock{
    numbers.sort()
}

print("Sorting took \(sortTime.formattedTime)")
