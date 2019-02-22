import UIKit
import Layman

class ViewController: NavigationalMenuTableViewController {

    override func createRows() -> [RowDataSource] {
        return LayoutExample.allCases.map { row($0) }
    }

    func row(_ example: LayoutExample) -> RowDataSource {
        return .row("\(example)".uppercased(), LayoutExampleViewController(example))
    }
}

public enum LayoutExample: CaseIterable {
    case sizeConstant
    case size
    case sizeMultiplier
    case sizePercentage
    case center
    case horizontalEdges
    case verticalEdges
    case edges
    case edgesInset
    case corners
    case stack
    case nestedStack
}

class LayoutExampleViewController: UIViewController {
    var layout: LayoutExample
    let container = DashedBorderView(borderColor: mediumGrayBorder)
    let snapshotView: View = {
        let view = View()
        view.accessibilityIdentifier = "snapshotview"
        return view
    }()

    lazy var view1 = createView(label: "1")
    lazy var view2 = createView(label: "2")
    lazy var view3 = createView(label: "3")
    lazy var view4 = createView(label: "4")
    lazy var view5 = createView(label: "5")
    lazy var view6 = createView(label: "6")
    lazy var view7 = createView(label: "7")
    lazy var view8 = createView(label: "8")
    lazy var view9 = createView(label: "9")
    lazy var view10 = createView(label: "10")
    lazy var stackView: StackView = {
        let stackView = StackView() ~~ "StackView"
        container.addSubview(stackView)
        stackView.centerXY .= container.centerXY
        stackView.insetOrEqual(to: container.edges)
        stackView.enforceContentSize()
        return stackView
    }()

    lazy var views = [
        view1,
        view2,
        view3,
        view4,
        view5,
        view6,
        view7,
        view8,
        view9,
        view10
    ]

    public required init(_ layout: LayoutExample) {
        self.layout = layout
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(container)
        view.backgroundColor = .white
        container.accessibilityIdentifier = "container"
        container.backgroundColor = lightGrayBackground


        edgesForExtendedLayout = []
        extendedLayoutIncludesOpaqueBars = false
        createAutolayoutConstraints()
    }

    public func createAutolayoutConstraints(){

        container.centerXY .= view.centerXY
        container.edges .= edges .+ .inset(10)

        switch layout {
        case .sizeConstant:
            view1.size .= 100
            view1.equal(to: container.leading)
        case .size:
            view1.size .= 100
            view2.size .= view1.size
            view1.trailing .= container.centerX .- 10
            view2.leading .= container.centerX .+ 10
            [view1, view2].centerY .= container.centerY
        case .sizeMultiplier:
            let allViews = [view1, view2, view3, view4, view5, view6]
            allViews.contentSizePriorityAnchor ~ .required
//            allViews.size .= 100
            view1.size .= 100
            view2.size .= view1.size ~ .required// .* 50%
            view3.size .= view2.size  ~ .required// ./ 2
            view4.size .= view3.size  ~ .required// .* 0.5
            view5.size .= view4.size  ~ .required// .+ (10, 20)
            view6.size .= view5.size  ~ .required// .- 50
            stackView
                .on(.vertical)
                .distribute(.equalSpacing)
                .spacing(20)
                .stack(
                    [view1, view2, view3],
                    [view4, view5, view6]
            )
        case .sizePercentage:
            view1.size .= 150
            view2.size .= view1.size .* 50%
            view3.size .= view2.size .* 50%
            view4.size .= view3.size .* 50%
            stackView
                .distribute(.equalSpacing)
                .align(.center)
                .spacing(20)
                .stack(view1, view2, view3, view4)
        case .center:
            view1.size .= 100
            view1.centerXY .= container.centerXY
        case .horizontalEdges:
            view1.horizontalEdges .= container.horizontalEdges .+ .inset(10)
            view1.centerY .= container.centerY
            view1.height .= 100
        case .verticalEdges:
            view1.verticalEdges .= container.verticalEdges .+ .inset(10)
            view1.centerX .= container.centerX
            view1.width .= 100
        case .edges:
            view1.edges .= container.edges .+ .inset(10)
        case .edgesInset:
            view1.edges .= container.edges .+ .inset(top: 75, leading: 10, bottom: 75, trailing: 100)
        case .corners:
            [view1, view2, view3, view4].size .= 100
            view1.topLeft .= container.topLeft .+ .inset(20)
            view2.topRight .= container.topRight .+ .inset(20)
            view3.bottomRight .= container.bottomRight .+ .inset(20)
            view4.bottomLeft .= container.bottomLeft .+ .inset(20)

        case .stack:
            [view1, view2, view3, view4].size .= 100
            stackView
                .align(.center)
                .stack(view1, 10, view2, 50, view3, 100, view4)
        case .nestedStack:

            view1.size .= 150
            [view2, view3].size .= 70
            [view4, view5, view6].size .= 40

            stackView
                .on(.vertical)
                .stack(
                    view1,
                    10,
                    [view2, 10, view3],
                    15,
                    [view4, 15, view5, 15, view6]
            )
        }
    }

