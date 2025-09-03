import pandas as pd

def concatenateTables(df1: pd.DataFrame, df2: pd.DataFrame) -> pd.DataFrame:
    # axix = 0 for rows and axis = 1 for columns
    result = pd.concat([df1, df2], axis=0)
    return result



# Example
# import pandas as pd

# df1 = pd.DataFrame({
#     "id": [1, 2],
#     "name": ["Alice", "Bob"]
# })

# df2 = pd.DataFrame({
#     "id": [3, 4],
#     "name": ["Charlie", "Diana"]
# })

# result = pd.concat([df1, df2], axis=0)
# print(result)
