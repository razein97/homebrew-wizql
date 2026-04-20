cask "wizql" do
  arch arm: "aarch64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "272e7196dd1666f7a1a6568b2efb7f817a95bf96e773f0eadbf09f0cf6a9288b",
         intel: "64fdead9b6dd43c20880252e9a7ad41ec82cf8b0dee0faef1515cf868f09e3c0"

  url "https://github.com/razein97/Wizql-Issue-Tracker/releases/download/#{version}/WizQl_#{version}_#{arch}.dmg",
    verified: "github.com/razein97/Wizql-Issue-Tracker"
  name "WizQl"
  desc "A simple cross platform database client"
  homepage "https://wizql.com"
    

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "WizQl.app"
  

  zap trash: [
    "~/.wizql",
    "~/Library/Caches/com.razein.wizql",
    "~/Library/WebKit/com.razein.wizql",
  ]
end
