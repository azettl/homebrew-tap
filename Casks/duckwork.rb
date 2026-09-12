cask "duckwork" do
  version "0.2.0"
  sha256 "e118f82fc439528899dabe289b4616f09e02f38f08accba7db34489f0b22385b"

  url "https://duckwork.ai/assets/downloads/Duckwork-#{version}.zip"
  name "Duckwork"
  desc "Duckwork is a macOS menu bar app for thinking out loud. Talk through a problem with a global hotkey, and only get a response when you ask for one."
  homepage "https://duckwork.ai/"

  livecheck do
    url "https://duckwork.ai/changelog"
    regex(%r{<h2>v?(\d+(?:\.\d+)+)}i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Duckwork.app"

  zap trash: "~/Library/Containers/ai.duckwork.app"
end
