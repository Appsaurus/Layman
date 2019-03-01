import UIKit
import Layman

class ViewController: NavigationalMenuTableViewController {

    override func createRows() -> [RowDataSource] {
        return LayoutExample.allCases.map { row($0) }
    }

    func row(_ example: LayoutExample) -> RowDataSource {
        return .row("\(example)".titleCase, LayoutExampleViewController(example))
    }
}

public enum LayoutExample: CaseIterable {
    case size
    case sizeCoefficients
    case XYAxisPositioning
    case XYAxisPairs
    case horizontalEdges
    case verticalEdges
    case edges
    case insetsAndOffsets
    case multipleViewSizes
    case stack
    case nestedStack
}

enum LayoutAPI {
    case `operator`
    case core
}
class LayoutExampleViewController: UIViewController {

    var layout: LayoutExample
    var api: LayoutAPI = .core
    let container = DashedBorderView(borderColor: mediumGrayBorder)
    let snapshotView: View = {
        let view = View()
        view.accessibilityIdentifier = "snapshotview"
        return view
    }()
    let stackViewBackground = View()

    lazy var view1 = createView(label: "1")
    lazy var view2 = createView(label: "2")
    lazy var view3 = createView(label: "3")
    lazy var view4 = createView(label: "4")
    lazy var view5 = createView(label: "5")
    lazy var view6 = createView(label: "6")
    lazy var view7 = createView(label: "7")
    lazy var view8 = createView(label: "8")
    lazy var view9 = createView(label: "9")

