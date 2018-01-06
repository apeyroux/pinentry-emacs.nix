with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "pinentry-emacs";
  src = fetchFromGitHub {
    owner = "ecraven";
    repo = "pinentry-emacs";
    rev = "b6afcb01c5c43653c8d504309df13e58f8247b06";
    sha256 = "1hhyrhlkf29nmvxxc3d282y9lc2p0ncskchrww3kfp3mkp33xslk";
  };
  buildInputs = [ perl ];
  installPhase = ''
mkdir -p $out/bin
ls -al $in
cp pinentry-emacs $out/bin/
cp lukspinentry $out/bin/
  '';
}
