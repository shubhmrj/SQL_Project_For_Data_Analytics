# Here use melt functions
import pandas as pd

def meltTable(report: pd.DataFrame) -> pd.DataFrame:
    return report.melt(
        id_vars=["product"],        # keep product column as is
        var_name="quarter",         # new column name for Q1, Q2, Q3, Q4
        value_name="sales"          # new column name for values
    )


# Explainations
# 🔎 How .melt() Works
# Step 1 — id_vars=["product"]

# We keep the product column unchanged.

# It acts like an identifier (like a primary key in SQL).

# So "Laptop" will repeat for all its quarters.

# Step 2 — var_name="quarter"

# All the column headers (Q1, Q2, Q3, Q4)
# are melted down into rows under a new column called quarter.

# Example:
# Q1, Q2, Q3, Q4 → become rows: "Q1", "Q2", "Q3", "Q4".

# Step 3 — value_name="sales"

# The actual cell values (10, 15, 20, 25 …)
# are placed into a new column called sales.

# So "10" (Laptop Q1) goes into sales.