    func createView(label: String) -> View{
        let view = DashedBorderView(label: label)
        view ~~ "View\(label)"
        //        view.backgroundColor = .green
        container.addSubview(view)

        //        view.layer.borderColor = UIColor.orange.cgColor
        //        view.layer.borderWidth = 2.0
        return view
    }
}

open class NavigationalMenuTableViewController: UITableViewController {

    open lazy var rows: [RowDataSource] = self.createRows()
    override open func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    override open func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }

    override open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let cellData = self.rows[indexPath.row]
        cell.layoutMargins = UIEdgeInsets.zero
        cell.separatorInset = UIEdgeInsets.zero
        //        cell.textLabel?.font = .regular(15.0)
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        cell.textLabel?.text = cellData.title
        cell.imageView?.image = cellData.leftImage
        return cell
    }

    override open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellData = rows[indexPath.row]

        if !cellData.modal, let navVC = self.navigationController{
            navVC.pushViewController(cellData.createDestinationVC(), animated: true)
        }
        else{
            self.present(cellData.createDestinationVC(), animated: true, completion: nil)
        }
    }

    open func createRows() -> [RowDataSource] {
        assertionFailure(String(describing: self) + " is abstract. You must implement " + #function)
        return []
    }
}

public struct RowDataSource{
    var leftImage: UIImage?
    var title: String
    var createDestinationVC: () -> UIViewController
    var modal: Bool = false

    public static func row(leftImage: UIImage? = nil, _ title: String, _ createDestinationVC: @escaping @autoclosure () -> UIViewController, modal: Bool = false) -> RowDataSource{
        return RowDataSource(leftImage: leftImage, title: title, createDestinationVC: createDestinationVC, modal: modal)
    }
}


class DashedBorderView: View {

    var cornerRadius: CGFloat = 5
    var borderColor: UIColor = slateBlack
    var dashPaintedSize: Int = 3
    var dashUnpaintedSize: Int = 2

    let dashedBorder = CAShapeLayer()
    let label = UILabel()

    public required init(label: String? = nil, borderColor: UIColor? = nil) {
        super.init(frame: .zero)
        self.label.text = label
        self.label.isHidden = label == nil
        if let borderColor = borderColor { self.borderColor = borderColor }
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        //custom initialization
        self.layer.addSublayer(dashedBorder)
        applyDashBorder()
        addSubview(label)
        backgroundColor = .white
        label.textAlignment = .center
        label .= centerXY
        label.enforceContentSize()
        label.backgroundColor = borderColor
        label.textColor = .white
        label.clipsToBounds = true

        label.height .= 14
        label.width ≥ label.height
        label.font = UIFont.init(name: label.font.fontName, size: 9.0)


    }

    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        applyDashBorder()
        label.layer.cornerRadius = label.frame.size.width / 2.0
        //        label.layer.cornerRadius = label.frame.height / 2.0
    }

    func applyDashBorder() {
        dashedBorder.strokeColor = borderColor.cgColor
        dashedBorder.lineDashPattern = [NSNumber(value: dashPaintedSize), NSNumber(value: dashUnpaintedSize)]
        dashedBorder.fillColor = nil
        dashedBorder.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: cornerRadius).cgPath
        dashedBorder.frame = self.bounds
    }
}



private let lightGrayBackground: UIColor = UIColor(r: 250, g: 250, b: 250)
private let lightGrayBorder: UIColor = UIColor(r: 240, g: 240, b: 240)
private let slateBlack: UIColor = UIColor(r: 51, g: 51, b: 51)
private let mediumGrayBorder: UIColor = UIColor(r: 214, g: 214, b: 214)

extension UIColor{
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 255) {
        self.init(red: r / 255, green: g / 255, blue: b / 255, alpha: a / 255)
    }
}
