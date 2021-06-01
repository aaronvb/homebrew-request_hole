# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rh < Formula
  desc "Request Hole is a command line tool for creating a temporary endpoint."
  homepage "https://github.com/aaronvb/request_hole"
  version "0.5.1"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/aaronvb/request_hole/releases/download/v0.5.1/request_hole_0.5.1_Darwin_x86_64.tar.gz"
    sha256 "1dc972d7dce6e8af9e8055adef037f8f0923702bffd00e72b4a79194ca8d3d1a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aaronvb/request_hole/releases/download/v0.5.1/request_hole_0.5.1_Darwin_arm64.tar.gz"
    sha256 "b6d9edd81296572e83363dd63645846e82a90c333927a35a477b15e999ace164"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aaronvb/request_hole/releases/download/v0.5.1/request_hole_0.5.1_Linux_x86_64.tar.gz"
    sha256 "c32be5b691e7f59ca5bd26e7b85fb75d862510af4597d0d03c132d00c45a3cb2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/aaronvb/request_hole/releases/download/v0.5.1/request_hole_0.5.1_Linux_arm64.tar.gz"
    sha256 "4bdfcb68cfecce17c896cd293d6acc2e9a131f814424d04ebff6bc80473f51e0"
  end

  depends_on "go" => :optional

  def install
    bin.install "rh"
  end

  test do
    system "#{bin}/rh version"
  end
end
