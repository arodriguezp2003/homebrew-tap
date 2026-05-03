class Intercept < Formula
  desc "HTTP reverse proxy with real-time traffic inspection and response mocking"
  homepage "https://intercepthq.com"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-arm64.tar.gz"
      sha256 "ebe153551c26c8b6fb468fe81f71dfabd41e8f8ff76537fabfbd25e409bf9828"

      def install
        bin.install "intercept-darwin-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-amd64.tar.gz"
      sha256 "9ec8f9b1e6dfe607efb7fc48f8985ae3ec7a46b791199934d8c49f519ffdc5ab"

      def install
        bin.install "intercept-darwin-amd64" => "intercept"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-arm64.tar.gz"
      sha256 "697e8f76b4afa6959f5f6a7e4e54e34d44e09d214bf4572bdc2a220bf4412b79"

      def install
        bin.install "intercept-linux-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-amd64.tar.gz"
      sha256 "33035b91f9fba0faa0a6e2064211a128f7b8b4782a19c81d7657dda4711a4a80"

      def install
        bin.install "intercept-linux-amd64" => "intercept"
      end
    end
  end

  test do
    assert_match "intercept", shell_output("#{bin}/intercept --version")
  end
end
