-- Query 1: Loans per item category for a specific month (January)

SELECT item_category, COUNT(*) AS total_loans
FROM read_csv('lake/loans/year=2026/month=01/*.csv')
GROUP BY item_category;

-- Query 2: Total loans per campus for a specific year (2026, because we only have data for 2026)
-- As the data grows, this query will become more important as it will give a good overview of the Loan distribution across the campuses
SELECT campus, COUNT(*) AS total_loans
FROM read_csv('lake/loans/year=2026/month=*/*.csv')
GROUP BY campus;