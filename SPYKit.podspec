Pod::Spec.new do |spec|
  spec.name = 'SPYKit'
  spec.version = '0.1.3'
  spec.authors = {'Scott Petit' => 'petit.scott@gmail.com'}
  spec.homepage = 'https://github.com/ScottPetit/SPYKit'
  spec.summary = 'A Collection View Data Source and Delegate for the simple things'
  spec.source = {:git => 'https://github.com/ScottPetit/SPYKit.git', :tag => "v#{spec.version}"}
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.platform = :ios
  spec.requires_arc = true
  spec.frameworks = 'UIKit', 'Foundation'
  spec.source_files = 'SPYKit/Classes/', 'SPYKit/Classes/Foundation/', 'SPYKit/Classes/UIKit/'
end
