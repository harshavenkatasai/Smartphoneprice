A Project of SmartPhone Brands and Models with different features,Lanch prices in different currency's of top parts of world.

This Repo Consits of following files with refering names.

---> **Mobiles Data Set(2025)** is CSV data set which is taken from Kaggle using Python find code below / downlode file and get it by http request.

=----- Http URL-----

https://www.kaggle.com/datasets/abdulmalik1518/mobiles-dataset-2025/data

=-------Code to get the data frame to ypur playgroud to play.
# Install dependencies as needed:
# pip install kagglehub[pandas-datasets]
import kagglehub
from kagglehub import KaggleDatasetAdapter

# Set the path to the file you'd like to load
file_path = ""

# Load the latest version
df = kagglehub.load_dataset(
  KaggleDatasetAdapter.PANDAS,
  "abdulmalik1518/mobiles-dataset-2025",
  file_path,
  # Provide any additional arguments like 
  # sql_query or pandas_kwargs. See the 
  # documenation for more information:
  # https://github.com/Kaggle/kagglehub/blob/main/README.md#kaggledatasetadapterpandas
)

print("First 5 records:", df.head())

---> **ProjectMobiles(2).ipynb ** spark code when Stage one cleaning with Cluster in Data Bricks 

---> **SQL External table(1).sql** after getting the stage one clening pushed to silver from silver starts the **Azure synapse** for use it for PowerBI source with view created to it.

---> **view gold(1).sql**  A view created with required detiles for final reporting to PowerBI. Creted to source to it.

---> **smart phone.pbix** A Power Visuilized Dashboard which is created with source from Azure Synapse and stage 2 cleaing is done here as to fullfil the KPI's.

---> Screenshot's were added of different stages which I gone through.
