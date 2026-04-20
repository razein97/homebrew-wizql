cask "wizql" do
  arch arm: "aarch64", intel: "x64"

  version "1.7.1"
  sha256 arm:   "70e6a6557cd8d9def401e0d2feea5c4c402ce19ebfb651369527a90e1a5c3772",
         intel: "5c91892b6c2ca207c7ca3cb06d39dda247fd11b91b2dece49f1f82e247faba06"

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
