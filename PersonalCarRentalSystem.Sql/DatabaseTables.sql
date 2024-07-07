--TABLE CAR MAKE
create table CarMake(
	Id BIGSERIAL primary key,
	Name VARCHAR(100) unique not null
)

--TABLE CAR GROUP
create table CarGroup(
	Id BIGSERIAL primary key,
	DailyRentalRate numeric not null,
	DailyInsuranceRate numeric not null,
	InsuranceDeposit numeric not null
)

--TABLE CAR MODEL
create table CarModel(
	Id BIGSERIAL primary key,
	Model VARCHAR(100) not null,
	Year INTEGER not null,
	MakeId BIGINT references CarMake(Id),
	GroupId BIGINT references CarGroup(Id)
)

--TABLE ADDRESS
create table Address(
	Id BIGSERIAL primary key,
	Country VARCHAR(100) not null,
	State VARCHAR(100) not null,
	City VARCHAR(100) not null,
	Location VARCHAR(200) not null,
	PostalCode VARCHAR(50) not null,
	constraint unique_address unique(Country, State, City, location, PostalCode)
)

--TABLE RENTAL AGENCY
create table RentalAgency(
	Id BIGSERIAL primary key,
	Name VARCHAR(200) not null,
	AddressId BIGINT references Address(Id)
)

--TABLE OPERATING HOUR 
create table OperatingHour(
	Id BIGSERIAL primary key,
	DayOfWeek VARCHAR(20) not null,
	OpeningTime TIME,
	ClosingTime TIME
)

--JOIN TABLE OPERATING HOUR + RENTAL AGENCY
create table RentalAgencyOperatingHour(
	Id BIGSERIAL primary key,
	OperatingHourId BIGINT references OperatingHour(Id),
	RentalAgencyId BIGINT references OperatingHour(Id)
)

--JOIN TABLE CAR GROUP + RENTAL AGENCY
create table RentalAgencyCarGroup(
	Id BIGSERIAL primary key,
	CarGroupId BIGINT references CarGroup(Id),
	RentalAgencyId BIGINT references RentalAgency(Id)
)