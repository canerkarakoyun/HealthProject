Feature: US08 Kullanici giris yaptiginda Password sekmesi duzenlenebilir olmalidir.
  Background:
    Given Kullanici Medunna sayfasina gider
    Then Kullanici user icon simgesine tiklar
    And Kullanici sign in butonuna tiklar
    And Kullanici gecerli bir kullanici adi ve sifresi girer ve sign in butonunu tiklar
    And Kullanici hesaba giris yapildigini goruntuler
    And Kullanici username uzerine tiklar
    And Kullanici password kutusuna tiklar
    And Kullanici "Current Password" kutusuna gecerli sifreyi girer

  @US08_TC01
  Scenario: TC01 "New password confirmation" onaylanabilmelidir. (Pozitif Senaryo)

    And Kullanici New Password kutusuna 2 buyuk harf, 2 kucuk harf, 2 sayi ve 1 ozel karakterden olusan 7 haneli bir sifre girer
    And Kullanici "Confirm the New Password" kutusuna 10. adimda girilen sifreyi tekrar girer
    Then Kullanici iki kutucuga da ayni sifreyi girdiginde "The password and its confirmation do not match!" hatasi almadan ilerledigini dogrular.

  @US08_TC02
  Scenario: TC01 "New password confirmation" onaylanabilmelidir. (Pozitif Senaryo)

    And Kullanici "New Password" kutusuna 2 buyuk harf, 2 kucuk harf, 2 sayi ve 1 ozel karakterden olusan 7 haneli bir sifre girer
    And Kullanici "Confirm the New Password" kutusuna 10. adimda girilen sifreyi tekrar girer
    Then Kullanici iki kutucuga da ayni sifreyi girdiginde "The password and its confirmation do not match!" hatasi aldigini dogrular.

  @US08_TC03
  Scenario: TC01 "New password confirmation" onaylanabilmelidir. (Pozitif Senaryo)

    And Kullanici "New Password" kutusuna 3 buyuk harf, 2 sayi ve 2 ozel karakterden olusan 7 haneli bir sifre girer
    And Kullanici "New Password" kutusuna 1 kucuk harf, 2 buyuk harf, 2 sayi ve 2 ozel karakterden olusan 7 haneli bir sifre girer
    Then Kullanici sifreye eklenen kucuk harfin sifre gucunu artirdigini goruntuler

  @US08_TC04
  Scenario: TC01 "New password confirmation" onaylanabilmelidir. (Pozitif Senaryo)

    And Kullanici "New Password" kutusuna 3 kucuk harf, 2 sayi ve 2 ozel karakterden olusan 7 haneli bir sifre girerr
    And Kullanici "New Password" kutusuna 1 buyuk harf, 2 kucuk harf, 2 sayi ve 2 ozel karakterden olusan 7 haneli bir sifre girer
    Then  Kullanici sifreye eklenen buyuk harfin sifre gucunu artirdigini goruntuler

  @US08_TC05
  Scenario: TC01 "New password confirmation" onaylanabilmelidir. (Pozitif Senaryo)

    And Kullanici "New Password" kutusuna 3 kucuk harf, 2 kucuk harf ve 2 ozel karakterden olusan 7 haneli bir sifre girer
    And Kullanici "New Password" kutusuna 3 buyuk harf, 2 kucuk harf, 1 ozel karakter ve 1 sayi'dan olusan 7 haneli bir sifre girer
    Then Kullanici sifreye eklenen sayinin sifre gucunu artirdigini goruntuler

  @US08_TC06
  Scenario: TC01 "New password confirmation" onaylanabilmelidir. (Pozitif Senaryo)

    And Kullanici "New Password" kutusuna 3 kucuk harf, 2 kucuk harf ve 2 sayidan olusan 7 haneli bir sifre girer
    And Kullanici "New Password" kutusuna 3 buyuk harf, 2 kucuk harf, 1 sayi ve 1 ozel karakterden olusan 7 haneli bir sifre girer
    Then Kullanici sifreye eklenen buyuk harfin sifre gucunu artirdigini goruntuler

  @US08_TC07
  Scenario: TC01 "New password confirmation" onaylanabilmelidir. (Pozitif Senaryo)

    And Kullaici "New Password" kutusuna 2 buyuk harf, 2 kucuk harf, 1 sayi ve 1 ozel karakterden olusan 6 haneli bir sifre girer
    And Kullaici "New Password" kutusuna 2 buyuk harf, 2 kucuk harf, 2 sayi ve 1 ozel karakterden olusan 7 haneli bir sifre girer
    Then Kullanici 7 haneli sifrenin, sifre gucunu artirdigini goruntuler

  @US08_TC08
  Scenario: TC01 "New password confirmation" onaylanabilmelidir. (Pozitif Senaryo)

    And Kullanici "New Password" kutusuna 2 buyuk harf, 2 kucuk harf, 2 sayi ve 1 ozel karakterden olusan 7 haneli bir sifre girer
    And Kullanici Confirm the New Password kutusuna ayni sifreyi tekrar girer
    And Kullanici Save butonunu tiklar
    And Kullanici username uzerine tiklar
    And Kullanici signout butonuna tiklar
    And Kullanici username uzerine tiklar
    And Kullanici signin butonuna tiklar
    And Kullanici gecerli kullanici adini ve eski sifreyi girer ve sign in butonunu tiklar
    And Kullanici "Failed to sign in! Please check your credentials and try again." uyarisini gordugunu dogrular.
