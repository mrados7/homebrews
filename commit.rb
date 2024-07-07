# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Commit < Formula
  desc "Commit is a tool for commiting changes with naming convention"
  homepage "https://github.com/mrados7/homebrews"
  version "0.0.28"
  license "MIT"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.28/go-git-commands_0.0.28_darwin_amd64.tar.gz"
      sha256 "6dc610220d0ce303dba855af33ef54d9b1b7b570d83f66c346ea818b9d4ddf7e"

      def install
        bin.install "commit"
      end
    end
    on_arm do
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.28/go-git-commands_0.0.28_darwin_arm64.tar.gz"
      sha256 "f216532c6b964849a7ac2927a758db02736b51c54bd2ddf7c31172a88786a56f"

      def install
        bin.install "commit"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.28/go-git-commands_0.0.28_linux_amd64.tar.gz"
        sha256 "569b1f3cf58feb980598df965f2a2784b968dd7cc28af7afc658a675112236c2"

        def install
          bin.install "commit"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.28/go-git-commands_0.0.28_linux_armv6.tar.gz"
        sha256 "6fb3e28ce8dc7b649f4a6d7fd616c3ba10bab2b55934e3413d00edb19dbd8b50"

        def install
          bin.install "commit"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.28/go-git-commands_0.0.28_linux_arm64.tar.gz"
        sha256 "796a5d0ed8053913f285a20bb82799155a03e571440677df0d246155e1e6cb48"

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
