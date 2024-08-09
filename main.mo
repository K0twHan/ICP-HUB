// Bir hesap makinesi projesi geliştiriyorum
// let --> değiştirilemez var --> değiştirilebilir
// async
// if condition

// canister --> akıllı sözleşme

actor hesap_makinesi {
  var sonuc : Int = 0;
  // toplama işlemi
  public func toplama(s : Int) : async Int {
    sonuc += s;
    sonuc
    // Debug.print(debug_show (sonuc));
  };
  // çıkarma işlemi
  public func cikarma(s : Int) : async Int {
    sonuc -= s;
    sonuc;
  };
  // çarpma işlemi
  public func carpma(s : Int) : async Int {
    sonuc *= s;
    sonuc

  };
  // bolme işlemi
  public func bolme(s : Int) : async ?Int {
    if (s == 0) {
      null;
    } else {
      sonuc /= s;
      ?sonuc;
    };
  };
  //kare alma
  public func kare_al(s : Int) : async Int {
    sonuc := s * s;
    sonuc;
  };

  public func dikdortgen_alan(s1 : Int , s2 : Int) : async Int {
    sonuc := 1;
    sonuc *= s1*s2;
    sonuc
  };

  public func kare_alan(s:Int) : async Int {
    sonuc := s*s;
    sonuc
  };

  public func ucgen_cevre(s1:Int,s2:Int,s3:Int) : async Int {
    sonuc := s1+s2+s3;
    sonuc
  };

  public func dortgenCevre(s1:Int,s2:Int,s3:Int,s4:Int) : async Int {
    sonuc := s1+s2+s3+s4;
    sonuc
  };

  public func kareCevre(s:Int) : async Int {
    sonuc := s*4;
    sonuc
  };

  // temizleme işlemi
  public func temizle() : async () {
    sonuc := 0;
  };

};

