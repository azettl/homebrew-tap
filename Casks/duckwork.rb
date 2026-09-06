cask "duckwork" do
  version "0.1.0"
  sha256 "332f6ae227dc4abb3fe78a3169acfe5f2e578c5ff077ea0fee3bbe63fb49b235"

  url "https://duckwork.ai/assets/downloads/Duckwork-#{version}.zip"
  name "Duckwork"
  desc "Duckwork is a macOS menu bar app for thinking out loud. Talk through a problem with a global hotkey, and only get a response when you ask for one."
  homepage "https://duckwork.ai/"

  livecheck do
    url "https://duckwork.ai/"
    regex(%r{Duckwork[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Duckwork.app"

  zap trash: "~/Library/Containers/ai.duckwork.app"
end
