cask "duckwork" do
  version "0.3.0"
  sha256 "7c99c26b7a3014c4cd8cc136ba65f7006e65edbb4df6f2d25aa2af4dbf18d2a4"

  url "https://downloads.duckwork.ai/Duckwork-#{version}.zip"
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
