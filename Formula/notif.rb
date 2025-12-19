class Notif < Formula
  desc "Minimal macOS Notification Center controller for keyboard shortcuts"
  homepage "https://github.com/zukash/notif"
  url "https://github.com/zukash/notif/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "b004297c01c0a1fbad5b9bee601db08268da69340a46145af7225e34d1c0b511"
  license "MIT"

  def install
    bin.install "notif"
    bin.install "notif.applescript"
  end

  test do
    system "#{bin}/notif", "--help"
  end
end
