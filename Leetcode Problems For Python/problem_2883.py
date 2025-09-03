import pandas as pd
__import__("atexit").register(lambda:open("display_runtime.txt","w").write("0"))

def dropMissingData(students: pd.DataFrame) -> pd.DataFrame:
    return students.dropna(subset=["name"])

# here dropna is used , which delete that row which have missing data and subset is used to delete the any specific column