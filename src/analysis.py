import pandas as pd
import matplotlib.pyplot as plt


def read_csv():
    return pd.read_csv("data/filtered.csv")


def filter_by_age(dataframe):
    dataframe["group"] = pd.cut(
        dataframe["EDAD"],
        bins=[1, 15, 30, 45, 60, 75, 90, 130],
        include_lowest=True,
        labels=["<15", "15-30", "30-45", "45-60", "60-75", "75-90", ">90"],
    )
    return dataframe


def save_image(dataframe):
    df = dataframe.groupby(by="group").count()
    fig, ax = plt.subplots()
    ax.bar(x=df.index, height=df["EDAD"])
    ax.set_title(
        "Número de casos confirmados de COVID-19 en México \n el dia 16 de marzo del 2022, por edad"
    )
    plt.savefig("result.png")


df = read_csv()
df1 = filter_by_age(df)
save_image(df1)
