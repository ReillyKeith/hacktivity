import csv
import mysql.connector
from mysql.connector import Error
from mysql.connector import errorcode

# store the row to insert here
Bugs = []

def insertBugs(bugsArray):
	try:
	    connection = mysql.connector.connect(host='localhost',
	                                         database='hacktivity',
	                                         user='root',
	                                         password='password',
	                                         auth_plugin='mysql_native_password')
	    mySql_insert_query = """INSERT INTO BugsHackerOne (BugID, Bug_Title, Bug_State, Bug_Divulge, Bug_ReportedTo, Bug_Visibility, Bug_Severity, Bug_Bounty, Bug_Weakness, Bug_Number) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s) """
	    cursor = connection.cursor()
	    insert_tuple_1 = (bugsArray[0], bugsArray[1], bugsArray[2], bugsArray[3], bugsArray[4], bugsArray[5], bugsArray[6], bugsArray[7], bugsArray[8], bugsArray[9])
	    cursor.execute(mySql_insert_query, insert_tuple_1)
	    connection.commit()
	    print(cursor.rowcount, "Record inserted successfully into BugData table")
	    cursor.close()

	except mysql.connector.Error as error:
	    print("Failed to insert record into bug_reports table {}".format(error))

	finally:
	    if (connection.is_connected()):
	        connection.close()
	        print("MySQL connection is closed")

with open("DataFile1.txt", "r") as f:
    reader = csv.reader(f, delimiter="\t")
    for i, line in enumerate(reader):
        countJ = 1;
        for j in line:
        	countJ=countJ+1
        	Bugs.append(j)
    	print Bugs
    	insertBugs(Bugs)
        Bugs = []