# Key Findings — Bank Customer Churn & Retention Analytics

## Overall Churn

- Total customers: **1,000**
- Customers churned: **122**
- Customers retained: **878**
- Overall churn rate: **12.20%**

## Major Customer Churn Findings

### 1. Geography

Germany has the highest observed churn rate:

| Geography | Customers | Churned | Churn Rate |
|---|---:|---:|---:|
| Germany | 267 | 45 | 16.85% |
| Spain | 248 | 29 | 11.69% |
| France | 485 | 48 | 9.90% |

**Finding:** Germany represents the highest-churn geographical segment in the available dataset.

### 2. Active Membership

| Membership | Customers | Churned | Churn Rate |
|---|---:|---:|---:|
| Active | 473 | 43 | 9.09% |
| Inactive | 527 | 79 | 14.99% |

**Finding:** Inactive members show a higher observed churn rate than active members.

### 3. Age

| Age Band | Churn Rate |
|---|---:|
| 18–30 | 7.07% |
| 31–40 | 8.55% |
| 41–50 | 13.94% |
| 51–60 | 28.18% |
| 61+ | 9.09% |

**Finding:** Customers aged 51–60 have the highest observed churn rate at **28.18%**.

### 4. Number of Products

| Products | Customers | Churned | Churn Rate |
|---|---:|---:|---:|
| 1 | 519 | 79 | 15.22% |
| 2 | 437 | 35 | 8.01% |
| 3 | 37 | 7 | 18.92% |
| 4 | 7 | 1 | 14.29% |

**Finding:** Customers with 3 products show the highest observed churn rate, although the group is small.

## Statistical Findings

Chi-square testing identified statistically significant associations with churn for:

- **Age Band:** p < 0.001
- **Geography:** p = 0.0196
- **Number of Products:** p = 0.0043
- **Active Membership:** p = 0.0060

Variables that were not statistically significant in the available dataset:

- Gender: p = 0.602
- Credit-card ownership: p = 0.171

These results indicate associations within the prepared dataset and do not establish causation.

## Machine Learning Findings

A **Logistic Regression** model was used to estimate customer churn probability.

| Metric | Result |
|---|---:|
| ROC-AUC | 0.674 |
| Recall | 0.667 |
| Precision | 0.186 |
| F1 Score | 0.291 |
| Accuracy | 0.610 |

The model uses a stratified 80/20 train-test split and `class_weight='balanced'` to account for the imbalanced churn target.

## Risk Scoring

The held-out test customers were grouped into three risk bands:

| Risk Band | Customers | Churned | Actual Churn Rate |
|---|---:|---:|---:|
| Low | 32 | 1 | 3.13% |
| Medium | 150 | 17 | 11.33% |
| High | 18 | 6 | 33.33% |

**Finding:** The high-risk group has substantially higher observed churn than the low-risk group, supporting the use of risk scores for retention prioritization.

## Retention Recommendations

1. Focus retention analysis on high-churn geographical segments, particularly Germany.
2. Improve engagement strategies for inactive members.
3. Closely monitor customers in the 51–60 age group.
4. Investigate product engagement patterns, especially among customers with 3 products.
5. Use model-generated risk scores to prioritize retention attention.
6. Avoid treating gender or credit-card ownership as confirmed churn drivers because they were not statistically significant in this dataset.
7. Validate retention strategies with additional information such as service quality, complaints, customer interactions, and time-based customer history.

## Important Limitation

The analysis is based on a prepared dataset of 1,000 customer records with 122 churn cases. The data is cross-sectional and does not contain time-series information, exit interviews, service-quality measures, or other external customer-behavior variables. Therefore, the findings should be interpreted as evidence of observed associations and as decision-support information rather than proof of causation or guaranteed future churn.

## Project Conclusion

The project combines **Excel, MySQL, Python, statistical testing, Logistic Regression, risk scoring, and Power BI** to create an end-to-end bank customer churn and retention analytics workflow. The results provide a structured basis for identifying higher-risk customer segments and prioritizing retention analysis.
