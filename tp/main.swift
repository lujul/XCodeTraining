//
//  main.swift
//  tp
//
//  Created by Maxime Britto on 29/09/2016.
//  Copyright © 2016 mbritto. All rights reserved.
//

import Foundation

//Déclarez vos fonctions en dessous de cette ligne
func exercice1() {
    print("Entrez votre prénom :")
    let valeurSaisie = readText()
    print("Bonjour \(valeurSaisie) !")
}

func exercice2()  {
    let value1:Int,value2:Int,value3:Int
    print("Entrez valeur1 :")
    value1 = readInt()
    print("Entrez valeur2 :")
    value2 = readInt()
    print("Entrez valeur3 :")
    value3 = readInt()
    let result:Double
    result = Double(value1+value2+value3)/3.0
    print("La valeur moyenne est \(result) !")
    
}

func exercice4(){
    let PI:Double = 3.14159265
    print("Entrer le rayon du cercle")
    let rayon:Double = readDouble()
    let result:Double = PI*rayon*rayon
    print("l aire : \(result)")
}

func exercice5(){
    print("Entier Natuel >1 ?")
    let N:Int = readInt()
    var result:Int = 1
    for chiffre in 2...N {
        result = result*chiffre
    }
    print("le resultat: \(result)")
}

func exercice5Bis(){
    var n:Int
    repeat {  //on garantie un premier passage / si y a un probleme je recommence
        print("entre valeur")
        n = readInt()
    } while n < 0
    var factorielle:Int = 1
    if n > 0 {
        for i in 1...n {
            factorielle = factorielle*i
        }
    }
    print(factorielle)
    
}

func exercice6(){
    print("Entrer nombre notes")
    let NUM:Int = readInt()
    var result:Double = 0
    var newNote:Double
    for _ in 1...NUM{
        print("Entrer note")
        newNote = readDouble()
        result=result + newNote
    }
    result = result/Double(NUM)
    print("le resultat: \(result)")
    
}

func exercice7(){
    
    let nbMystere:Int = generateRandomNumber(min: 1, max: 100)
    var saisieUtilisateur:Int
    var nbTentative:Int = 0
    repeat {
        print("Quel nombre ?")
        saisieUtilisateur = readInt()
        if saisieUtilisateur < nbMystere {
            print("Plus!")
            
        } else if saisieUtilisateur > nbMystere {
            print("Moins")
        }
        nbTentative = nbTentative + 1
    } while saisieUtilisateur != nbMystere
        
    
}

func saisieIA(nbAllumettesDisponibles:Int) -> Int {
    var saisieIA:Int = (nbAllumettesDisponibles - 1) % 4
    if saisieIA == 0 {
        saisieIA = 1
    }
    
    print("L IA a pris \(saisieIA) allumette" +
        (saisieIA > 1 ? "s" : ""))
    return saisieIA
}



//Commencez vos instructions en dessous de cette ligne


ex3()

