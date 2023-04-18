create database chuyendoiERD;
use chuyendoiERD;

create table phieuxuat(
id int primary key auto_increment,
ngayxuat date
);

create table vattu(
mavt int primary key auto_increment,
tenvt varchar(255)
);

create table chitietphieuxuat(
id_vattu int references vattu(mavt),
id_phieuxuat int references phieuxuat(id),
dongia float,
soluong int
);

create table phieunhap(
soPN int primary key auto_increment,
ngaynhap date
);

create table chitietphieunhap(
id_vattu int references vattu(mavt),
id_phieunhap int references phieunhap(soPN),
dongianhap int,
soluongnhap int
);

create table DONDH(
soDH int primary key auto_increment,
ngayDH date,
nhacc int primary key auto_increment,
nhacc int references NHACC(maNCC)
);

create table dondhvavattu(
id_vattu int references vattu(mavt),
id_dondh int references DONDH(soDH)
);

create table NHACC(
maNCC int primary key auto_increment,
tenNCC varchar(255),
diachi varchar(255),
sodt int
);

