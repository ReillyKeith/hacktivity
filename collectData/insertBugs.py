import mysql.connector
from mysql.connector import Error
from mysql.connector import errorcode

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='hacktivity',
                                         user='root',
                                         password='password',
                                         auth_plugin='mysql_native_password')
    mySql_insert_query = """INSERT INTO bug_reports (BugName, BugNum, State, Disclosed, ReportedTo, Severity, Visibility, Bounty) 
                           VALUES 
                           ('Boo', '123456789', 'Closed', '2019-08-14','GitLab','Medium', "Disclosed", "$6,000") """

    cursor = connection.cursor()
    cursor.execute(mySql_insert_query)
    connection.commit()
    print(cursor.rowcount, "Record inserted successfully into Laptop table")
    cursor.close()

except mysql.connector.Error as error:
    print("Failed to insert record into bug_reports table {}".format(error))

finally:
    if (connection.is_connected()):
        connection.close()
        print("MySQL connection is closed")

