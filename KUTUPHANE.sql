DROP DATABASE IF EXISTS KutuphaneDB;
create database KutuphaneDB;
use KutuphaneDB;
create table Yazarlar (yazar_id INT auto_increment PRIMARY KEY, yazar_adi VARCHAR(100) NOT NULL, ulke VARCHAR(50) );
create table kitaplar ( kitap_id INT auto_increment PRIMARY KEY,
kitap_adi VARCHAR(150) NOT NULL,
yazar_id INT,
sayfa_sayisi INT,
foreign key (yazar_id) REFERENCES Yazarlar (yazar_id) );
INSERT INTO Yazarlar (yazar_adi, ulke) VALUES ('Tarık Sancar', 'TÜRKİYE');
INSERT INTO Yazarlar (yazar_adi, ulke) VALUES ('Henry Ford' , 'USA');
INSERT INTO Yazarlar (yazar_adi, ulke) VALUES ('Murat D', 'TÜRKİYE');
INSERT INTO Yazarlar (yazar_adi, ulke) VALUES ('AHMET', 'Germany');
INSERT INTO Yazarlar (yazar_adi, ulke) VALUES ('Muhammed Yousseff','Saudi Arabia');
INSERT INTO Yazarlar (yazar_adi, ulke) VALUES ('Arda Guler', 'Türkiye');
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Kürk Mantolu Madonna', 1, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('1984', 2, 352);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Simitçi Tarık', 3, 230);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Beyazlar ve Siyahlar', 4, 245);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Yalancı', 5, 345);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('3 Günlük Dünya', 6, 145);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Şişirme', 3, 324);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('İnsan İsterse', 1, 124);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Hadi Ordan', 1, 345);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Küresel Bunalım', 2, 543);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('İntikam', 3, 145);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Büyük Kayıp', 4, 455);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Alp Dağı', 5, 430);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Yaralı Komutan', 6, 311);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Büyük', 2, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Mahvoluş', 3, 193);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Popüler Kölelik', 2, 354);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Bir Medeniyetin Yıkılışı', 1, 234);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Robotlar ve Dünya', 1, 165);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Robotlar ve Dünya 2', 1, 203);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Katliam', 5, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Yaralı Kuş', 6, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Gemi Adamı', 2, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Gerçekler Şaşırtır', 3, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Asla Pes Etme', 4, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Karanlık Zihin', 5, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Kader', 6, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Çocuklar Masumdur', 4, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Tükeniş', 1, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Yalanlar ve Yılanlar', 1, 160);
INSERT INTO kitaplar (kitap_adi, yazar_id, sayfa_sayisi) VALUES ('Yalanlar ve Yılanlar 2', 1, 160);
alter table kitaplar add column kitap_turu varchar(50);
update KİTAPLAR set kitap_turu = 'Bilim Kurgu' where kitap_id IN (3, 11, 15, 20, 21, 22, 23, 24, 25);
update KİTAPLAR set kitap_turu = 'Roman' where kitap_id IN (1, 2, 4, 5, 6, 31);
update KİTAPLAR set kitap_turu = 'Tarih' where kitap_id IN (7, 8, 9, 10, 12, 26, 27, 28, 29, 30);
update KİTAPLAR set kitap_turu = 'Teknoloji' where kitap_id IN (13, 14, 16, 17, 18, 19);
select kitaplar.kitap_adi, Yazarlar.yazar_adi, kitaplar.sayfa_sayisi, kitaplar.kitap_turu
from kitaplar
INNER JOIN Yazarlar ON kitaplar.yazar_İD = Yazarlar.yazar_id;
