# Accountstory
 ML exploration for Accountstory

 ## Objective

 The purpose of this analysis is to assess the feasibility of training an ML model to predict the likelihood of a linkedin profile to be a decision maker (DM).

We define a decision maker by someone who takes part in the sales process and has a certain degree of influence on the sales process decision. We do have several tiers of decision makers that we distinguish in the extension, i.e. executive sponsors, managers, etc. For the purpose of this analysis we wont be differentiating those tiers and we will be assuming uniformity across all of those tiers. Down the line we will be considering training different models or different classes for each of the following tiers to improve prediction.

## How To Use

python libraries:
* pandas
* scikit-learn
* tensorflow

### Generate Decision Maker Dataset

* *mk_people_list_DM.ipynb* calls *Accountstory API*
 * needs Accountstory API key
 * need a company list that is freely available on https://www.peopledatalabs.com/company-dataset (1.5 GB)
  * *company_list.sql* to filter the company list dataset
   *   currently: only CA companies and only tech companies
   * makes *company_list_CA.json*
  * makes file: *people_list_DM.json*

* *DM_enrichment.ipynb* calls *PDL enrichment API*
 * needs peopledatalabs API key
 * needs *people_list_DM.json*
 * makes file: *people_list_DM_enriched.json*

### Generate non-Decision Maker Dataset

* *mk_people_list_DM.ipynb* calls *PDL people API*
 * needs peopledatalabs API key
 * needs *company_list_CA.json*
 * makes file: *people_list_nDM.json*

### Combine DM and non-DM datasets

* *combine_datasets.ipynb*
* needs *people_list_DM_enriched.json* and *people_list_nDM.json*
* makes file: *combined_dataset.json*

### Feature Engeneering

* *feature_engineering.ipynb*
* needs *combined_dataset.json*
*  makes file: *TRAINING_dataset.json*

### 1. Decition tree

* *decision_tree.ipynb*
* makes file: *feat_importance.csv*

### 2. Random forest

* *random_forest.ipynb*

### 3. Other models

* *classical_models.ipynb*

### 4. Deep learning

* *ANN.ipynb*
