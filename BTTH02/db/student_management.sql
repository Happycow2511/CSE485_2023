-- Table SinhVien (Student)
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name NVARCHAR(100),
    DateOfBirth DATE,
    Email NVARCHAR(100),
    ContactInfo NVARCHAR(100)
);
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (1, 'Jean Klewi', '2023-04-03', 'jklewi0@dropbox.com', '566-506-6978');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (2, 'Doralin Minci', '2023-03-28', 'dminci1@weibo.com', '989-821-1036');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (3, 'Barry Alliberton', '2022-11-29', 'balliberton2@opera.com', '283-289-4862');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (4, 'Dale Alben', '2023-02-02', 'dalben3@reverbnation.com', '618-213-1578');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (5, 'Asia Brownlie', '2022-10-14', 'abrownlie4@nba.com', '862-921-5334');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (6, 'Justinian Benneton', '2022-08-11', 'jbenneton5@paypal.com', '586-512-1025');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (7, 'Robbie Mapam', '2022-11-25', 'rmapam6@yellowpages.com', '522-697-9639');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (8, 'Chandler McGivena', '2023-03-30', 'cmcgivena7@wunderground.com', '357-161-5710');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (9, 'Celie Dallemore', '2023-04-17', 'cdallemore8@hp.com', '771-970-3087');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (10, 'Andy Klass', '2023-01-03', 'aklass9@de.vu', '608-803-5716');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (11, 'Oliy Passingham', '2023-03-31', 'opassinghama@creativecommons.org', '909-269-4773');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (12, 'Myrlene Inman', '2022-12-14', 'minmanb@discuz.net', '799-904-9883');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (13, 'Karlik Stair', '2022-08-26', 'kstairc@ucoz.com', '340-616-1720');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (14, 'Quill Peacher', '2023-03-02', 'qpeacherd@bluehost.com', '488-412-2672');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (15, 'Gardy Lis', '2022-07-16', 'glise@digg.com', '359-490-0952');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (16, 'Alejoa Lewsley', '2023-01-02', 'alewsleyf@geocities.com', '960-207-5749');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (17, 'Tatum Surmeyers', '2022-09-13', 'tsurmeyersg@csmonitor.com', '951-544-3655');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (18, 'Lethia Eshmade', '2022-08-31', 'leshmadeh@msn.com', '256-250-2049');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (19, 'Alan Oldale', '2023-03-12', 'aoldalei@yale.edu', '312-536-2908');
insert into Student (StudentID, Name, DateOfBirth, Email, ContactInfo) values (20, 'Lewie Brien', '2023-01-23', 'lbrienj@rakuten.co.jp', '104-617-7124');

