class Hidctl < Formula
  desc "One-shot CLI for inspecting HID devices and sending raw reports"
  homepage "https://github.com/zukash/hidctl"
  url "https://github.com/zukash/hidctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8a5628ba127d7a2bc4a712e2aa86e3d88d7d66a64c1a5c749af9006443d16a12"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin / "hidctl", "list", "--json"
  end
end
