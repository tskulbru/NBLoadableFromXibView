
Pod::Spec.new do |s|
  s.name             = "NBLoadableFromXibView"
  s.version          = "0.1.0"
  s.summary          = "Easily create a reusable xib and class to put anywhere."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
Wouldnt it be cool if you could easily drop a UIView on your storyboard set its class and have it automatically loaded from another XIB file? Using this library you can do just that. You can easily create reusable components, just subclass NBLoadableFromXibView, create a XIB and set its file owner to the subclass.
                       DESC

  s.homepage         = "https://github.com/tskulbru/NBLoadableFromXibView"
  s.license          = 'MIT'
  s.author           = { "Torstein Skulbru" => "serrghi@gmail.com" }
  s.source           = { :git => "https://github.com/tskulbru/NBLoadableFromXibView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tskulbru'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'NBLoadableFromXibView' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
