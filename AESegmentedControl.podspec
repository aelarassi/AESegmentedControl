Pod::Spec.new do |s|
  s.name             = "AESegmentedControl"
  s.version          = "0.1.0"
  s.summary          = "Simple segmented control for iOS."
  s.description      = <<-DESC
  AESegmentedControl is a segmented control framework for iOS:
  - Very customizable UI.
  - Supports storyboard design.
  - Can be linked with a scroll view.
                         DESC

  s.homepage         = 'https://github.com/aelarassi/AESegmentedControl'
  s.screenshots      = 'https://github.com/aelarassi/AESegmentedControl/blob/main/screencast.gif'
  s.license          = 'MIT'
  s.author           = { 'aelarassi' => 'hi@aelarassi.com' }
  s.source           = { :git => 'https://github.com/aelarassi/AESegmentedControl.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/aelarassi'

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.swift_version = '4.2'

  s.source_files = 'AESegmentedControl/*.swift'
  
end
