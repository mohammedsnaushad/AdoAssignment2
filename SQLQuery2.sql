use AdoDemo;
create table Bus(BusId int identity primary key,BoardingPoint Varchar(5) not null,TravelDate Date not null,
Amount decimal(5,2),rating int );

insert into Bus values ('BGL','06-18-2017',400.65,2);
insert into Bus values ('HYD','10-05-2017',600.00,3);
insert into Bus values ('CHN','07-25-2016',445.95,3);
insert into Bus values ('PUN','12-10-2017',543.00,4);
insert into Bus values ('MUM','01-28-2017',500.50,4);
insert into Bus values ('PUN','03-27-2016',333.55,3);
insert into Bus values ('MUM','11-06-2016',510.00,4);

select * from Bus;

create procedure Insertrow
@Boardingpoint varchar(5),@TravelDate date,@Amount decimal(5,2),@rating int,@BusId int out
as 
Begin
insert into Bus values(@Boardingpoint,@TravelDate,@Amount,@rating)
select @BusId =SCOPE_IDENTITY();
End

select Boardingpoint,TravelDate from Bus where Amount >450.00

select BusId,BoardingPoint from Bus where TravelDate = '2017-12-10';