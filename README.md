# JavaHospitalManagementSystem
Hastane Yönetim Sistemi otomasyon projesine başlarken, öncelikle hakim olmamız gereken konular mevcuttur. Java Swing ve MySQL veri tabanı konuları hakkında bilgi sahibi olmamız gerekli. Projede programdan veri tabanına bir bağlantı söz konusu. Temel olarak bir programlama dilinden (JAVA veya farklı bir dil) bir veritabanına (database) bağlanmak ve veri almak için aşağıdaki üç adım izlenmelidir:
<ul>
<li>Veri tabanına bir bağlantı oluşturmak (connection)</li>
<li>Bağlantı üzerinden bir sorgunun çalıştırılması</li>
<li>Sorgunun sonucunun bir veri yapısı (Datastructure) içerisine alınması</li>
</ul><br>

## Veri Tabanına Bağlantı Oluşturulması
Bu aşamada ve bundan sonraki veri tabanı işlemlerinde JAVA dilinde bulunan java.sql.* paketini kullanıyoruz. Bu paket için;

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img1.jpg)

satırını kodumuzun başına ekliyoruz.<br>
Bağlantıyı oluşturmak için java.sql.Connection sınıfından (class) bir nesne (object) oluşturuyoruz. Bu işlem için aşağıdaki satırı kullanabiliriz:

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img2.jpg)

Yukarıdaki satırda con ismi verilen nesne (object) oluşturulmuş ve yerel bilgisayarda (localhost) bulunan “xyz” isimli veritabanına “seher” kullanıcısı ve “gurel” şifresi ile bağlanmaya çalışmıştır.1527 bilgisayarımızda kurulu olan JavaDB’nin port numarasıdır. 1527 bilgisayarımızda kurulu olan JavaDB’nin port numarasıdır.<br>

## MySQL Veri Tabanı
MySQL, Unix, OS/2 ve Windows sistemlerde kullanılan açık kaynak kodlu bir veri tabanı sistemidir. Bir web tabanlı takip ve otomasyon sistemi için gerekli olan kayıt tutma işlemi MySQL ile çok hızlı ve kolay bir şekilde yapılır. Ayrıca masaüstü programlarınızın verilerinin kaydını tutmak; bu muhasebe programı veya bir kayıt defteri vb. gibi bilgi saklanabilen programlar içinde olabilir. MySQL ile birlikte adını sıkça duyduğunuz phpMyadmin ise MySQL’i kolayca yönetebilmek ve veri tabanı işlemlerini hızlıca yapabilmek için gerekli olan bir programdır. PhpMyadmin ile birçok kaydı veri tabanınıza işleyebilirsiniz. Ayrıca MYSQL hem asp hem php sayfalarına uyumlu bir şekilde çalıştırılabilir. MYSQL veri tabanı erişim süresi oldukça hızlıdır. Gerçekten bu anlamda MYSQL diğer veri tabanı yönetim sistemlerine fark atar. MYSQL veri tabanı yönetimi için birçok program kullanılabilir. PHPMYADMIN adını verdiğimi yönetim programı en eski ve en çok kullanılan programların başında gelir. “MySQL-Front” da son günlerde oldukça fazla kullanılan MYSQL veri tabanı yönetim programlarından biridir.<br>
Aşağıda sizin için bir veri tabanına iki farklı programla da giriş yaptım. Görüldüğü gibi aslında aralarındaki tek fark buttonların yerleri ve isimleri. Sonuçta yaptığınız iş MYSQL tipindeki bir veri tabanını yönetmekten öteye geçmez. Fakat ben PHYMYADMIN kullanmayı tercih ediyorum.

![PHPMyAdmin ile Bağlantı](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img3.jpg)

![MySQL-Front ile Bağlantı](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img4.jpg)

## MySQL Veritabanı Oluşturma
MySQL’e kısa bir giriş yapıp temel bilgileri edindikten sonra veri tabanı oluşturmayı öğrendim. Fakat MySQL veri tabanı oluşturmadan önce bilgisayarımızda MySQL veri tabanı sunucusunun phpmyadmin veritabanı yöneticisinin yüklü olması gerekmekte. Beim bilgisayarımda zaten yüklü bulunan XAMPP uygulaması benim işime yarıyordu. Ben de ondan faydalanarak devam ettim.

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img5.jpg)

XAMPP’i çalıştırdıktan sonra Apache ve MySQL’i start yapmamız gerekiyor. Her hangi bir internet tarayıcısının url adresine <strong> "http://localhost/phpmyadmin/" </strong> yazıyoruz. <br>
Karşımıza gelen ekranda sol kısımda bulunan new linki ile yeni bir veri tabanı oluşturma işlemine başlıyoruz.

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img6.jpg)

Yeni veritabanı oluştur linkine tıkladıktan sonra aşağıdaki şekilde veri tabanı adını ve kullanılacak dil seçeneğini seçiyoruz. <strong>(Turkish_ci ya da utf8_bin) </strong>

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img7.jpg)

Bu işlemden sonra bizden veritabanına tablo eklememiz istenecek. yazar tablosunusu 3 alan olacak şekilde seçiyoruz.

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img8.jpg)

Tablo ekleme işleminden sonraki adım tablo içindeki sütün(alan) isimlerini oluşturma işlemine geçiyoruz. Resimdeki gibi yazar tablosuna 3 tane alan ekleyip. 1. alanı Birincil anahtar ve A_I(Otomatik artan sayı) olarak belirliyoruz.) Yazarın adı ve soyadı alanı metinsel tipte olduğu için onu var_char(25) olarak belirliyoruz. Birincil anahtar işleminde sizden onaylamanız gerektiği ifade edilebilir. Onaylama çıkarsa go butonuna basmanız yeterli olacaktır.

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img9.jpg)

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img10.jpg)

Tabloyu oluşturduktan sonra phpmyadmin ara yüzü ile tablomuza örnek iki tane kayıt girişi yapalım. Yatay menüde Insert/Ekle linkine tıklayıp örnek iki tane girdikten sonra GİT/GO butonuna tıklayınız.

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img11.jpg)

Ve böylece örnek bir veri tabanı oluşturmuş olduk.

## Projenin Çalıştırılması
Projeyi çalıştırmak için extra 3 jar dosyasına ihtiyacımız var. [Buradan](https://github.com/shrgrl/JavaHospitalManagementSystem/tree/master/jarDosyalari) ulaşabilirsiniz. NetBeans ile projeyi başlattıktan sonra Library kısmına bu jar dosyalarını eklememiz gerekli. XAMPP\'de Apache ve MySQL\'i başlattıktan sonra projemizi çalıştırabiliriz.

## Hastane Yönetim Sistemi Proje Arayüzleri

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img12.jpg)

Ana ekranımızda bulunan sekmeler ile işlemler yapabileceğiz.

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img13.jpg)

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img14.jpg)

Projemizin tasarımı bu şekildedir.

## Veri Tabanı
Projemizin veri tabanı 13 adet tablodan oluşuyor. Hasta kabul, fatura, taburcu, doktor, hasta kayıt, oda, servis, hemşire, koğuş olmak üzere tablolar mevcut.

![](https://github.com/shrgrl/JavaHospitalManagementSystem/blob/master/images/img15.jpg)

Tabloların her birine bir takım veriler ekledim. Siz de kendi isteğinize göre çeşitli tablolar ekleyebilirsiniz.
