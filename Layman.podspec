Pod::Spec.new do |s|
  s.name             = "Layman"
  s.summary          = "A short description of Layman."
  s.version          = "0.1.19"
  s.homepage         = "github.com/Strobocop/Layman"
  s.license          = 'MIT'
  s.author           = { "Brian Strobach" => "brian@appsaurus.io" }
  s.source           = {
    :git => "https://github.com/appsaurus/Layman.git",
    :tag => s.version.to_s
  }
  s.social_media_url = 'https://twitter.com/Strobocop'

  s.swift_version = '5.0'
  s.requires_arc = true

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.2'

  s.source_files = 'Sources/{Core, Operators, Shorthand}/**/*', 'Sourcery/Generated/Sources/{Core, Operators}/**/*'

  s.subspec 'Core' do |core|
      core.source_files = 'Sources/Core/**/*', 'Sourcery/Generated/Sources/Core/**/*'
  end

  s.subspec 'Operators' do |core|
      core.source_files = 'Sourcery/Generated/Sources/Operators/**/*'
  end

  s.subspec 'Shorthand' do |core|
      core.source_files = 'Sources/Shorthand/**/*'
  end

  s.ios.frameworks = 'UIKit', 'Foundation'
  s.tvos.frameworks = 'UIKit', 'Foundation'
  s.osx.frameworks = 'AppKit', 'Foundation'

end
