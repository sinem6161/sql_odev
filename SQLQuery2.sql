--Select
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select * from Customers where City = 'London'

--case insensitive
select * from Products where CategoryID=1 or CategoryID=3

select * from Products where CategoryID=1 and UnitPrice>=10

select * from Products order by CategoryID,ProductName

select * from Products where CategoryID=1 order by UnitPrice desc --default asc(artan)  --desc(düşen)

select count(*) Adet from Products where CategoryID=2

--hangi kategoride kaç farklı ürünümüz var?
select CategoryID,count(*) from Products group by CategoryID

--ürün sayısı 10'dan az olan kategorileri listele.
select CategoryID,count(*) from Products group by CategoryID having count(*)<10

--fiyatı 20'den fazla olanları categoryId ye göre grupla onlardan da sayısı 10'dan az olanları listele
select CategoryID,count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10

--inner join sadece iki tabloda eşleşenleri bir araya getirir, eşleşmeyenleri getirmez.
select Products.ProductID,Products.ProductName, Products.UnitPrice, Categories.CategoryName 
from Products inner join Categories
on Products.CategoryID=Categories.CategoryID
where Products.UnitPrice>10

--DTO Data Transformation Object


select * from Products p inner join [Order Details] od
on p.ProductID=od.ProductID

--left join ( solda olup sağda olmayanları da getir )
select * from Products p left join [Order Details] od
on p.ProductID=od.ProductID

--üstteki iki sorgu da 2155 satır getiriyor, bu hiç satış yapmadığımız ürün yok anlamına geliyor.

select * from Customers c left join Orders o --inner join de 830 satır , left join de 832 satır bu 2 müşteri hiç sipariş vermemiş demektir.
on c.CustomerID=o.CustomerID
where o.CustomerID is null

--birden çok join
select * from Products p inner join [Order Details] od
on p.ProductID=od.ProductID
inner join Orders o 
on o.OrderID=od.OrderID






