import UIKit

// 1. Создайте класс студент
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этого класса и заполните их данными.
// Положите их всех в массив (журнал).

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?

// 6. Сравните результаты после использования класса и структуры.

// TODO: - Напишите свое решение самостоятельно!!!

class Studant {
    var name: String
    var surname: String
    var birth: Int
    var averageScore: Double
    
    init(name: String, surname: String, birth: Int, averageScore: Double) {
        self.name = name
        self.surname = surname
        self.birth = birth
        self.averageScore = averageScore
    }
}
var ivan = Studant(name: "Ivan", surname: "Ivanov", birth: 1995, averageScore: 3.75)
var maria = Studant(name: "Maria", surname: "Marieva", birth: 1996, averageScore: 4.4)
var petr = Studant(name: "Petr", surname: "Petrov", birth: 1993, averageScore: 5.0)
var igor = Studant(name: "Igor", surname: "Igorev", birth: 1992, averageScore: 2.9)
var alex = Studant(name: "Alex", surname: "Alexov", birth: 1971, averageScore: 4.0)
var fedor = Studant(name: "Fedor", surname: "Ermoshin", birth: 1987, averageScore: 3.5)
var olga = Studant(name: "Olga", surname: "Gasan", birth: 1989, averageScore: 5.0)
var anton = Studant(name: "Anton", surname: "Shaporev", birth: 1992, averageScore: 4.0)

var classJournal: [Studant] = []
classJournal.append(ivan)
classJournal.append(maria)
classJournal.append(petr)
classJournal.append(igor)
classJournal.append(alex)
classJournal.append(fedor)
classJournal.append(olga)
classJournal.append(anton)

// массив задали
print("------------------")
func studentCount(studants:[Studant]) {
    for  (index,value) in studants.enumerated() {
        print ("# \(index + 1) - name:\(value.name), surname - \(value.surname), birth - \(value.birth), averagescore -\(value.averageScore)")
    }
}

studentCount(studants: classJournal)

// вывели списком
print("-----------------")

var sortedJournal  = classJournal.sorted(by: {$0.averageScore > $1.averageScore})
studentCount(studants: sortedJournal)
//отсортировали по среднему баллу
print("-----------------")
var sortedJournal2 = classJournal.sorted(by:{$0.surname == $1.surname ?  $0.name < $1.name: $0.surname < $1.surname})
studentCount(studants: sortedJournal2)
print("-------------------")
// отсортировали по фамилиям

var lastGroup = sortedJournal2
lastGroup[2].name = "Vasili"
lastGroup[0].averageScore = 2.8
lastGroup[1].surname = "Pupkin"

studentCount(studants: lastGroup)