    lazy var stackView: StackView = {
        let stackView = StackView() ~~ "StackView"
        container.addSubview(stackView)
        container.addSubview(stackViewBackground)
        stackViewBackground.edges .= stackView.edges
        container.bringSubviewToFront(stackView)
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
        view9
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

    func horizontalStack(views: View...) {
        stackView
            .on(.horizontal)
            .align(.center)
            .distribute(.equalSpacing)
            .spacing(30)
        views.forEach { stackView.addArrangedSubview($0)}
        stackView.arrangedSubviews.forEach({$0.enforceContentSize()})
    }
    public func createAutolayoutConstraints(){

        container.centerXY .= view.centerXY
        container.edges .= edges .+ .inset(10)

        switch layout {
        case .size:
            horizontalStack(views: view1, view2, view3, view4, view5)
            switch api {
            case .core:
                view1.height.equal(to: 100)
                view1.width.equal(to: 50)
                view2.size.equal(to: 100)
                view3.size.equal(to: (25, 100))
                view4.height.equal(to: view1.width)
                view4.width.equal(to: view1.height)
                view5.size.equal(to: view1.size)
            case .operator:
                view1.height .= 100
                view1.width .= 50
                view2.size .= 100
                view3.size .= (25, 100)
                view4.height .= view1.width
                view4.width .= view1.height
                view5.size .= view1.size
            }

        case .sizeCoefficients:
            horizontalStack(views: view1, view2, view3, view4, view5, view6)
            switch api {
            case .core:
                view1.size.equal(to: 100)
                view2.size.equal(to: view1.size.plus((15, 30)))
                view3.size.equal(to: view1.size.minus(50))
                view4.size.equal(to: view1.size.times(1.25))
                view5.size.equal(to: view1.size.times(50%))
                view6.size.equal(to: view1.size.divided(by: 2))
            case .operator:
                view1.size .= 100
                view2.size .= view1.size .+ (15, 30)
                view3.size .= view1.size .- 50
                view4.size .= view1.size .* 1.25
                view5.size .= view1.size .* 50%
                view6.size .= view1.size ./ 2
            }
        case .XYAxisPositioning:
            [view1, view2, view3, view4].size .= 75
            switch api {
                case .core:
                    view1.top.equal(to: container.top)
                    view2.leading.equal(to: container.leading)
                    view3.trailing.equal(to: container.trailing)
                    view4.bottom.equal(to: container.bottom)
                    [view1, view4].centerX.equal(to: container.centerX)
                    [view2, view3].centerY.equal(to: container.centerY)
                case .operator:
                    view1.top .= container.top
                    view2.leading .= container.leading
                    view3.trailing .= container.trailing
                    view4.bottom .= container.bottom
                    [view1, view4].centerX .= container.centerX
                    [view2, view3].centerY .= container.centerY
            }

        case .XYAxisPairs:
            [view1, view2, view3, view4].size .= 75
            switch api {
            case .core:
                view1.topLeading.equal(to: container.topLeading)
                view2.topTrailing.equal(to: container.topTrailing)
                view3.bottomLeading.equal(to: container.bottomLeading)
                view4.bottomTrailing.equal(to: container.bottomTrailing)
            case .operator:
                view1.topLeading .= container.topLeading
                view2.topTrailing .= container.topTrailing
                view3.bottomLeading .= container.bottomLeading
                view4.bottomTrailing .= container.bottomTrailing
            }
        case .horizontalEdges:
            view1.height .= 100
            view1.centerY .= container.centerY
            switch api {
            case .core:
                view1.horizontalEdges.equal(to: container.horizontalEdges)
            case .operator:
                view1.horizontalEdges .= container.horizontalEdges
            }
        case .verticalEdges:
            view1.centerX .= container.centerX
            view1.width .= 100
            switch api {
            case .core:
                view1.verticalEdges.equal(to: container.verticalEdges)
            case .operator:
                view1.verticalEdges .= container.verticalEdges
            }
        case .edges:
            [view2, view3].width .= 50
            switch api {
            case .core:
                view1.edges.equal(to: container.edges)
                view2.edges.equal(to: view1.edgesExcluding(.trailing))
                view3.edges.equal(to: view1.edgesExcluding(.leading))
            case .operator:
                view1.edges .= container.edges
                view2.edges .= view1.edgesExcluding(.trailing)
                view3.edges .= view1.edgesExcluding(.leading)
            }
            [view2, view3].forEach{ container.bringSubviewToFront($0)}
        case .insetsAndOffsets:
            [view1, view3].forEach{ $0.layoutLabel(position: .topLeading) }
            view2.centerXY.equal(to: container.centerXY)
            view2.size.equal(to: 75)
            [view4, view5, view6, view7].size.equal(to: 75)
            switch api {
            case .core:
                view1.edges.equal(to: container.edges.inset(25))
                view3.edges.equal(to: view2.edges.outset(50))
                view4.topLeading.equal(to: view1.topLeading.inset(25))
                view5.topTrailing.equal(to: view1.topTrailing.inset(25))
                view6.bottomLeading.equal(to: view1.bottomLeading.inset(25))
                view7.bottomTrailing.equal(to: view1.bottomTrailing.inset(25))
            case .operator:
                view1.edges .= container.edges .+ .inset(25)
                view3.edges .= view2.edges .+ .outset(50)
                view4.topLeading .= view1.topLeading .+ .inset(25)
                view5.topTrailing .= view1.topTrailing .+ .inset(25)
                view6.bottomLeading .= view1.bottomLeading .+ .inset(25)
                view7.bottomTrailing .= view1.bottomTrailing .+ .inset(25)
            }
        case .multipleViewSizes:
            [view2, view3].size .= 50
            horizontalStack(views: view1, view2, view3, view4, view5, view6, view7)
            switch api {
            case .core:
                view1.size.greaterThanOrEqual(to: [view2, view3].size)
                [view4, view5].size.equal(to: view1.size)
                [view6, view7].size.lessThanOrEqual(to: [view2, view3].size)
                [view6, view7].size.equal(to: 25) ~ .low
            case .operator:
                view1.size ≥ [view2, view3].size
                [view4, view5].size .= view1.size
                [view6, view7].size ≤ [view2, view3].size
                [view6, view7].size .= 25 ~ .low
            }
        case .stack:
            [view1, view2, view3, view4].size .= 100
            stackView
                .align(.center)
                .stack(view1, 10, view2, 50, view3, 100, view4)
        case .nestedStack:
            view1.size .= 100
            [view2, view3].size .= 75
            [view4, view5, view6].size .= 50
            stackView
                .on(.vertical)
                .align(.center)
                .stack(
                    view1,
                    40,
                    [view2, 25, view3],
                    40,
                    [view4, 50, view5, 50, view6]
            )
        }
    }

    func createView(label: String) -> DashedBorderView{
        let view = DashedBorderView(label: label)
        view ~~ "View\(label)"
        container.addSubview(view)
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


enum LabelPosition {
    case center
    case topLeading
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

        label.hugContent()
        label.backgroundColor = borderColor
        label.textColor = .white
        label.clipsToBounds = true

        label.height .= 14
//        label.width ≥ label.height
        label.width .= label.height
        label.font = UIFont.init(name: label.font.fontName, size: 9.0)
        layoutLabel(position: .center)
    }

    var labelPositionConstraints: ConstraintPair?
    public func layoutLabel(position: LabelPosition){
        let constraints = [
            label.constraint(for: .centerX),
            label.constraint(for: .centerY),
            label.constraint(for: .leading),
            label.constraint(for: .top)
            ].compactMap{$0}
        print("Constraints: \(constraints)")
        if let constraints = labelPositionConstraints {
            Constraint.deactivate([constraints.first, constraints.second])
        }
        switch position {
        case .center:
            labelPositionConstraints = label .= centerXY
        case .topLeading:
            labelPositionConstraints = label.topLeading .= 5
        }
        label.forceAutolayoutPass()
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

extension String {
    var titleCase: String {
        return (self as NSString)
            .replacingOccurrences(of: "([A-Z])", with: " $1", options:
                .regularExpression, range: NSRange(location: 0, length: count))
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .capitalized
    }
}
