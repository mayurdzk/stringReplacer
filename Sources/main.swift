import Cocoa

//This is an arbitrary lower and upper value. We assume extra values on both upper, and lower bounds to make sure no coordinate is missed out.
let lowerLongitudeValue = 60
let upperLogintudeValue = 100

//Read the data of the coordinates.txt file
//coordinates.txt should be present in the root directory of the current project (ie. alongside the Package.swift file) 
if let data = NSData(contentsOfFile: "coordinates.txt") {
    
    //Format the data into a string
    if let string = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue) as? String{
        
        //Start formatting:
        //1. Replace all instances of ',0' with '}</string>'
        var formattedCoordinates = string.replacingOccurrences(of: ",0", with: "}</string>")
        
        //2. Replace all instances of 'n.' with '<string>{n.' where n is a number between lowerLongitudeValue and upperLogintudeValue
        for eachLongitudeValue in lowerLongitudeValue...upperLogintudeValue{
            formattedCoordinates = formattedCoordinates.replacingOccurrences(of: "\(eachLongitudeValue).", with: "<string>{\(eachLongitudeValue).")
        }
        print(formattedCoordinates)
    }
    else{
        fatalError("Couldn't parse data as string")
    }
}
else{
    fatalError("No data in the file")
}
