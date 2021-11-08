//
//  Hundai50.swift
//  Extensions
//
//  Created by Pavankumar Arepu on 02/11/2021.
//

import Foundation

protocol HundaiBaseProtocol: class {
    func setupEngine()
    func setupMirrorsI()
    func prepareCarBody()
    func assembleParts()
}


class Hundai50: HundaiBaseProtocol {
    func setupEngine() {
        print("setupEngine")
    }
    
    func setupMirrorsI() {
        print("setupMirrors")
    }
    
    func prepareCarBody() {
       print("prepareCarBody")
    }
    
    func assembleParts() {
        print("prepareCarBody")
    }
}
