//
//  OnboardingView.swift
//  UikitTutorial1
//
//  Created by Montserrat Gomez on 2024-06-04.
//

import Foundation
import UIKit

final class OnboardingView: UIView {
	
	///  Creacion de nueva vista
	private var imageView: UIImageView = {
		let imageV = UIImageView() //crear instancia
		imageV.contentMode = .scaleAspectFit
		imageV.image = UIImage(named: "clouds")
		imageV.translatesAutoresizingMaskIntoConstraints = false
		return imageV
	}()
	

//	@IBOutlet weak var LabelTitle: UILabel!
	// es lo mismo pero en codigo
		private let LabelTitle: UILabel = {
			let label = UILabel()
			label.numberOfLines = 0
			label.textAlignment = .center
			label.text = "Ejemplo"
			label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
			label.translatesAutoresizingMaskIntoConstraints = false
			return label
		}()
	
	private lazy var skipOnboardingButton: UIButton = {
		var config = UIButton.Configuration.filled()
		config.title = "Next"
		config.subtitle = "Tutorial"
		
		let button = UIButton(type: .system)
		button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
		button.configuration = config
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	private override init(frame: CGRect){
		super.init(frame: .zero)
		setup()
	}
	//codigo obligatorio
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setup() {
		addSubViews()
		configConstrains()
	}
	
	private func addSubViews() {
		addSubview(imageView) //aqui se añade una nueva vista a la vista padre
		//se hace un arreglo para agregar varias vistas [vista1, vista2, vista3].forEach(view.addSubview)
	}
	//Autolayout
	private func configConstrains() {
		NSLayoutConstraint.activate([ //asi se pueden escribir las constraints en codigo
			imageView.bottomAnchor.constraint(equalTo: LabelTitle.topAnchor, constant: -32),
			imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
			imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
			
			LabelTitle.bottomAnchor.constraint(equalTo: skipOnboardingButton.topAnchor, constant: -42),
			LabelTitle.leadingAnchor.constraint(equalTo: leadingAnchor),
			LabelTitle.trailingAnchor.constraint(equalTo: trailingAnchor),
			LabelTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
			
			skipOnboardingButton.centerYAnchor.constraint(equalTo: centerYAnchor),
			skipOnboardingButton.centerXAnchor.constraint(equalTo: centerXAnchor)
			
		])
	}
	@objc func showMessage() {
		print("Skip onboarding")
	}
	
}
