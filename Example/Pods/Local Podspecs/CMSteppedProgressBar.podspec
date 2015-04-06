#
# Be sure to run `pod lib lint CMSteppedProgressBar.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CMSteppedProgressBar"
  s.version          = "0.1.0"
  s.summary          = "CMSteppedProgressBar is like a progress bar but with dots to show steps, like for a formular"
  s.description      = <<-DESC
                       It's quite customizable for the line height, dots height and widht, the colors etc...
                       There is also a delegate to know when someone click on a dot, for example to return to an old step
                       DESC
  s.homepage         = "https://github.com/Mycose/CMSteppedProgressBar"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Mycose" => "morissard@gmail.com" }
  s.source           = { :git => "https://github.com/Mycose/CMSteppedProgressBar.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
