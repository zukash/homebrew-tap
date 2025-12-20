class Notif < Formula
  desc "Minimal macOS Notification Center controller for keyboard shortcuts"
  homepage "https://github.com/zukash/notif"
  url "https://github.com/zukash/notif/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "83c38a9aec2ebbcc23f28b8332909293d9d3ef79d9a8fcf6650c8d63d9f07516"
  license "MIT"

  def install
    bin.install "notif"
    bin.install "notif.applescript"
  end

  test do
    system "#{bin}/notif", "--help"
  end
end
