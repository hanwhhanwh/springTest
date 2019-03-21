# springTest
Spring Test project

Connection Pool sample

<pre>
	<Resource name="jdbc/MariaDB" 
	      auth="Container" 
	      type="javax.sql.DataSource" 
	      driverClassName="org.mariadb.jdbc.Driver" 
	      url="jdbc:mariadb://127.0.0.1:3306/kernels" 
	      username="kernels" 
	      password="skfwkzjsjftm2019!!" 
	      
	      maxTotal="4" 
	      maxIdle="4" 
	      minIdle="1" 
	      maxWaitMillis="10000"
	      
	      removeAbandonedOnMaintenance="true"
	      removeAbandonedTimeout="30"
	      logAbandoned="true"
	      abandonedUsageTracking="true"
	      />
</pre>