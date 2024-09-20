Pod::Spec.new do |s|
  s.name = 'Span'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '5.0.2'
  s.source = https://github.com/lab5e/swift-spanapi
  s.authors = 'releases@lab5e.com'
  s.license = BSD
  s.homepage = 'https://lab5e.com/'
  s.summary = 'Span API Client'
  s.description = 'Lab5e Span API Client'
  s.documentation_url = 'https://docs.labe5e.com/'
  s.source_files = 'Span/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