-- Table KhoaHoc (Classes)
CREATE TABLE Classes (
    ClassesID INT PRIMARY KEY,
    ClassesCode NVARCHAR(50),
    Title NVARCHAR(100),
    Description NVARCHAR(200)
);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (1, 1, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (2, 2, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (3, 3, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (4, 4, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (5, 5, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (6, 6, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (7, 7, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (8, 8, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (9, 9, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (10, 10, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (11, 11, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (12, 12, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (13, 13, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (14, 14, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (15, 15, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (16, 16, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (17, 17, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (18, 18, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (19, 19, null, null);
insert into Classes (ClassesID, ClassesCode, Title, Description) values (20, 20, null, null);

-- Table SuThamDu (Attendance)
CREATE TABLE Attendance (
    Date DATE,
    ClassesID INT,
    StudentID INT,
    AttendanceStatus NVARCHAR(20),
    PRIMARY KEY (Date, ClassesID, StudentID),
    FOREIGN KEY (ClassesID) REFERENCES KhoaHoc(ClassesID),
    FOREIGN KEY (StudentID) REFERENCES SinhVien(StudentID)
);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2023-01-29', 1, 1, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-08-22', 2, 2, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-11-01', 3, 3, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-07-13', 4, 4, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-09-16', 5, 5, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-06-23', 6, 6, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-09-04', 7, 7, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-12-14', 8, 8, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2023-02-14', 9, 9, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-11-17', 10, 10, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-11-13', 11, 11, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-11-24', 12, 12, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-09-08', 13, 13, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2023-03-20', 14, 14, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2023-04-24', 15, 15, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2023-01-29', 16, 16, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-08-25', 17, 17, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2022-06-06', 18, 18, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2023-01-11', 19, 19, null);
insert into Attendance (Date, ClassesID, StudentID, AttendanceStatus) values ('2023-05-02', 20, 20, null);

-- Table GiaoVien (Teacher)
CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    ContactInfo NVARCHAR(100)
);
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (1, 'Findlay Christophers', 'fchristophers0@rakuten.co.jp', '148-914-1454');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (2, 'Grenville Peddersen', 'gpeddersen1@theglobeandmail.com', '164-539-7007');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (3, 'Hagen Silvers', 'hsilvers2@wired.com', '129-550-5696');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (4, 'Cornie Fransoni', 'cfransoni3@slate.com', '836-518-2389');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (5, 'Brenden Briggdale', 'bbriggdale4@theglobeandmail.com', '931-973-6360');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (6, 'Artair Lawleff', 'alawleff5@disqus.com', '843-990-9420');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (7, 'Darnall Ranner', 'dranner6@tinypic.com', '196-309-0260');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (8, 'Sophey Eastcourt', 'seastcourt7@usa.gov', '750-868-3840');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (9, 'Pavel Fonzone', 'pfonzone8@hibu.com', '742-293-9511');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (10, 'Joshua Fagan', 'jfagan9@hexun.com', '430-397-2524');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (11, 'Bevvy Eldin', 'beldina@mapquest.com', '924-333-7125');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (12, 'Rafferty Wannell', 'rwannellb@parallels.com', '619-746-9004');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (13, 'Werner Joreau', 'wjoreauc@weebly.com', '305-503-1339');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (14, 'Dasi Dallmann', 'ddallmannd@nps.gov', '307-579-2183');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (15, 'Giffy Allabush', 'gallabushe@netscape.com', '263-646-5369');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (16, 'Sigmund Blasik', 'sblasikf@smugmug.com', '323-141-4558');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (17, 'Niki Remnant', 'nremnantg@mozilla.org', '907-427-6326');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (18, 'Leena Ehlerding', 'lehlerdingh@ning.com', '192-582-2839');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (19, 'Carmella Anthonsen', 'canthonseni@baidu.com', '614-841-4649');
insert into Teacher (TeacherID, Name, Email, ContactInfo) values (20, 'Clyde MacSherry', 'cmacsherryj@usda.gov', '863-566-6514');

-- Table LopHoc (Class)
CREATE TABLE Class (
    ClassID INT PRIMARY KEY,
    ClassesID INT,
    TeacherID INT,
    TimeRange NVARCHAR(100),
    FOREIGN KEY (ClassesID) REFERENCES KhoaHoc(ClassesID),
    FOREIGN KEY (TeacherID) REFERENCES GiaoVien(TeacherID)
);
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (1, 1, 1, '2023-01-28');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (2, 2, 2, '2023-04-22');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (3, 3, 3, '2023-04-05');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (4, 4, 4, '2023-01-20');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (5, 5, 5, '2023-02-23');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (6, 6, 6, '2023-03-27');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (7, 7, 7, '2023-04-03');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (8, 8, 8, '2022-11-20');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (9, 9, 9, '2022-08-29');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (10, 10, 10, '2022-09-19');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (11, 11, 11, '2022-12-17');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (12, 12, 12, '2022-07-22');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (13, 13, 13, '2022-11-19');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (14, 14, 14, '2023-02-13');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (15, 15, 15, '2022-05-31');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (16, 16, 16, '2022-12-12');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (17, 17, 17, '2022-08-09');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (18, 18, 18, '2022-09-27');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (19, 19, 19, '2022-06-10');
insert into Class (ClassID, ClassesID, TeacherID, TimeRange) values (20, 20, 20, '2022-07-29');

-- Table BaoCao (Report)
CREATE TABLE Report (
    ReportID INT PRIMARY KEY,
    ClassesID INT,
    StudentID INT,
    StatisticalData NVARCHAR(200),
    FOREIGN KEY (ClassesID) REFERENCES KhoaHoc(ClassesID),
    FOREIGN KEY (StudentID) REFERENCES SinhVien(StudentID)
);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (1, 1, 1, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (2, 2, 2, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (3, 3, 3, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (4, 4, 4, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (5, 5, 5, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (6, 6, 6, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (7, 7, 7, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (8, 8, 8, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (9, 9, 9, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (10, 10, 10, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (11, 11, 11, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (12, 12, 12, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (13, 13, 13, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (14, 14, 14, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (15, 15, 15, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (16, 16, 16, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (17, 17, 17, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (18, 18, 18, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (19, 19, 19, null);
insert into Report (ReportID, ClassesID, StudentID, StatisticalData) values (20, 20, 20, null);

-- Table XacThuc (Authentication)
CREATE TABLE Authentication (
    UserID INT PRIMARY KEY,
    Username NVARCHAR(50),
    Password NVARCHAR(50),
    Role NVARCHAR(20)
);
insert into Authentication (UserID, Username, Password, Role) values (1, 'Launce', 'flxEcfDy', 'Construction Foreman');
insert into Authentication (UserID, Username, Password, Role) values (2, 'Care', '9MjWoY59bt', 'Surveyor');
insert into Authentication (UserID, Username, Password, Role) values (3, 'Hervey', 'lM3ONjO', 'Subcontractor');
insert into Authentication (UserID, Username, Password, Role) values (4, 'Mora', '6y90t9I', 'Construction Manager');
insert into Authentication (UserID, Username, Password, Role) values (5, 'Aileen', 's9juO4J7', 'Construction Manager');
insert into Authentication (UserID, Username, Password, Role) values (6, 'Garv', 'Fi9fNH4P1Vyb', 'Surveyor');
insert into Authentication (UserID, Username, Password, Role) values (7, 'Alison', 'demYN3LrJR', 'Project Manager');
insert into Authentication (UserID, Username, Password, Role) values (8, 'Wainwright', 'qmSRr8', 'Surveyor');
insert into Authentication (UserID, Username, Password, Role) values (9, 'Britte', '8gtDMF', 'Construction Foreman');
insert into Authentication (UserID, Username, Password, Role) values (10, 'Daryl', 'kNGKupT', 'Construction Expeditor');
insert into Authentication (UserID, Username, Password, Role) values (11, 'Sargent', 'jn6nMr', 'Electrician');
insert into Authentication (UserID, Username, Password, Role) values (12, 'Chucho', '166ucLfEow0x', 'Construction Expeditor');
insert into Authentication (UserID, Username, Password, Role) values (13, 'Marrissa', 'GYB59al3PQ', 'Project Manager');
insert into Authentication (UserID, Username, Password, Role) values (14, 'Skye', 'b6USSM3', 'Construction Manager');
insert into Authentication (UserID, Username, Password, Role) values (15, 'Hadleigh', 'UfoD2oJo9plF', 'Engineer');
insert into Authentication (UserID, Username, Password, Role) values (16, 'Rina', '7tKGb7a', 'Estimator');
insert into Authentication (UserID, Username, Password, Role) values (17, 'Kay', '22GyJENImK', 'Surveyor');
insert into Authentication (UserID, Username, Password, Role) values (18, 'Dwight', 'kwewCQ1RQ8RH', 'Supervisor');
insert into Authentication (UserID, Username, Password, Role) values (19, 'Emalia', 'elV06wmi', 'Project Manager');
insert into Authentication (UserID, Username, Password, Role) values (20, 'Norrie', 'tE3ZIydSeGN', 'Supervisor');
