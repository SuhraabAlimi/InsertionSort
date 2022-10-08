func readInput(unsorted: inout [String])
{
    while let line = readLine()
    {
        unsorted.append(line)
    }

}

func insertionSort(_ array: [String]) -> [String] {
    var arrayThing = array
    var sussy = 0
    var cgang = 0
//    print("Pass: 0, Swaps: 0/0, Array: \(arrayThing)")
    for x in 1..<arrayThing.count {
        var y = x
        let fakeArray = arrayThing[y]
        var bob = 0
        while y > 0 && fakeArray < arrayThing[y - 1] {
            arrayThing[y] = arrayThing[y - 1]
            y -= 1
            cgang += 1
            bob += 1
        }        
        arrayThing[y] = fakeArray
        sussy += 1
//        print("Pass: \(sussy), Swaps: \(bob)/\(cgang), Array: \(arrayThing)")
    }
    return arrayThing
}
var originaL = [""]
readInput(unsorted:&originaL)
originaL.remove(at: 0)
print(insertionSort(originaL))
