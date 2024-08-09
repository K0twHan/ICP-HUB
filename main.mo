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

  // temizleme işlemi
  public func temizle() : async () {
    sonuc := 0;
  };

};
