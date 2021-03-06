# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rh < Formula
  desc "Request Hole is a command line tool for creating a temporary endpoint."
  homepage "https://github.com/aaronvb/request_hole"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aaronvb/request_hole/releases/download/v1.2.0/request_hole_1.2.0_Darwin_arm64.tar.gz"
      sha256 "f2f5e48d50e735bc9862adaa25464969a71e746be1f51b42d3db851a5c5019c1"

      def install
        bin.install "rh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aaronvb/request_hole/releases/download/v1.2.0/request_hole_1.2.0_Darwin_x86_64.tar.gz"
      sha256 "7963c849151b7fdae7f34d54b37855c86b3df3c689545e5b7b7351d4b007c2bf"

      def install
        bin.install "rh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aaronvb/request_hole/releases/download/v1.2.0/request_hole_1.2.0_Linux_arm64.tar.gz"
      sha256 "0dc61aa3c8983c2d8c0890563104b2da6f72a71251a7eb53518d626686ca6686"

      def install
        bin.install "rh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aaronvb/request_hole/releases/download/v1.2.0/request_hole_1.2.0_Linux_x86_64.tar.gz"
      sha256 "002b90df6e9041fef4d1c4695d1857b7c6888cc789f8d380ead6eba0b865d271"

      def install
        bin.install "rh"
      end
    end
  end

  depends_on "go" => :optional

  test do
    system "#{bin}/rh version"
  end
end
