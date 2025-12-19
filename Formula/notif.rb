class Notif < Formula
  desc "Minimal macOS Notification Center controller for keyboard shortcuts"
  homepage "https://github.com/zukash/notif"
  url "https://github.com/zukash/notif/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "598a34edbd72ab4c50cf418ceee7cfc150c3dd35ef8c13eabaa1a773600c6382"
  license "MIT"

  def install
    bin.install "notif"
    bin.install "notif.applescript"
  end

  test do
    system "#{bin}/notif", "--help"
  end
end
