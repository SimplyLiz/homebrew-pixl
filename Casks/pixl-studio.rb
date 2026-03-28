cask "pixl-studio" do
  version "1.0.0"
  sha256 ":no_check" # Updated automatically by CI on release

  url "https://github.com/SimplyLiz/PIXL/releases/download/studio-v#{version}/PIXL-Studio.dmg"
  name "PIXL Studio"
  desc "LLM-native pixel art editor"
  homepage "https://github.com/SimplyLiz/PIXL"

  app "pixl_studio.app"

  zap trash: [
    "~/Library/Application Support/io.tastehub.pixl-studio",
    "~/Library/Preferences/io.tastehub.pixl-studio.plist",
    "~/Library/Caches/io.tastehub.pixl-studio",
  ]
end
