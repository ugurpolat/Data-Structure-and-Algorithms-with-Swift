let arraySizes = [10,100,1000,10000,100000]

for size in arraySizes {
    let array = Array<Int>(repeating: 0, count: size)
    
    let execTime = BenchTimer.measureBlock {
        _ = array.startsWithZero()
    }
    
    print(String(format: "Size %d -> %@", array.count, execTime.formattedTime))
}
