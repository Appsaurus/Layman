////
////  Benchmark.swift
////  Layman
////
////  Created by Brian Strobach on 1/25/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//import CoreFoundation
//
//public class Benchmark {
//    private static var sharedInstance: Benchmark?
//
//    private let startTime: CFAbsoluteTime
//    private var finalTime: CFAbsoluteTime?
//    private let key: String
//
//    public var finished: Bool = false
//    public var time: CFAbsoluteTime {
//        guard let finalTime = finalTime else { return CFAbsoluteTimeGetCurrent() - startTime }
//        return finalTime - startTime
//    }
//
//    public var formattedTime: String {
//        let formatedElapsed = String(format: "%.5f", time)
//        return "\(key): \(formatedElapsed) sec.\(finished ? "" : " (and counting)")"
//    }
//
//    public init(key: String) {
//        startTime = CFAbsoluteTimeGetCurrent()
//        self.key = key
//    }
//
//    public func finish() {
//        finalTime = CFAbsoluteTimeGetCurrent()
//        finished = true
//
//    }
//
//    public static func start(_ key: String = "Benchmark") {
//        sharedInstance = Benchmark(key: key)
//    }
//
//    public static func finish() {
//        sharedInstance?.finish()
//        sharedInstance = nil
//    }
//
//    @discardableResult
//    public static func measure(_ key: String = "Benchmark", block: () -> Void) -> Benchmark {
//        let benchmark = Benchmark(key: key)
//        block()
//        benchmark.finish()
//        return benchmark
//    }
//}
//
//public class BenchmarkGroup {
//    var benchmarks: [Benchmark] = []
//    var name: String?
//
//    public init() {}
//    public init(name: String?) {
//        self.name = name
//    }
//    public var formattedTimeReport: String {
//        let formattedString = "Final Benchmark Report (\(name ?? "") - \n\n"
//        return benchmarks
//            .sort(by: \.time)
//            .reduce(into: formattedString, { $0 += $1.formattedTime + "\n"}).trimmed
//    }
//
//    @discardableResult
//    public func measure(_ key: String = "Benchmark", block: () -> Void) -> Benchmark {
//        let benchmark = Benchmark(key: key)
//        block()
//        benchmark.finish()
//        benchmarks.append(benchmark)
//        return benchmark
//    }
//}
