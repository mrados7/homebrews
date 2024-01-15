# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Checkout < Formula
  desc "Checkout is a tool for checking out new git branch with naming convention"
  homepage "https://github.com/mrados7/homebrews"
  version "0.0.26"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.26/go-git-commands_0.0.26_darwin_arm64.tar.gz"
      sha256 "8f8fbae46f95194e28f1ea46270b732919b1e2529e9e9edfc2bfac5e8802542a"

      def install
        bin.install "checkout"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.26/go-git-commands_0.0.26_darwin_amd64.tar.gz"
      sha256 "129f051b1dc82d1442823cd8b3b9734b0cad5d08e034ab5ecff5c99b7ad4da0d"

      def install
        bin.install "checkout"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.26/go-git-commands_0.0.26_linux_amd64.tar.gz"
      sha256 "d7527bc93eb36754200d01fc2f54930e3debc882acd6409bc733c6c93c966d54"

      def install
        bin.install "checkout"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.26/go-git-commands_0.0.26_linux_armv6.tar.gz"
      sha256 "e7f31f868462cb1603902b492a61a28324fe89a4c4db9a239cb554a88078cb9a"

      def install
        bin.install "checkout"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.26/go-git-commands_0.0.26_linux_arm64.tar.gz"
      sha256 "ec01e52991864f2d267e334a821b159994daca0e41e87753802efdec66b1bcbf"

      def install
        bin.install "checkout"
      end
    end
  end

  test do
    system "#{bin}/checkout", "-help"
  end
end
