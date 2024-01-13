# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Commit < Formula
  desc "Commit is a tool for commiting changes with naming convention"
  homepage "https://github.com/mrados7/homebrews"
  version "0.0.18"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.18/go-git-commands_0.0.18_darwin_arm64.tar.gz"
      sha256 "dae69b033aac7e0f321cc3d7ae61a624269cd6ba80a4c73452a9c3651ee11a18"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.18/go-git-commands_0.0.18_darwin_amd64.tar.gz"
      sha256 "60a2b5a52a06facc534b29ed691f347feb78c119cf70a1c57063fa87698060ac"

      def install
        bin.install "commit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.18/go-git-commands_0.0.18_linux_amd64.tar.gz"
      sha256 "b045bc0f8ba6f1e446496ddd7e99713145e4cb615cb0ed4808d67dabae251711"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.18/go-git-commands_0.0.18_linux_armv6.tar.gz"
      sha256 "26ef2cde864d32f64e4b431dfe6a9a97abb6afff362a2b06f959f3a13823784c"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.18/go-git-commands_0.0.18_linux_arm64.tar.gz"
      sha256 "6b107713b237a507817161a5d45a79b048d47e29a69e53809fb8d7399aa286f9"

      def install
        bin.install "commit"
      end
    end
  end

  test do
    system "#{bin}/commit", "-help"
  end
end
