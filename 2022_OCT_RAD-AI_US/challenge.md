Source: https://github.com/radaisystems/de_challenge         
Country: [probably US](https://www.radai.com/about)

## All original files are inside /files/ folder
___________________________

# Rad AI Data Engineer challenge


## Table of contents
- [Rad AI Data Engineer challenge](#rad-ai-data-engineer-challenge)
  - [Table of contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Description](#description)
  - [Deliverables](#deliverables)
  - [General Evaluation](#general-evaluation)
    - [Additional considerations](#additional-considerations)
    - [Bonus points](#bonus-points)

## Introduction

Rad AI is looking for a strong data engineer interested in working at the intersection of medicine and machine learning. Through our partnerships with private radiology groups we have accumulated one of the largest radiology datasets (billions of images & associated data) and we have the necessary compute to make meaningful medical insights and products with it.

The data we receive from radiology groups and the data we use for training various neural networks look quite different from one another. Each radiology group sends the data in a different format and structure from one another. We must integrate that data together to use as training or to make insights from. The data is also often messed up in some important way, and must be cleaned before we can use it.

This challenge will test your ability to clean and process data with a synthetic dataset (there is no PHI / HIPAA data included). The primary goal of this challenge is to see how well you can transform messy data into well-formatted data that we would be proud to show to a customer.

## Description

Included are three data files which include synthetic data in different formats from three simulated groups: a pickled file, a csv and a tar.gz file. Within each of these formats are a number of synthetic reports containing only "impression" text.

Unfortunately, this data contains a number of formatting errors. It also contains "call reports", which are records of calling a (fictitious) doctor with the results of a (fictitious) radiology study. It also contains unnecessary repetitions that need to be removed before training.

Your job is to preprocess this data so that it is well-formatted and suitable for training a sequence-to-sequence model. (This means that we need the text to appear exactly as it would in a real radiology report - no lemmatization, no case normalization, etc.) We have provided you one input-output pair (066.json and 066_clean.json) that contains all of the issues that you will have to address in the input (066.json), with each issue fixed in the output (066_clean.json).

**IF YOUR PIPELINE PRODUCES DATA THAT APPEARS SUBSTANTIALLY DIFFERENT FROM THIS SAMPLE OUTPUT, YOUR SUBMISSION WILL BE CONSIDERED A FAILURE.**

Note that we have not provided you enough data to train most machine learning models, so _we do not recommend trying to build an ML solution to this challenge._

## Deliverables

Upon successful completion of the challenge, you will deliver the following two items:

1. A well-engineered, documented, tested, and reusable pipeline for performing this transformation on arbitrary files in any of the three formats provided. Each file should be transformed into a file of the same type as the input, but with all data problems fixed.

2. Instructions for how we can run your code on our held-out test data. (If these instructions are super complex, you may have over-engineered your solution.)

## General Evaluation

We will be evaluating your submission along several axes:

1. Did you successfully fix the issues with the data, even on unseen data with the same issues? This is the primary criterion on which you will be evaluated - in order to succeed in this position, you will need to be able to clean real data to similar high standards.

2. Did you correctly follow instructions, especially around data formats for export? (Recall that each file should be cleaned and exported to a file of the same type.)

3. How performant and scalable is your solution?

4. How clean, tested, and maintainable is your solution?

5. Are you following python best practices around packaging?

Feel free to make use of any libraries you prefer. If you've previously built something similar, feel free to adapt (though remember that we're expecting a Python package, and please follow best coding & documentation practices :) )

### Additional considerations

For senior and mid-level positions (or if you want to demostrate your skills), we will be considering the following areas into our evaluation:

1. Code smells
    * Does the candidate have any methods that are not considered best practices?
    * Is the candidate linting. Is linting part of the instructions or included during the execution of the code?

2. Unit tests or automated tests
    * Is the candidate including tests within the submission?

### Bonus points

1. Provide a dockerfile with everything necessary to run your application
