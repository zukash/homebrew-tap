class Notif < Formula
  desc "Minimal macOS Notification Center controller for keyboard shortcuts"
  homepage "https://github.com/zukash/notif"
  url "https://github.com/zukash/notif/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  def install
    bin.install "notif"
    bin.install "notif.applescript"
  end

  test do
    system "#{bin}/notif", "--help"
  end
end
