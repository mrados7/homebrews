# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Commit < Formula
  desc "Commit is a tool for commiting changes with naming convention"
  homepage "https://github.com/mrados7/homebrews"
  version "0.0.27"
  license "MIT"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.27/go-git-commands_0.0.27_darwin_amd64.tar.gz"
      sha256 "ff37488f6b10798058b58329a960ec1ee975922bd820ea5ce11fbf3db475a37b"

      def install
        bin.install "commit"
      end
    end
    on_arm do
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.27/go-git-commands_0.0.27_darwin_arm64.tar.gz"
      sha256 "228b484483a7f825a4390c0464263415fdeffcc16266495a60fd717aa8ce007e"

      def install
        bin.install "commit"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.27/go-git-commands_0.0.27_linux_amd64.tar.gz"
        sha256 "a5b617804211acffaad164cc0e7084881ce31e809064ce2969a8632f92036097"

        def install
          bin.install "commit"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.27/go-git-commands_0.0.27_linux_armv6.tar.gz"
        sha256 "207f0540a3a97efcde676c511e801f62428b4e35386cc07910decac9c1783ad3"

        def install
          bin.install "commit"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.27/go-git-commands_0.0.27_linux_arm64.tar.gz"
        sha256 "212c3289af1faddeba5341d50f955d6558bd34d175576cfbd72d07b7b4756b80"

        def install
          bin.install "commit"
        end
      end
    end
  end

  test do
    system "#{bin}/commit", "-help"
  end
end
