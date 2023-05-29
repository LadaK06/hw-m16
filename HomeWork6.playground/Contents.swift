import Cocoa

//Задания 1,2
var days = [ 1: "Понедельник", 2: "Вторник", 3: "Среда", 4: "Четверг", 5: "Пятница", 6: "Суббота", 7: "Воскресенье"]
for (key, value) in days {
    print(value, "-", key)
}


//Задание 3
var passwd = [ "Daniil": "D@niil0696hfgxghgjh", "Lada": "Lk080398", "Venera": "Vitochk@2021"]
passwd["Daniil"]


//Задание 4
enum CustomError: Error, LocalizedError {
    case invalidPassword
    case userNotFound
    case invalidUsername (Character)
    public var errorDescription: String? {
        switch self {
        case .invalidPassword:
            return "Неправильный пароль"
        case .userNotFound:
            return "Пользователь не найден"
        case let . invalidUsername (char):
            return "Ошибка в имени пользователя \(char)"
        }
    }
}


//Задание 5
var pass = ["Lada": "12345", "Alex": "0987", "Ilia":"4321"]
pass["Kirill"] = "23456"; pass ["Olya"] = "4535"
print(pass)
func validate(userName: String, password: String) throws {
    for value in userName {
        guard value.isLetter else {
            throw CustomError.invalidUsername (value) }};        guard pass.keys.contains(userName) else {
            throw CustomError.userNotFound
        }
        if pass[password] == userName {
            print("пароль введен верно")
        } else { throw CustomError.invalidPassword }
        try validate (userName: "Lada", password: "12345")
    }


//Задание 6
do {
 try validate(userName: "User1", password: "123")
    print ("Вход успешно осушествлен") } catch {
        print (error.localizedDescription)
        // второй способ
        try? validate(userName: "User1", password: "123")
    }
