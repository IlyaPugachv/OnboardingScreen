import UIKit

class SliderViewCell: UICollectionViewCell {
    
    var titleLabel = UILabel()
    var textLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLabel()
    }
    
    private func setLabel() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(textLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.textColor = .white
        titleLabel.numberOfLines = 0
        
        textLabel.textColor = .white
        textLabel.numberOfLines = 0
        
        textLabel.font = UIFont.systemFont(ofSize: 20, weight: .black)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        
            textLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 20),
            textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
