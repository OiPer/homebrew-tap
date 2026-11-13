cask "oiper" do
  on_arm do
    version "0.1.42"
    sha256 "d5414ff25b2c5424ed3f9bc6294f41b14c13828b97849c7352fbe117cfa08707"

    url "https://github.com/oiper/desktop/releases/download/v#{version}/OiPer_#{version}_aarch64.dmg"
  end
  on_intel do
    version "0.1.39"
    sha256 "64b5b309650ca43a7a381444e6e1b0fb9533a94cad7e918eb612cabf8abb3254"

    url "https://github.com/oiper/desktop/releases/download/v#{version}/OiPer_#{version}_x64.dmg"
  end

  name "OiPer"
  desc "Local voice-to-text dictation"
  homepage "https://oiper.com/"

  depends_on :macos

  app "OiPer.app"

  zap trash: [
    "~/Library/Application Support/com.oiper.desktop",
    "~/Library/Caches/com.oiper.desktop",
    "~/Library/WebKit/com.oiper.desktop",
  ]
end
