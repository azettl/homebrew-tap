cask "duckwork" do
  version "0.3.0"
  sha256 "06da2887ea3097dfb084d7a97697561986b682ac0e4657af995a74cd8da74b22"

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
