# Background

A firm can buy a $1.2 million dollar machine that can fully process and pack 1,600 units per minute using two operators.  There are slight variations in requirements by customer, so changeover times can take several minutes between customers, but there is no time to switch among orders for the same customer.  Alternatively, a single operator can use a $10k machine that processes 700 units per minute, but the operator must manually pack every 100 units, which take 30 seconds.  There is no changeover cost among customers, but each new order requires about several seconds in the manual process.

# Information Summary

![image](https://github.com/josedavid2101/Supply_Chain_Data_Analysis/assets/8882222/bf604ef8-93be-4c39-87ad-88e224cc3d25)

# Assumptions

- Machines run 24/7
- Machines can work simultaneously
- Average units per order per customer = Average daily units/Average daily orders per customer
- Company makes the same profit for every unit
- Operational cost of machine A (2 operators) is the same as the operational cost of two machines B (1 operator each)
- The machines will be used for between 5 – 10 years
- Changeover time between customers is 10 minutes for machine A. Changeover time between orders is 15 seconds for machine B.


# Business Questions

- What alternative is the most cost-efficient?

- Can one machine fulfill all the daily orders?

- Under what circumstances is Machine A better than Machine B?

- Under what circumstances is Machine B better than Machine A?

- What machines should be acquired to fulfill all the daily orders?


# Cost analysis

![image](https://github.com/josedavid2101/Supply_Chain_Data_Analysis/assets/8882222/5d4d09b9-937f-4db2-bbae-80e1a9796ba4)

# Orders and Units Data

![image](https://github.com/josedavid2101/Supply_Chain_Data_Analysis/assets/8882222/bfedfe95-c9d0-4f1e-b4dc-7fc8c0bfff7e)

# Data Analysis

![image](https://github.com/josedavid2101/Supply_Chain_Data_Analysis/assets/8882222/c7a73841-f24f-4b6b-a281-4791c46c80f5)

![image](https://github.com/josedavid2101/Supply_Chain_Data_Analysis/assets/8882222/4bdd84c3-2d99-4b86-b25c-ea8d65824888)

# Results

![image](https://github.com/josedavid2101/Supply_Chain_Data_Analysis/assets/8882222/ddc8a34b-ba02-4d73-bbfb-46f215c34bbc)

# Recommendations

- Determine the average downtime between orders for machine B and between customers for machine A and redo the calculations.

- Develop a predictive maintenance plan to minimize machines’ downtime due to mechanical/electric failure.

- Determine maintenance downtime and include it in the calculations to buy backup machines.
