# frozen_string_literal: true

class VaultSync < Formula
  desc "Production-ready tool for synchronizing secrets across multiple HashiCorp Vault clusters"
  homepage "https://github.com/Binsabbar/vault-sync"
  version "1.0.0-rc.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Binsabbar/vault-sync/releases/download/v1.0.0-rc.2/vault-sync_1.0.0-rc.2_darwin_arm64.tar.gz"
      sha256 "872745909c1b821126bdb4c622d14b6bba8ca74652256d3995afeabcf3dfd5c3"
    end

    on_intel do
      url "https://github.com/Binsabbar/vault-sync/releases/download/v1.0.0-rc.2/vault-sync_1.0.0-rc.2_darwin_amd64.tar.gz"
      sha256 "1d85ebe368e429a433cdbb687ea9b7892e96f58492a467b65e25c879c5abc7df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Binsabbar/vault-sync/releases/download/v1.0.0-rc.2/vault-sync_1.0.0-rc.2_linux_arm64.tar.gz"
      sha256 "d11e4205af913de6a4c066aa43443402d2f798b60fdc0c89badb731cd78ffd98"
    end

    on_intel do
      url "https://github.com/Binsabbar/vault-sync/releases/download/v1.0.0-rc.2/vault-sync_1.0.0-rc.2_linux_amd64.tar.gz"
      sha256 "5819f7f00ef5710aae086b9fb093b87db0d538c0c13ce7a838210a7f358f8305"
    end
  end

  def install
    bin.install "vault-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vault-sync --version")
  end
end
