use_frameworks!

platform :ios, '9.0'


def shared

end

def libaryShared
    pod 'SwiftLint'
end

def testShared
    pod 'Swiftest', :git => 'https://github.com/Appsaurus/Swiftest'
    pod 'SwiftTestUtils', :git => 'https://github.com/appsaurus/SwiftTestUtils.git'
end

target 'UILayoutKit-iOS' do
    platform :ios, '9.0'
    shared
    libaryShared
end

target 'UILayoutKit-iOS-Tests' do
    platform :ios, '9.0'
    shared
    testShared
    pod 'CwlPreconditionTesting', :git => 'https://github.com/mattgallagher/CwlPreconditionTesting.git'
    pod 'CwlCatchException', :git => 'https://github.com/mattgallagher/CwlCatchException.git'
end

target 'UILayoutKit-macOS' do
    platform :osx, '10.10'
    shared
    libaryShared
end

target 'UILayoutKit-macOS-Tests' do
    platform :osx, '10.10'
    shared
    testShared
    pod 'CwlPreconditionTesting', :git => 'https://github.com/mattgallagher/CwlPreconditionTesting.git'
    pod 'CwlCatchException', :git => 'https://github.com/mattgallagher/CwlCatchException.git'
end

target 'UILayoutKit-tvOS' do
    platform :tvos, '11'
    shared
    libaryShared
end

target 'UILayoutKit-tvOS-Tests' do
    platform :tvos, '11'
    shared
    testShared
end

target 'UILayoutKit-watchOS' do
    platform :watchos, '3'
    shared
    libaryShared
end
