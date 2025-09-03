import pandas as pd

def selectData(students: pd.DataFrame) -> pd.DataFrame:
        it_employees = students[students["student_id"] == 101]
        res = it_employees["name","age"]
        return it_employees