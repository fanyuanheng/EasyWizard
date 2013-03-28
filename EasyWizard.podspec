Pod::Spec.new do |s|
  s.name         = "EasyWizard"
  s.version      = "0.0.1"
  s.summary      = "A wizard view that breaks big form population into steps for better user experiences."
  s.homepage     = "https://github.com/fanyuanheng/EasyWizard"
  s.license      = 'MIT'
  s.author       = { "Yuan Heng Fan" => "yuan.fan@simpul.com.au" }
  s.source       = { :git => "https://github.com/fanyuanheng/EasyWizard.git", :tag => "0.0.1" }
  s.platform     = :ios
  s.source_files = 'EasyWizard', 'EasyWizard/**/*.{h,m}'
  s.requires_arc = true
end
