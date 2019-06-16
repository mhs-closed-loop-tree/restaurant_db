# I created the Google Cloud SQL store manually, typically it would be scripted here
# gcloud sql create ...

# Scripted creation of the database, depends upon psql command line
# Normally variables would come from CI or a secrets store
# Similarly I'm using ~/.pgpass to hide the password

TABLE_NAME=restaurant__staging
DATABASE_NAME=tree
DATABASE_USER_NAME=tree
INSTANCE_NAME=tree

SQL_IP=`gcloud $QUIET sql instances describe $INSTANCE_NAME |fgrep ' ipAddress' | cut -c 14-30`

echo Creating staging table...
psql -h $SQL_IP -U $DATABASE_USER_NAME -d $DATABASE_NAME < restaurant__staging.sql

# Sticking one-off install tasks in here as well, potentially this repo should be renamed to be an install repo
# Depends upon gcloud installation and authorisation
BUCKET_NAME=tree-20190615
gsutil mb -l europe-west1  gs://$BUCKET_NAME

