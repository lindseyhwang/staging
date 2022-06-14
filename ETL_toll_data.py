# import the libraries

from datetime import timedelta
# The DAG object; we'll need this to instantiate a DAG
from airflow import DAG
# Operators; we need this to write tasks!
from airflow.operators.bash_operator import BashOperator
# This makes scheduling easy
from airflow.utils.dates import days_ago

#defining DAG arguments

# You can override them on a per-task basis during operator initialization
default_args = {
    'owner': 'Lindsey Hwang',
    'start_date': days_ago(0),
    'email': ['randomdummy@gmail.com'],
    'email_on_failure': True,
    'email_on_retry': True,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# defining the DAG

# define the DAG
dag = DAG(
    'ETL_toll_data',
    default_args=default_args,
    description='MApache Airflow Final Assignment',
    schedule_interval=timedelta(days=1),
)

# define the tasks

# define the first task
unzip_data = BashOperator(
    task_id='unzip_data',
    bash_command='bash unzip.sh',
    dag=dag,
)

# define the second task
extract_data_from_csv = BashOperator(
    task_id='extract_data_from_csv',
    bash_command='bash csv2db.sh',
    dag=dag,
)

# define the third task
extract_data_from_tsv = BashOperator(
    task_id='extract_data_from_tsv',
    bash_command='bash tsv2db.sh',
    dag=dag,
)


# define the fourth task
extract_data_from_fixed_width = BashOperator (
    task_id='extract_data_from_fixed_width',
    bash_command='bash fixedwidth.sh',
    dag=dag,
)

# define the fifth task
consolidate_data = BashOperator (
    task_id='consolidate_data',
    bash_command='bash consolidate.sh',
    dag=dag,
)

# define the sixth task
transform_data = BashOperator (
    task_id='transform_data',
    bash_command='bash transform.sh',
    dag=dag,
)

# task pipeline
unzip_data >> extract_data_from_csv >> extract_data_from_tsv >> extract_data_from_fixed_width >> consolidate_data >> transform_data
