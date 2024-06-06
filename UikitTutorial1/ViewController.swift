//
//  ViewController.swift
//  UikitTutorial1
//
//  Created by Montserrat Gomez on 2024-06-04.
//
/* Muestra distintas vistas para nuestra aplicacion, el ciclo de vista de las pantallas.
	UIKit adopto el modelo vista controlador.
 

 */


import UIKit

class ViewController: UIViewController {
	
	override func loadView() {
		self.view = OnboardingView() //pasarle la instancia de la vista que creamos
	}
	
	override func viewDidLoad() { //Se va allamar cuando cargue en el celular
		super.viewDidLoad()
		
//		LabelTitle.textColor = .magenta //asi podemos acceder a las propiedades
		
		
	}
	



}

