//
//  tp2.swift
//  tp
//
//  Created by imac on 07/11/2016.
//  Copyright © 2016 mbritto. All rights reserved.
//

import Foundation

func pythagore( nbr1:Double, nbr2:Double) -> Double{
    let result:Double
    result = sqrt( nbr1*nbr1 + nbr2*nbr2)
    return result
}

func ex1 (){
    let result:Double
    print("Entrer coteA :")
    let saisie1:Double = readDouble()
    print("Entrer  coteB :")
    let saisie2:Double = readDouble()
    result = pythagore(nbr1: saisie1, nbr2: saisie2)
    print("L hypothenuse vaut \(result) ")
    
}

func demandeValeurs(){
    
    var compteurSaisie:Int = 0
    var compteurSaisieMod7:Int = 0
    var saisie:Double
    repeat {
        print ("Entre valeur")
        saisie = readDouble()
        if(saisie / 7.0 == 0.0) {
            compteurSaisieMod7 = compteurSaisieMod7 + 1
        }
        compteurSaisie = compteurSaisie + 1
      
    } while saisie != 0.0
    
    
}

func multiplicating ( val:Int) {
    for chiffre in 1...val {
        
        if ( chiffre == 1){
            
            for chiffre2 in 1...val {
                print ("\(chiffre2) ",terminator:"" )
            }
            print("")
            
        }
        else{
            let coef:Int = chiffre
            for chiffre2 in 1...val {
                let value:Int = chiffre2*coef
                print ("\(value) ",terminator:"" )
            }
            print("")

        }
    }
}



func ex3 (){
    print("Saisir la dimen table")
    let dim:Int = readInt()
    multiplicating(val: dim)
}



