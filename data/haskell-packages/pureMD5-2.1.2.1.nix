{ cabal, binary, cereal, crypto-api, tagged }:

cabal.mkDerivation (self: {
  pname = "pureMD5";
  version = "2.1.2.1";
  sha256 = "1zsn949qk95bwx1fbyv84q0lhb4k18bgixl7nivfzsnmhr31fs37";
  buildDepends = [ binary cereal crypto-api tagged ];
  doCheck = false;
  meta = {
    description = "A Haskell-only implementation of the MD5 digest (hash) algorithm";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
