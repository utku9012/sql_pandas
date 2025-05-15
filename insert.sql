USE CarRentalDB

INSERT INTO Branch (BranchName,Country,City,District,PhoneNo)
VALUES
('Nexus Rent-a-car Levent','Turkey','Ýstanbul','Levent','02126567471'),
('Nexus Rent-a-car Baþakþehir','Turkey','Ýstanbul','Baþakþehir','2122293139'),
('Nexus Rent-a-car Pendik','Turkey','Ýstanbul','Pendik','2166748397'),
('Nexus Rent-a-car Kadýköy','Turkey','Ýstanbul','Kadýköy','2163555327'),
('Nexus Rent-a-car Beylikdüzü','Turkey','Ýstanbul','Beylikdüzü','2123512020'),
('Nexus Rent-a-car Zeytinburnu','Turkey','Ýstanbul','Zeytinburnu','2125120637'),
('Nexus Rent-a-car Fatih','Turkey','Ýstanbul','Fatih','2123541646');

INSERT INTO VehicleTypes (SegmentLabel,SegmentDesc,DailyFee)
VALUES 
('A', 'They are the smallest vehicles on the market and are suitable for urban use in terms of ease of parking. Prices are also more affordable than other segments.',865.50),
('B', 'It stands out with its affordable prices. It is heavier and more powerful than the A segment. It is one of the best-selling vehicle classes.',1420.32),
('C', '“Compact class” or “lower-middle class”. Due to their medium volume, vehicles in this class are also referred to as “small family cars”. ',1880.85),
('D', '“Upper-middle class” or “large family car”. It is characterized by a spacious interior and a high displacement.',2500.22),
('E', 'They are luxury vehicles of the so-called “upper class” and exceed 5 meters in length. Engine cylinder volumes usually start from 2.0 CC. ',3825.50),
('F', 'It has superior features in terms of workmanship and equipment as well as large interior volume, high engine power and the use of quality materials.',4376.48),
('G', 'Their technical features are predominantly sports vehicles developed for superior performance. They are also superior in terms of technological equipment. Their bodies are divided into types such as convertible, coupe, roadster according to terrain and driving conditions.
',5980.50),
('J', '4x4 SUV and CUV vehicles are included in this class. They have off-road driving capacity in terms of performance characteristics. They are also suitable for urban use in terms of comfort, design and width.
',6500.70),
('M', 'They are multifunctional vehicles that combine the features of more than one segment. Cars in this segment, which is a newer class compared to others, are also called MPVs (Multi Purpose Vehicles).
',8100.20),
('S', 'They are two-door, two-front-seat sports vehicles with high horsepower and superior maneuverability and handling. High performance is the most distinctive feature of this vehicle class.
',8995.95);

INSERT INTO Vehicle (Brand,Model,ModelYear,Color,LicensePlateNumber,SegmentID,BranchID)
VALUES
('Fiat','500',2022,'Red','34 ADP 210',1,4),
('Citroen','C1',2020,'Black','34 KUQ 912',1,3),
('Hyundai','i10',2025,'White','34 OOL 129',1,5),
('Fiat','Panda',2023,'Red','34 MXQ 271',1,4),
('Kia','Picanto',2022,'Black','34 IUS 657',1,3),
('Peugeot','107',2018,'White','34 CVR 638',1,3),
('Citroen','C-Elysee',2025,'Black','34 ZVO 878',2,3),
('Citroen','C3',2025,'Black','34 HGP 360',2,4),
('Dacia','Sandero',2020,'White','34 SOK 327',2,4),
('Fiat','Albea',2022,'White','34 PIU 547',2,3),
('Fiat','Punto',2023,'Black','34 WDT 688',2,3),
('Ford','Fiesta',2020,'Gray','34 KJH 478',2,4),
('Honda','City',2025,'Blue','34 JHI 328',2,3),
('Hyundai','Ý20',2025,'White','34 TUQ 548',2,5),
('Hyundai','Accent Blue',2018,'White','34 IOP 552',2,4),
('Nissan','Juke',2025,'Red','34 MNB 894',2,3),
('Peugeot','208',2025,'Green','34 OMO 224',2,4),
('Peugeot','2008',2025,'Orange','34 VVS 683',2,7),
('Renault','Clio',2020,'White','34 KKJ 857',2,3),
('Renault','Symbol',2021,'White','34 OSQ 695',2,3),
('Seat','Ýbiza',2022,'Blue','34 ÝPS 887',2,3),
('Seat','Toledo',2025,'Black','34 BBV 208',2,6),
('Volkswagen','Polo',2022,'White','34 CPF 251',2,4),
('Audi','A3',2020,'White','34 UKJ 288',3,4),
('Chevrolet','Cruze',2013,'Gray','34 OÝC 369',3,3),
('Citroen','C4',2023,'Black','34 NBW 774',3,4),
('Dacia','Duster',2022,'White','34 IIO 478',3,7),
('Fiat','Linea',2017,'White','34 KGJ 259',3,3),
('Fiat','Egea',2025,'Black','34 OOP 781',3,4),
('Ford','Focus',2025,'White','34 ZOI 239',3,3),
('Honda','Civic',2025,'Silver','34 IUY 182',3,4),
('Hyundai','Elantra',2023,'Black','34 YGH 485',3,3),
('Kia','Sportage',2023,'White','34 HGF 729',3,4),
('Nissan','Qashqai',2025,'Blue','34 ERB 523',3,2),
('Renault','Megane',2022,'Black','34 LLK 841',3,1),
('Renault','Fluence',2021,'Gray','34 POL 148',3,3),
('Toyota','Corolla',2019,'White','34 YUG 758',3,7),
('Alfa Romeo','Giulia',2023,'White','34 RFD 453',4,1),
('Citroen','Grand C4 Picasso',2025,'Black','34 CLI 398',4,7),
('Honda','CRV',2025,'White','34 VCO 992',4,2),
('Opel','Insignia',2021,'Beige','34 AIM 629',4,3),
('Peugeot','508',2025,'Red','34 FPL 059',4,4),
('Renault','Talisman',2025,'Black','34 EAS 704',4,2),
('Audi','A6',2020,'Black','34 FGL 187',5,6),
('Mercedes','E180',2018,'White','34 ZAF 106',5,2),
('Volvo','S80',2022,'White','34 CVO 759',5,6),
('Volkswagen','Amarok',2019,'White','34 UGL 710	',5,3),
('BMW','520i',2022,'White','34 CLD 508',5,2),
('Jaguar','XJ',2014,'Black','34 TYB 664',6,5),
('Land Rover	','Range Rover',2020,'White','34 E 9175',6,2),
('Mercedes','63 AMG',2019,'White','34 HBK 62',6,7),
('Mercedes','S 350',2015,'Black','34 A 1928',6,2),
('Porsche','Cayenne',2028,'White','34 KAN 458',6,5),
('Volvo','XC90',2020,'Gray','34 QPZ 603',6,1),
('Alfa Romeo','Spider',2008,'Red','34 MJG 41',7,2),
('BMW','Z4',2021,'Blue','34 RL 130',7,5),
('Jaguar','F Type',2015,'White','34 XV 3910',7,6),
('Porsche','911',2016,'White','34 VXA 34',7,2),
('Audi','Q7',2018,'Black','34 TCU 11',8,1),
('BMW','X5',2021,'Gray','34 SI 373',8,1),
('Jeep','Cherokee',2022,'Black','34 UAG 64',8,2),
('Skoda','Kodiaq',2025,'Beige','34 FNS 268',8,1),
('Mazda','5',2020,'Black','34 JQZ 23',9,1),
('Nissan','Note',2021,'White','34 XCX 924',9,3),
('Volkswagen','Touran',2023,'Black','34 OB 122',9,7),
('Seat','Altea XL',2019,'Black','34 MSI 317',9,1),
('Aston Martin','V8 Vantage S',2023,'Black','34 BUX 66',10,1),
('Lamborghini','Huracan LP 610-4',2020,'Black','34 VV 8661',10,5),
('Lexus','LFA',2022,'Black','34 WXA 55',10,2),
('McLaren','675LT',2020,'Black','34 ICV 82',10,6);

INSERT INTO Customer (FirstName, LastName, Country, DateOfBirth, Email, City, District, PhoneNo, DriverLicenseNumber)
VALUES
('Ahmet', 'Yýlmaz', 'Turkey', '2000-03-15', 'ahmet.yilmaz@gmail.com', 'Ýstanbul','Kadýköy', '05551234567', 123456),
('Elif', 'Kara', 'Turkey', '1995-06-22', 'elif.kara@gmail.com', 'Ankara','Çankaya', '05329876543', 654321),
('Ayþe', 'Demir', 'Turkey', '1990-02-11', 'ayse.demir@gmail.com', 'Ýzmir','Konak', '05441239876', 998877),
('Mehmet', 'Öztürk', 'Turkey', '1998-08-03', 'mehmet.ozturk@gmail.com', 'Bursa','Nilüfer', '05331234567', 445566),
('Fatma', 'Aydýn', 'Turkey', '1985-12-30', 'fatma.aydin@gmail.com', 'Antalya','Muratpaþa', '05071239876', 778899),
('Ali', 'Çelik', 'Turkey', '1996-09-07', 'ali.celik@gmail.com', 'Eskiþehir','Tepebaþý', '05439871234', 223344),
('Yusuf', 'Koç', 'Turkey', '1992-11-20', 'yusuf.koc@gmail.com', 'Adana','Seyhan', '05361234598', 667788),
('Hakan', 'Arslan', 'Turkey', '1987-04-17', 'hakan.arslan@gmail.com', 'Samsun','Ýlkadým', '05051239871', 889900),
('Anna', 'Schmidt', 'Germany', '1993-10-09', 'anna.schmidt@gmail.com', 'Berlin','Mitte', '05355892020', 123789),
('Canan', 'Yýldýz', 'Turkey', '2001-05-25', 'canan.yildiz@gmail.com', 'Gaziantep','Þahinbey', '05559876543', 334455),
('Zeynep', 'Þahin', 'Turkey', '1997-01-12', 'zeynep.sahin@gmail.com', 'Kayseri','Kocasinan', '05321239876', 182233),
('Mustafa', 'Erdoðan', 'Turkey', '1989-09-04', 'mustafa.erdogan@gmail.com', 'Trabzon','Ortahisar', '05441236789', 445566),
('Buse', 'Kurt', 'Turkey', '2002-02-28', 'buse.kurt@gmail.com', 'Sakarya','Serdivan', '05071236547', 778899),
('Eren', 'Yavuz', 'Turkey', '1993-06-14', 'eren.yavuz@gmail.com', 'Malatya','Battalgazi', '05339874561', 667788),
('Melisa', 'Aksoy', 'Turkey', '1996-07-03', 'melisa.aksoy@gmail.com', 'Mersin','Yeniþehir', '05559874321', 334411),
('Burak', 'Aslan', 'Turkey', '1999-04-08', 'burak.aslan@outlook.com', 'Ýstanbul','Beþiktaþ', '05331234521', 120045),
('Nazlý', 'Kaya', 'Turkey', '1991-12-19', 'nazli.kaya@outlook.com', 'Ankara','Etimesgut', '05469871234', 459830),
('Furkan', 'Tuna', 'Turkey', '1996-11-23', 'furkan.tuna@outlook.com', 'Denizli','Merkezefendi', '05071234789', 993456),
('Gamze', 'Özdemir', 'Turkey', '2000-08-01', 'gamze.ozdemir@outlook.com', 'Bolu','Merkez', '05553214567',334478),
('Cem', 'Bozkurt', 'Turkey', '1984-06-16', 'cem.bozkurt@outlook.com', 'Tekirdað','Çorlu', '05347894561', 889921),
('Merve', 'Ay', 'Turkey', '1995-03-21', 'merve.ay@outlook.com', 'Kocaeli','Ýzmit', '05441239876',778800),
('Taha', 'Dinç', 'Turkey', '1998-10-29', 'taha.dinc@outlook.com', 'Erzurum','Yakutiye', '05059871236', 447755),
('Seda', 'Türkmen', 'Turkey', '1992-05-30', 'seda.turkmen@outlook.com', 'Aydýn','Efeler', '05557892145', 991122),
('Onur', 'Ýlhan', 'Turkey', '1987-08-07', 'onur.ilhan@outlook.com', 'Balýkesir','Altýeylül', '05336789120', 110022),
('Duygu', 'Karaca', 'Turkey', '2001-01-13', 'duygu.karaca@outlook.com', 'Konya','Selçuklu', '05443459871', 998877),
('Liam', 'Smith', 'USA', '1990-04-15', 'liam.smith@gmail.com', 'New York', 'Manhattan', '0012025550171', 802401),
('Emma', 'Johnson', 'USA', '1992-09-28', 'emma.johnson@gmail.com', 'Los Angeles', 'Hollywood', '0012135550123', 725002),
('Noah', 'Brown', 'Canada', '1988-12-03', 'noah.brown@gmail.com', 'Toronto', 'North York', '0014165550110', 214003),
('Olivia', 'Martin', 'UK', '1991-06-22', 'olivia.martin@gmail.com', 'London', 'Camden', '00442012345678', 987504),
('Lucas', 'Schneider', 'Germany', '1989-03-11', 'lucas.schneider@gmail.com', 'Hamburg', 'Altona', '0049401234567', 862005),
('Mia', 'Müller', 'Germany', '1993-07-09', 'mia.mueller@gmail.com', 'Berlin', 'Charlottenburg', '0049301234567', 198006),
('Ethan', 'Williams', 'Australia', '1990-11-17', 'ethan.williams@gmail.com', 'Sydney', 'Parramatta', '0061291234567', 008007),
('Charlotte', 'Taylor', 'Australia', '1994-02-08', 'charlotte.taylor@outlook.com', 'Melbourne', 'Carlton', '0061391234567',254896),
('James', 'Dupont', 'France', '1987-05-27', 'james.dupont@gmail.com', 'Paris', 'Montmartre', '0033141234567', 875009),
('Isabella', 'Rossi', 'Italy', '1991-01-14', 'isabella.rossi@gmail.com', 'Rome', 'Trastevere', '0039061234567', 556010),
('Ahmad', 'Hassan', 'Egypt', '1985-09-19', 'ahmad.hassan@gmail.com', 'Cairo', 'Nasr City', '0020221234567', 968011),
('Aisha', 'Khan', 'Pakistan', '1992-12-10', 'aisha.khan@outlook.com', 'Lahore', 'Gulberg', '0092421234567', 225012),
('Kenji', 'Takahashi', 'Japan', '1990-06-06', 'kenji.takahashi@gmail.com', 'Tokyo', 'Shinjuku', '0081331234567', 315013),
('Yuki', 'Sato', 'Japan', '1995-03-03', 'yuki.sato@gmail.com', 'Osaka', 'Kita', '0081661234567', 149014),
('Chen', 'Wei', 'China', '1989-08-24', 'chen.wei@gmail.com', 'Beijing', 'Chaoyang', '0086101234567', 267015),
('Lina', 'Zhang', 'China', '1993-04-18', 'lina.zhang@hotmail.com', 'Shanghai', 'Pudong', '0086211234567', 869016),
('Ivan', 'Petrov', 'Russia', '1987-02-12', 'ivan.petrov@gmail.com', 'Moscow', 'Tverskoy', '0074951234567', 475017),
('Anastasia', 'Ivanova', 'Russia', '1992-10-07', 'anastasia.ivanova@gmail.com', 'Saint Petersburg', 'Admiralteysky', '0078121234567', 885018),
('Pedro', 'Gomez', 'Mexico', '1990-05-25', 'pedro.gomez@gmail.com', 'Mexico City', 'Coyoacan', '0052551234567', 209019),
('Lucia', 'Hernandez', 'Mexico', '1994-08-02', 'lucia.hernandez@hotmail.com', 'Guadalajara', 'Zapopan', '0052331234567', 018020),
('Omar', 'Al-Farsi', 'UAE', '1988-11-13', 'omar.alfarsi@gmail.com', 'Dubai', 'Deira', '0097141234567', 036021),
('Fatima', 'Yousef', 'UAE', '1991-06-30', 'fatima.yousef@gmail.com', 'Abu Dhabi', 'Al Zahiyah', '0097121234567', 862022),
('Mateo', 'Silva', 'Argentina', '1986-10-10', 'mateo.silva@hotmail.com', 'Buenos Aires', 'Palermo', '0054111234567', 428023),
('Camila', 'Lopez', 'Argentina', '1993-07-20', 'camila.lopez@gmail.com', 'Cordoba', 'Nueva Cordoba', '0054351234567', 038024),
('Ali', 'Kaya', 'Turkey', '1995-01-01', 'ali.kaya@gmail.com', 'Ýstanbul', 'Üsküdar', '05051234567', 183025);


INSERT INTO Employee (FirstName, LastName, DateOfBirth, Email, Position, Department, BranchID)
VALUES
-- Branch 1
('Ali', 'Yýlmaz', '1999-06-18', 'ali.yilmaz@noxus.com.tr', 'Cleaner', 'Maintenance', 1),
('Zeynep', 'Kara', '1997-02-14', 'zeynep.kara@noxus.com.tr', 'Customer Representative', 'Sales', 1),
('Mert', 'Aslan', '1999-09-05', 'mert.aslan@noxus.com.tr', 'Customer Representative', 'Sales', 1),
('Elif', 'Demir', '1994-12-22', 'elif.demir@noxus.com.tr', 'Customer Representative', 'Sales', 1),
('Burak', 'Þahin', '1984-07-03', 'burak.sahin@noxus.com.tr', 'Branch Manager', 'Management', 1),
('Cem', 'Eren', '1996-03-10', 'cem.eren@noxus.com.tr', 'Technician', 'Maintenance', 1),
('Gamze', 'Koç', '1993-08-27', 'gamze.koc@noxus.com.tr', 'Technician', 'Maintenance', 1),
('Ayþe', 'Çelik', '1989-11-15', 'ayse.celik@noxus.com.tr', 'Accountant', 'Finance', 1),

-- Branch 2
('Seda', 'Polat', '2002-10-05', 'seda.polat@noxus.com.tr', 'Cleaner', 'Maintenance', 2),
('Onur', 'Yalçýn', '1998-01-30', 'onur.yalcin@noxus.com.tr', 'Customer Representative', 'Sales', 2),
('Baran', 'Ateþ', '1991-09-21', 'baran.ates@noxus.com.tr', 'Customer Representative', 'Sales', 2),
('Duygu', 'Ersoy', '1999-04-09', 'duygu.ersoy@noxus.com.tr', 'Customer Representative', 'Sales', 2),
('Tolga', 'Akýn', '1986-05-11', 'tolga.akin@noxus.com.tr', 'Branch Manager', 'Management', 2),
('Buse', 'Arslan', '2000-06-01', 'buse.arslan@noxus.com.tr', 'Technician', 'Maintenance', 2),
('Hakan', 'Çetin', '1993-07-18', 'hakan.cetin@noxus.com.tr', 'Technician', 'Maintenance', 2),
('Nehir', 'Yavuz', '1996-11-23', 'nehir.yavuz@noxus.com.tr', 'Accountant', 'Finance', 2),

-- Branch 3
('Emre', 'Kurt', '1994-04-08', 'emre.kurt@noxus.com.tr', 'Cleaner', 'Maintenance', 3),
('Naz', 'Aydýn', '1996-07-19', 'naz.aydin@noxus.com.tr', 'Customer Representative', 'Sales', 3),
('Kenan', 'Doðan', '1990-10-13', 'kenan.dogan@noxus.com.tr', 'Customer Representative', 'Sales', 3),
('Melis', 'Uçar', '1997-02-24', 'melis.ucar@noxus.com.tr', 'Customer Representative', 'Sales', 3),
('Uður', 'Keskin', '1985-01-17', 'ugur.keskin@noxus.com.tr', 'Branch Manager', 'Management', 3),
('Ýrem', 'Bozkurt', '1999-09-03', 'irem.bozkurt@noxus.com.tr', 'Technician', 'Maintenance', 3),
('Kaan', 'Güler', '1993-03-26', 'kaan.guler@noxus.com.tr', 'Technician', 'Maintenance', 3),
('Eda', 'Þimþek', '1994-06-12', 'eda.simsek@noxus.com.tr', 'Accountant', 'Finance', 3),

-- Branch 4
('Mehmet', 'Arý', '1999-01-08', 'mehmet.ari@noxus.com.tr', 'Cleaner', 'Maintenance', 4),
('Zehra', 'Koç', '1995-12-01', 'zehra.koc@noxus.com.tr', 'Customer Representative', 'Sales', 4),
('Orhan', 'Toprak', '1996-04-14', 'orhan.toprak@noxus.com.tr', 'Customer Representative', 'Sales', 4),
('Sinem', 'Balcý', '1999-11-22', 'sinem.balci@noxus.com.tr', 'Customer Representative', 'Sales', 4),
('Faruk', 'Güneþ', '1989-05-30', 'faruk.gunes@noxus.com.tr', 'Branch Manager', 'Management', 4),
('Tuna', 'Erkan', '1991-08-17', 'tuna.erkan@noxus.com.tr', 'Technician', 'Maintenance', 4),
('Ezgi', 'Yýldýz', '1997-10-11', 'ezgi.yildiz@noxus.com.tr', 'Technician', 'Maintenance', 4),
('Yasemin', 'Sarý', '1993-02-06', 'yasemin.sari@noxus.com.tr', 'Accountant', 'Finance', 4),

-- Branch 5
('Halil', 'Deniz', '2001-07-23', 'halil.deniz@noxus.com.tr', 'Cleaner', 'Maintenance', 5),
('Ýlayda', 'Türkmen', '1999-03-04', 'ilayda.turkmen@noxus.com.tr', 'Customer Representative', 'Sales', 5),
('Serkan', 'Yüce', '1994-05-10', 'serkan.yuce@noxus.com.tr', 'Customer Representative', 'Sales', 5),
('Pelin', 'Kaya', '1997-08-28', 'pelin.kaya@noxus.com.tr', 'Customer Representative', 'Sales', 5),
('Taner', 'Altun', '1983-09-06', 'taner.altun@noxus.com.tr', 'Branch Manager', 'Management', 5),
('Berk', 'Taþ', '1999-01-29', 'berk.tas@noxus.com.tr', 'Technician', 'Maintenance', 5),
('Selin', 'Öz', '1996-12-18', 'selin.oz@noxus.com.tr', 'Technician', 'Maintenance', 5),
('Nursel', 'Aksoy', '1989-10-09', 'nursel.aksoy@noxus.com.tr', 'Accountant', 'Finance', 5),

-- Branch 6
('Yunus', 'Avcý', '1995-06-20', 'yunus.avci@noxus.com.tr', 'Cleaner', 'Maintenance', 6),
('Tuðba', 'Er', '1993-03-14', 'tugba.er@noxus.com.tr', 'Customer Representative', 'Sales', 6),
('Can', 'Bilgin', '1999-05-17', 'can.bilgin@noxus.com.tr', 'Customer Representative', 'Sales', 6),
('Merve', 'Kurtuluþ', '2000-02-07', 'merve.kurtulus@noxus.com.tr', 'Customer Representative', 'Sales', 6),
('Okan', 'Sert', '1987-11-29', 'okan.sert@noxus.com.tr', 'Branch Manager', 'Management', 6),
('Sibel', 'Demirtaþ', '1992-08-02', 'sibel.demirtas@noxus.com.tr', 'Technician', 'Maintenance', 6),
('Enes', 'Yurt', '1999-10-25', 'enes.yurt@noxus.com.tr', 'Technician', 'Maintenance', 6),
('Aylin', 'Ulu', '1991-09-12', 'aylin.ulu@noxus.com.tr', 'Accountant', 'Finance', 6),
('Amine', 'Yýldýrým', '2000-11-30', 'amine.yildirim@noxus.com.tr', 'Intern', 'Management', 6),

-- Branch 7
('Furkan', 'Köse', '1997-06-04', 'furkan.kose@noxus.com.tr', 'Cleaner', 'Maintenance', 7),
('Melike', 'Görkem', '1994-12-07', 'melike.gorkem@noxus.com.tr', 'Customer Representative', 'Sales', 7),
('Tayfun', 'Ýnce', '1996-01-10', 'tayfun.ince@noxus.com.tr', 'Customer Representative', 'Sales', 7),
('Sena', 'Boz', '1999-09-28', 'sena.boz@noxus.com.tr', 'Customer Representative', 'Sales', 7),
('Kadir', 'Demirci', '1983-04-11', 'kadir.demirci@noxus.com.tr', 'Branch Manager', 'Management', 7),
('Nil', 'Acar', '1999-02-16', 'nil.acar@noxus.com.tr', 'Technician', 'Maintenance', 7),
('Tuncay', 'Özer', '1990-03-31', 'tuncay.ozer@noxus.com.tr', 'Technician', 'Maintenance', 7),
('Utku', 'Öztürk', '2000-07-15', 'utku.ozturk@noxus.com.tr', 'Intern', 'Finance', 7),
('Baran', 'Kalkan', '1980-11-02', 'baran.kalkan@noxus.com.tr', 'Security Officer', 'Security', 7),
('Esra', 'Kalkan', '1995-05-06', 'esra.kalkan@noxus.com.tr', 'Accountant', 'Finance', 7);



INSERT INTO Rental (CustomerID, VehicleID, BranchID, RentDate, ReturnDate)
VALUES 
(20, 55, 2, '2025-02-01', '2025-02-08');

UPDATE Rental
SET ReturnDate = '2025-04-01' 
WHERE RentDate = '2025-06-25';