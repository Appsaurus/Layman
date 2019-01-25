// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT





    func dimensionAnchorPlusConstantCompilationBenchmark() {
        relatedView.widthAnchor + 10
    }

    func layoutDimensionEqualityImpliedCompilationBenchmark() {
        view1 .= relatedView.width
    }

    func layoutDimensionEqualityShorthandCompilationBenchmark() {
        view1.width .= relatedView.width
    }

    func layoutDimensionEqualityCompilationBenchmark() {
        view1.widthAnchor .= relatedView.widthAnchor
    }

    func layoutDimensionShorthandPlusConstantCompilationBenchmark() {
        view1.width .= relatedView.width + 10
    }

    func layoutDimensionPlusConstantCompilationBenchmark() {
        view1.widthAnchor .= relatedView.widthAnchor + 10
    }

    func layoutDimensionPlusConstantAndPriorityArithmeticCompilationBenchmark() {
        view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
    }

    func otherShorthandOperatorPlusConstantVerbose() {
        view1.width.equal(to: view2.width.plus(10))
    }

    func compilationBenchmarkRegular() {
        view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
    }
