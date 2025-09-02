# Partitioning Report

## Objective
The **Booking** table contained a large dataset and filtering by `start_date` became slower as the table grew.  
To optimize performance, we implemented **partitioning by range**.

## Implementation
1. Created a new table partitioned by `start_date`.  
2. Moved the data to the new table.  
3. Ran queries on the partitioned table.  

## Before
- Queries scanned the entire table, which made performance slow.  

## After
- Queries only scanned the relevant partition, which improved performance and reduced I/O operations.  

## Conclusion
Partitioning the **Booking** table by `start_date` significantly improved query performance, especially for date-range filters.  
It also simplified data lifecycle management.
