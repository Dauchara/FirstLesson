//
//  main.swift
//  WelcomeToSwift
//
//  Created by Leonid Nifantyev on 11.12.2020.
//

import Foundation


// Task 1 square
let A_value = 2
let B_value = 4
let C_value = 1

var discriminant = B_value * B_value - 4 * A_value * C_value

if(discriminant < 0) {
    print("Так как дискриминант меньше нуля, то уравнение не имеет действительных решений.")
}
else {
    print("Так как дискриминант больше нуля то, квадратное уравнение имеет два действительных корня:")
    
    let sqrtDiscriminant = sqrt(Double(discriminant))
    let X1_result = (Double(-B_value) - sqrtDiscriminant) / Double(A_value * A_value)
    let X2_result = (Double(-B_value) + sqrtDiscriminant) / Double(A_value * A_value)
    
    print ("D = ",discriminant, "\nx1 = ", X1_result, "\nx2 = ", X2_result)
}


// Task 2
let a_cathetus: Double = 5
let b_cathetus: Double = 4

let c_hypotenuse: Double = sqrt(a_cathetus * a_cathetus + b_cathetus * b_cathetus)
let perimeter: Double = c_hypotenuse + a_cathetus + b_cathetus
let S_area: Double = a_cathetus * b_cathetus / 2

print("S = ", S_area, "P = ", perimeter, "Гипотенуза = ", c_hypotenuse)


// Task 3
print("Введите сумму вклада:")
let depositInput = Double(readLine()!)
print("Введите годовой процент:")
let percentInput = Double(readLine()!)

if(depositInput != nil && percentInput != nil){
    var finalDeposit = Double(depositInput ?? 0.0);
    for _ in 1...5 {
        finalDeposit += (finalDeposit * (percentInput ?? 0.0) / 100)
    }

    print("Итоговое вознаграждение за 5 лет: \(finalDeposit)")

}
