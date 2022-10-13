Source: https://github.com/playground-xyz/dataengineer-interview-test  
Country: Australia

===============================
Data Engineer Interview Test

We are looking for a high quality data engineer which can deliver comprehensive solutions for our continuity and business growth. 

Our team drives the data culture, we want to change how we produce data from large batches to micro batching, from daily to near real-time/streaming processing, from tabular reports to insightful dashboards.    

You can be part of an amazing team which deals with data all the time using different process, tools and technologies.

Following is a little treasure and challenge for those keen on joining this amazing company and team.

## Junior/Mid 
For a Junior/Mid role we are expecting good basic standards for code and reporting.

## Senior
We are expecting the most from you. Show up your top skill levels.

# The Project
The project is to ingest and process data from APIs and generate a basic report from them.

### Tools and Technologies
We are a Python and SQL workshop, we would like to see this project using just those.  

However, we are open to other tools and technologies if we are able to easily replicate on our side. 

For the database, use a simple and light optimizer for it.

Please, avoid licensed products, this might block and limit us to review your work. 

How to do it?
-----------------------
Fork/Copy this repo, build your data processing layer and follow the best practices in SDLC. Open a Pull Request and send us a message highlighting the test is completed.

#### Rules
* it must come with step by step instructions to run the code.
* please, be mindful that your code might be moved or deleted after we analyse the PR. 
* don't forget the best practices
* be able to explain from the ground up the whole process on face to face interview

# The challenge
You can choose one of the following exercises:

A. Cat Lover

B. User Data Check

C. The old fashion ETL Master

We are expecting your repo with the following:

1. High level summary of the architecture used

2. Package your code, it should be rerunable

3. List any extra objects required to complete the exercise

4. Explain how to schedule this process to run multiple times per day?

5. How would you deploy this project?

**Bonus**: Can you make it to run on a container (Docker)? 

---
## A. Cat Lovers

If you are a cat lover, you would enjoying processing [cat fact](https://catfact.ninja/fact).

For this exercise, build a comprehensive cat fact dataset with an autonomous data load.

We are expeting the following queries and some results:

1. Can you list the number of words only in the dataset?

2. What was the most common unicode character?

3. List the top 20 words based on number of facts?

4. List the most common Geographical country in the dataset?

5. Which fact check you found most interesting?

6. Bonus: Can you make any sentiment analysis from those facts?


## B. User Data check

From a random list of users with name, DOB, gender and location. Can you cross check the data from other sources to compare the aged of the person using their name through [Agify.io](https://api.agify.io?name=steve), the gender based on their name using the [Genderize.io](https://api.genderize.io?name=steve) and the top 2 nationalities from [Nationalize.io](https://api.nationalize.io?name=steve).

The names can be generated from [randomuser.me](https://randomuser.me/api/) if you don't have other sources.

We are expecting the following queries and some results:

1. What are the most common ageing discrepancies?

2. What is the gender distribution based on user's gender and the inferrered gender?

3. What is the most common nationalities?

4. Can you flag any discrepancies using those APIs? 

5. Are there any rich features from those APIs we should look after?

6. Bonus: What percentage of accuracy are those API's for your dataset?


## C. The old fashion ETL Master 

1. The data for this exercise can be found on the `data.zip` file. Can you describe the file format?

**Super Bonus**: generate your own data through the instructions on the encoded file `bonus_etl_data_gen.txt`.
To get the bonus points, please encoded the file with the instructions were used to generate the files.

2. Code you scripts to load the data into a database.

3. Design a star schema model which the data should flow.

4. Build your process to load the data into the star schema 

**Bonus** point: 
- add a fields to classify the customer account balance in 3 groups 
- add revenue per line item 
- convert the dates to be distributed over the last 2 years

**Bonus**: What to do if the data arrives in random order and times via streaming?

**Bonus**: Would be a problem if the data from the source system is growing at 6.1-12.7% rate a month?


### Data Reporting
One of the most important aspects to build a DWH is to deliver insights to end-users. 

Can you using the designed star schema (or if you prefer the raw data), generate SQL statements to answer the following questions:

1. What are the top 5 nations in terms of revenue?

2. From the top 5 nations, what is the most common shipping mode?

3. What are the top selling months?

4. Who are the top customer in terms of revenue and/or quantity?

5. Compare the sales revenue of on current period against previous period?

---

Data profilling
----   
Data profiling are bonus.

What tools or techniques you would use to profile the data?
 
What results of the data profiling can impact on your analysis and design?   


ERD for the ETL Master option
--
![alt text](erd.png "ERD")

Author: adilsonmendonca
