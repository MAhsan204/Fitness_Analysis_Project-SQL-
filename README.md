# Fitness_Analysis_Project-SQL

# **Project Title: Comprehensive Fitness Data Analysis for FitTech Solutions**

## **Objective:**
FitTech Solutions aims to enhance its understanding of participant behaviors, health ratings, exercise habits, and dietary patterns through a detailed SQL-based analysis. This project will provide actionable insights to improve fitness programs and health interventions.

## **Project Overview:** 
FitTech Solutions has provided a dataset containing various attributes related to fitness and health. The first step is to explore and familiarize yourself with the dataset to ensure it is suitable for further analysis.

- **Action:** Retrieve all columns from the dataset to get a complete overview of the available data.
- **Action:** Identify distinct values for `your_gender`, `your_age`, and `exercise_frequency` to understand the diversity within these fields, which will aid in segmenting participants for more detailed analysis.
  
FitTech Solutions is launching a premium fitness program and needs to identify top-performing participants based on their fitness levels and health ratings.

- **Action:** Extract records where `fitness_level` is 'Very good' and `health_rating` exceeds 4 to identify potential candidates for the program.

The marketing team at FitTech Solutions is preparing a targeted campaign for female participants and those who highly value exercise.

- **Action:** Find participants who are either 'Female' or have an `exercise_importance` of 4 to tailor marketing strategies effectively.
 
FitTech Solutions is interested in understanding customers who follow a healthy diet and have purchased fitness equipment, aiming to refine their product recommendations.

- **Action:** Select participants who have both a `healthy_diet` of 'Yes' and have purchased fitness equipment (`purchased_equipment` = 'Yes').

The company is investigating why young adults between 19 to 25 years old are not engaging in physical activities. 

- **Action:** Query participants aged 19 to 25 who report never exercising (`exercise_frequency` = 'Never') to explore potential barriers.
 
FitTech Solutions wants to understand why some participants struggle with motivation and place less importance on exercise.

- **Action:** Retrieve data where `exercise_barriers` include 'I can't stay motivated' and `exercise_importance` is less than 3 to address motivational challenges.
 
To enhance its app features, FitTech Solutions needs to analyze participant engagement based on their exercise frequency.

- **Action:** Group participants by `exercise_frequency` and calculate the average `health_rating` and participant count in each group.

FitTech Solutions is developing age-specific fitness classes and needs to understand the distribution of participants across different age groups.

- **Action:** Group data by `your_age` and calculate the total number of participants, focusing on groups with more than 5 participants.

The company is evaluating overall participant engagement by analyzing exercise importance reported across different fitness levels.

- **Action:** Group by `fitness_level` and sum `exercise_importance`, filtering out groups where the sum is less than 10 to identify more engaged groups.
 
FitTech Solutions aims to design personalized fitness plans based on average exercise importance for various exercise times.

- **Action:** Calculate the average `exercise_importance` for each `exercise_time` and filter for averages greater than 3.

FitTech Solutions is preparing a report to highlight the most active participants based on their total weekly exercise duration.

- **Action:** Select `your_name`, `health_rating`, and `exercise_duration`, calculate the weekly exercise duration (multiply `exercise_duration` by days exercised per week), and order the results by `weekly_exercise_duration` in descending order.
  
For a comprehensive fitness assessment, FitTech Solutions needs to sort participants by health ratings and exercise importance, including calculated differences.

- **Action:** Retrieve data ordered by `health_rating` descending and `exercise_importance` ascending, and include a column showing the difference between `exercise_importance` and `health_rating`.

FitTech Solutions is assessing the impact of exercise importance relative to age and needs to adjust the values accordingly.

- **Action:** Select `your_name`, `your_age`, and `exercise_importance`, multiply `exercise_importance` by 2, and order by this calculated value.

The company needs to summarize participants' combined exercise importance and health ratings, focusing on those with high totals.

- **Action:** Calculate and order by the sum of `exercise_importance` and `health_rating` for each participant, filtering where this sum exceeds 6.

The company wants to analyze how exercise importance varies across different age groups and genders to tailor wellness programs.

- **Action:** Retrieve `your_gender`, `your_age`, and `exercise_importance` where `exercise_importance` is greater than 2, group by `your_age`, having a count greater than 3, and order by `your_gender`.

FitTech Solutions needs to paginate through a large dataset to focus on specific segments based on health ratings.
**Requirement:** Write a query using OFFSET and FETCH to retrieve records starting from the 21st participant up to the 30th participant, ordered by health_rating in descending order.

## **Deliverables:**
- **SQL Scripts:** Develop SQL scripts to address each scenario and extract the necessary data for analysis.

## **Expected Outcomes:**
This project will provide FitTech Solutions with in-depth insights into participants' fitness behaviors, health ratings, and exercise habits, enabling data-driven decisions for enhancing fitness programs and health interventions. 
