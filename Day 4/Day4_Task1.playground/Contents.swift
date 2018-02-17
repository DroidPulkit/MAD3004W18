// TODO : create class for person
//TASK


class addressPerson {
    var street = "43"
    var area = "North York"
    var postalCode = "M6MG24"
}

class person {
    var firstName = "Pulkit"
    var lastName = "Kumar"
    var age = 10
    var address = addressPerson()
    var totalAmount = 2000
}

var pulkit = person()

pulkit.firstName = "Pulkit"
pulkit.lastName = "Kumar"
pulkit.age = 20
pulkit.address.area = "Downtown"
pulkit.address.postalCode = "007"
pulkit.address.street = "Kings Street"
pulkit.totalAmount = 5000

print("Person firstName: ", pulkit.firstName)
print("Person lastName: ", pulkit.lastName)
print("Person age: ", pulkit.age)
print("Person address area: ", pulkit.address.area)
print("Person address postalCode: ", pulkit.address.postalCode)
print("Person address street: ", pulkit.address.street)
print("Person totalAmount : ", pulkit.totalAmount)
