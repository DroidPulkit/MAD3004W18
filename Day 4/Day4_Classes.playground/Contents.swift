//Classes & Structures
//What is difference bw classes and structures
/*
 “Classes have additional capabilities that structures do not:
 
 Inheritance enables one class to inherit the characteristics of another.
 Type casting enables you to check and interpret the type of a class instance at runtime.
 Deinitializers enable an instance of a class to free up any resources it has assigned.
 Reference counting allows more than one reference to a class instance.”
 
 Excerpt From: Apple Inc. “The Swift Programming Language (Swift 4.0.3).” iBooks. https://itunes.apple.com/ca/book/the-swift-programming-language-swift-4-0-3/id881256329?mt=11
 
 */

//declaring a structures
struct project{
    var title = ""
    var hours = 0
    
    func display() {
        print("Project Title : ", title)
        print("Total work hours required : ", hours)
    }
}

var LMSProject = project(title: "Moodle", hours : 200)
print(LMSProject)
LMSProject.display()

LMSProject.hours = 300
LMSProject.display()

//Class declaration
class Manager {
    var name : String = ""
    var productOwner : Bool = true
    var currentProjects = project()
}

let mgrCanada = Manager()
mgrCanada.name = "PK"
mgrCanada.productOwner = true
mgrCanada.currentProjects = project(title: "Sales Reporting", hours: 20)

print("mgrCanada name : ", mgrCanada.name)
print("mgrCanada owner: ", mgrCanada.productOwner)
print("mgrCanada project title: ", mgrCanada.currentProjects.title)
print("mgrCanada project hours: ", mgrCanada.currentProjects.hours)

mgrCanada.name = "ABC"
mgrCanada.productOwner = false
mgrCanada.currentProjects.hours = 40

print("mgrCanada name : ", mgrCanada.name)
print("mgrCanada owner: ", mgrCanada.productOwner)
print("mgrCanada project title: ", mgrCanada.currentProjects.title)
print("mgrCanada project hours: ", mgrCanada.currentProjects.hours)


struct address {
    var steet = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var lambton = address()
print("Lambton : ", lambton)

var cestar = lambton
//let cestor = lambton // raise error when change the parameter
print("Cestar : ", cestar)
cestar.steet = "271 Yorkland Blvd"
cestar.postalCode = "M1H3Y3"
print("Cestar : ", cestar)

//In struct the values are copied
//and this is called value-type
print("lambton : ", lambton)

//In classes it is called reference-type
//So all the values changed in 2nd instance of the class
// the 1st instance is also changed for the example below
// where we are creating 2nd instance from 1st instance.

print("Classes started...................")
class Institute {
    var steet = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var myLambton = Institute()
print("myLambton street: ", myLambton.steet)
print("myLambton city: ", myLambton.city)
print("myLambton postal code: ", myLambton.postalCode)

var myCestar = myLambton
print("myCestar street: ", myCestar.steet)
print("myCestar city: ", myCestar.city)
print("myCestar postal code: ", myCestar.postalCode)

myCestar.steet = "271 Yorkland Blvd"
myCestar.postalCode = "M1H3Y3"
print("Cestar street: ", myCestar.steet)
print("Cestar postal code: ", myCestar.postalCode)

print("myLambton street : ", myLambton.steet)
print("myLambton postalCode: ", myLambton.postalCode)

if myLambton === myCestar {
    print("lambton and cestar are same")
} else {
    print("lambton and cestar are NOT same")
}

var myCollege = Institute()
print("myCollege street: ", myCollege.steet)
print("myCollege city: ", myCollege.city)
print("myCollege postal code: ", myCollege.postalCode)

if myCollege === myCestar {
    print("lambton and cestar are same")
} else {
    print("lambton and cestar are NOT same")
}



