create table departamento(
clave_depto int not null auto_increment,
nombre varchar(30) not null,
presupuesto int,
primary key(clave_depto)
)

insert into departamento(nombre,presupuesto) values ('Personal', 80000);
insert into departamento(nombre,presupuesto) values ('Almacén', 70000);
insert into departamento(nombre,presupuesto) values ('Contabilidad', 60000);
insert into departamento(nombre,presupuesto) values ('Manufactura', 50000);
insert into departamento(nombre,presupuesto) values ('Empaque', 30000);

create table empleados(
clave_empleado varchar(8) not null,
nombre_emp varchar(8),
apellidos varchar(30),
primary key(clave_empleado),
fk_depto int not null,
constraint foreign key (fk_depto) references departamento(clave_depto)
)

insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP01','Armando','López',2);
insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP02','Tatiana','Vargas',1);
insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP03','Laura','Iturria',3);
insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP04','Juan','Pérez',4);
insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP05','Iván','López',4);
insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP06','Margarita','Hernández',1);
insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP07','Jesús','Pérez',3);
insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP08','Tonatiuh','Flores',2);
insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP09','Juan','López',4);
insert into empleados (clave_empleado,nombre_emp,apellidos,fk_depto)values('EMP10','José','Hernández',5);