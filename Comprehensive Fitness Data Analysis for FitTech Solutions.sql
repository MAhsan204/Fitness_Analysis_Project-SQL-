/*FitTech Solutions has provided a dataset containing various attributes related to fitness and health. 
The first step is to explore and familiarize yourself with the dataset to ensure it is suitable for further analysis.*/

SELECT * FROM fitness_analysis;

SELECT distinct(your_gender) FROM fitness_analysis;
SELECT distinct(your_age) FROM fitness_analysis;
SELECT distinct(exercise_importance) FROM fitness_analysis;
SELECT distinct(fitness_level) FROM fitness_analysis;
SELECT distinct(exercise_frequency) FROM fitness_analysis;
SELECT distinct(healthy_diet) FROM fitness_analysis;
SELECT distinct(exercise_time) FROM fitness_analysis;
SELECT distinct(purchased_equipment) FROM fitness_analysis;
SELECT distinct(exercise_frequency_detail) FROM fitness_analysis;
SELECT distinct(exercise_barriers) FROM fitness_analysis;

/*FitTech Solutions is launching a premium fitness program and needs to identify top-performing participants based on their fitness levels and
health ratings.*/

SELECT * FROM fitness_analysis WHERE fitness_level = 'Very good' and health_rating >=4;

/*The marketing team at FitTech Solutions is preparing a targeted campaign for female participants and those who highly value exercise.*/

SELECT * FROM fitness_analysis WHERE your_gender = 'Female' OR exercise_importance >= 4;

/*FitTech Solutions is interested in understanding customers who follow a healthy diet and have purchased fitness equipment,
aiming to refine their product recommendations.*/

SELECT * FROM fitness_analysis WHERE healthy_diet = 'Yes' and purchased_equipment = 1;

/*The company is investigating why young adults between 19 to 25 years old are not engaging in physical activities.*/

SELECT exercise_barriers, COUNT(*) FROM fitness_analysis WHERE your_age= '19 to 25' and exercise_frequency = 'Never' GROUP BY exercise_barriers order by COUNT(*) desc; 

/*FitTech Solutions wants to understand why some participants struggle with motivation and place less importance on exercise.*/

SELECT * FROM fitness_analysis WHERE exercise_barriers LIKE '%stay motivated%' and exercise_importance<=3;

/*To enhance its app features, FitTech Solutions needs to analyze participant engagement based on their exercise frequency.
Action: Group participants by exercise_frequency and calculate the average health_rating and participant count in each group.*/

SELECT exercise_frequency, AVG(health_rating) AS AvgHealthRating, COUNT(*) AS NumberOfRespondent FROM fitness_analysis GROUP BY exercise_frequency order by count(*) desc;

/*FitTech Solutions is developing age-specific fitness classes and needs to understand the distribution of participants across different age groups.
Action: Group data by your_age and calculate the total number of participants, focusing on groups with more than 5 participants.*/

SELECT your_age, COUNT(*) AS NumberOfRespondent FROM fitness_analysis GROUP BY your_age HAVING COUNT(*)>5 order by count(*) desc;

/*The company is evaluating overall participant engagement by analyzing exercise importance reported across different fitness levels.*/

SELECT fitness_level, SUM(exercise_importance) FROM fitness_analysis GROUP BY fitness_level HAVING SUM(exercise_importance)>10;

/*FitTech Solutions aims to design personalized fitness plans based on average exercise importance for various exercise times.
Action: Calculate the average exercise_importance for each exercise_time and filter for averages greater than 3.*/

SELECT exercise_time, AVG(exercise_importance) FROM fitness_analysis GROUP BY exercise_time HAVING AVG(exercise_importance)>3;

/*FitTech Solutions is preparing a report to highlight the most active participants based on their total weekly exercise duration.*/

SELECT your_name, health_rating, exercise_frequency FROM fitness_analysis order by exercise_frequency desc
OFFSET 124 ROWS
FETCH NEXT 1000 ROWS ;

/*Study the correlation between fitness levels and exercise times among high-performing participants.
Requirement: Select your_name, fitness_level, and exercise_time where fitness_level is 'Good' and health_rating is greater than 3, group by exercise_time, and order by fitness_level.*/

SELECT fitness_level,exercise_time FROM fitness_analysis WHERE fitness_level = 'Good' and health_rating >3 GROUP BY exercise_time order by fitness_level;

--The company wants to analyze how exercise importance varies across different age groups and genders to tailor wellness programs effectively.

SELECT your_age, your_gender, AVG(exercise_importance) FROM fitness_analysis GROUP BY your_age,your_gender HAVING AVG(exercise_importance) > 2 Order by your_gender; 

/*FitTech Solutions needs to paginate through a large dataset to focus on specific segments based on health ratings.
Requirement: Write a query using OFFSET and FETCH to retrieve records starting from the 21st participant up to the 30th participant, ordered by health_rating in descending order.*/

SELECT * FROM fitness_analysis Order by health_rating desc
OFFSET 20 ROWS
FETCH NEXT 10 ROWS ONLY;