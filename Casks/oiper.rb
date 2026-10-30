cask "oiper" do
  on_arm do
    version "0.1.35"
    sha256 "2708b499dc497167df74213465b115292c97cc02d8f2d7018f33cca79ef23e98"

    url "https://github.com/oiper/desktop/releases/download/v#{version}/OiPer_#{version}_aarch64.dmg"
  end
  on_intel do
    version "0.1.33"
    sha256 "96dac52931cab455377eae246c608e0d824c69ce64654522c1d9fcf21929e5a5"

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
