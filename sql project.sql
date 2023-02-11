select * from heartdata

---The dataset "hearthdata" has 319, 795 rows and the data is already cleaned

select * from heartdata where MentalHealth is not null
---Just to be sure i do not have any missing data

select distinct *
from heartdata
---From the querry above, noticed that there are duplicate rows, 
---it returned 301,717 rows so there are 16,078 duplicate rows

select count(column)
from heartdata

select count (Sex) as 'female_total'
from heartdata
where Sex in ('female')
select count (Sex) as 'male_total'
from heartdata
where Sex in ('male')
---looked at the number of male and female, have 167805 female and 151990 male
---have more female than male


 
select Race, count (Smoking) as Smoking
from heartdata
where BMI >26
group by Race
order by Smoking DESC

----In the table above, the white has more people who are over weight and smokes, 


select Race, count (Smoking) as Smoking
from heartdata
where Sex in ( 'female') and BMI > 26
group by Race
order by Smoking DESC

select Race, count (Smoking) as Smoking
from heartdata
where Sex in ( 'male') and BMI > 26
group by Race
order by Smoking DESc
---More white males than females with BMI> 26 smokes and more Black females than male smoke


select Diabetic, count(Sex) as 'gender'
from  heartdata
where HeartDisease in ('No', 'Yes')
group by Diabetic
order by 'gender'

select Sex, count(Diabetic) as 'diabetic patients' 
from  heartdata
where Diabetic ='Yes'
group by Sex
---decided to check for people that had diabetes acording to sex, more male are diabetic

select Sex, count(Diabetic) as 'diabetic patients' 
from  heartdata
where Diabetic ='Yes' and Agecategory > '45'
group by Sex

---Also from age 45 and above more male were diabetic than female

select Sex, count(Diabetic) as 'diabetic patients' 
from  heartdata
where Diabetic ='Yes' and Agecategory < '45'
group by Sex

---And from age 45 below more women were diabetic than men, 
---that is to say some women became diabetic at younger age

select Sex, count(Diabetic) as 'diabetic patients' 
from  heartdata
where Diabetic ='Yes' and Agecategory < '20'
group by Sex

---Also have people who are below 20 year of age and diabeti


 select Sex, count(Diabetic) as 'diabetic patients' 
from  heartdata
where Diabetic ='Yes' and and Agecategory < '18'
from  heartdata

---people who were below 18 year of age were not diabetic



select Sex, count(Diabetic) as 'non diabetic' 
from  heartdata
where Diabetic ='No' and Agecategory > '50'
group by Sex

---Only 70761 male and 86923 female were above 50 and were not diabetic

select count(HeartDisease) as 'HD', AgeCategory
from heartdata
where AgeCategory > '18'
group by AgeCategory

select count(HeartDisease) as 'HD', AgeCategory
from heartdata
where AgeCategory > '18' and HeartDisease = 'Yes'
group by AgeCategory
order by 'HD' DESC

---The above table shows that there is a direct relationship between age and heart disease


select HeartDisease, 
count(AlcoholDrinking) as 'alcoholic',
count (Smoking) as 'smokers', 
count (Diabetic) as 'diabetic patients',
count (KidneyDisease) as 'kidneyfailure'
from  heartdata
where AgeCategory > '50'
group by HeartDisease

select HeartDisease, 
count(AlcoholDrinking) as 'alcoholic',
count (Smoking) as 'smokers', 
count (Diabetic) as 'diabetic patients',
count (KidneyDisease) as 'kidneyfailure'
from  heartdata
where AgeCategory <'20'
group by HeartDisease

---From the above, the result shows that most of the people that had 
---haert disease, had diabetes, kidney failure, smokes and drinks

select h.PhysicalActivity, h.Race, h.sleepTime, h.SkinCancer,
e.AgeCategory 
from heartdata h
inner join heartdata e on h.AgeCategory = e.AgeCategory
where h.HeartDisease ='Yes' and SkinCancer = 'Yes' andPhysicalActivity = 'Yes'























