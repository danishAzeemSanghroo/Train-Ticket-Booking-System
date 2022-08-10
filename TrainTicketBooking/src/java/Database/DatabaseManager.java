
package Database;



import Beans.AdminBean;
import Beans.EmployeeBean;
import Beans.ScheduleBean;
import Beans.TicketBean;
import Beans.TrainBean;
import Beans.UserBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

public class DatabaseManager {

    
    // private static String fac_id;

   

    public static Connection getConnection() throws Exception {  
         Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticketsystem","root","root");
        System.out.println("Connection Successful " + con);
        return con;
    }
	public static AdminBean getAdmin()throws Exception{
		String query="select * from admin";
                System.out.println(query);
		Statement st=null;
		ResultSet result=null;
                AdminBean bean=null;
		try{
			st=getConnection().createStatement();
			result=st.executeQuery(query);
			
			while(result.next()){
				bean=new AdminBean();	
				bean.setAdminId(result.getInt("adminId") );
				bean.setAdminName(result.getString("adminName") );
				bean.setAdminPassword(result.getString("adminPassword") );			
				
			}
			return bean;
		}finally{
			if(result!=null)result.close();
			if(st!=null)st.close();
		}
	}    

	public static int addUser(UserBean userBean)throws Exception{
		String query="INSERT into user (userName,userPassword,phoneNo,address,emailId) values ('"+userBean.getUserName()+"','"+userBean.getUserPassword()+"','"+userBean.getPhoneNo()+"','"+userBean.getAddress()+"','"+userBean.getEmailId()+"') ";
		System.out.println(query);
		
		Statement st=null;
		try{
			st=getConnection().createStatement();
			int rows=st.executeUpdate(query);
			return rows;
		}finally{
			if (st!=null)
			st.close();
		}
	} 
	public static int addTrain(TrainBean trainBean)throws Exception{
		String query="INSERT into train (name,category) values ('"+trainBean.getTrainName()+"','"+trainBean.getTrainCategory()+"') ";
		System.out.println(query);
		
		Statement st=null;
		try{
			st=getConnection().createStatement();
			int rows=st.executeUpdate(query);
			return rows;
		}finally{
			if (st!=null)
			st.close();
		}
	}         
        
 //add employee
 	public static int addEmployee(EmployeeBean empBean)throws Exception{
		String query="INSERT into employee (trainId,employeeName,employeePassword,employeeSalary,dateOfAppointment,timing,job) values ("+empBean.getTrainId()+",'"+empBean.getEmployeeName()+"','"+empBean.getEmployeePassword()+"','"+empBean.getEmployeeSalary()+"','"+empBean.getDoa()+"','"+empBean.getTiming()+"','"+empBean.getJob()+"') ";
		System.out.println(query);
		
		Statement st=null;
		try{
			st=getConnection().createStatement();
			int rows=st.executeUpdate(query);
			return rows;
		}finally{
			if (st!=null)
			st.close();
		}
	}       

//add schedule
 	public static int addSchedule(ScheduleBean sBean)throws Exception{
		String query="INSERT into schedule (trainId,fromStation,toStation,timeDeparture,timeArrival,fare) values ("+sBean.getTrainId()+",'"+sBean.getFrom()+"','"+sBean.getTo()+"','"+sBean.getDepTime()+"','"+sBean.getArrTime()+"','"+sBean.getFare()+"') ";
		System.out.println(query);
		
		Statement st=null;
		try{
			st=getConnection().createStatement();
			int rows=st.executeUpdate(query);
			return rows;
		}finally{
			if (st!=null)
			st.close();
		}
	}
        
 //addTicket
 	public static int addTicket(TicketBean tBean)throws Exception{
		String query="INSERT into ticket2 (train,username,fromStation,toStation,cabin,seat,payment,date1) values ('"+tBean.getTrain()+"','"+tBean.getUsername()+"','"+tBean.getFromStation()+"','"+tBean.getToStation()+"','"+tBean.getCabin()+"','"+tBean.getSeat()+"','"+tBean.getPayment()+"','"+tBean.getDate()+"') ";
		System.out.println(query);
		
		Statement st=null;
		try{
			st=getConnection().createStatement();
			int rows=st.executeUpdate(query);
			return rows;
		}finally{
			if (st!=null)
			st.close();
		}
	}       
        
    public static UserBean getUser(String userName) throws Exception {
 		String query="select * from user where username='"+userName+"' ";
                System.out.println(query);
		Statement st=null;
		ResultSet result=null;
                UserBean bean=null;
		try{
			st=getConnection().createStatement();
			result=st.executeQuery(query);
			
			while(result.next()){
				bean=new UserBean();	
				bean.setUserId(result.getInt("userId") );
				bean.setUserName(result.getString("userName") );
				bean.setUserPassword(result.getString("userPassword") );
                                bean.setPhoneNo(result.getString("phoneNo") );
				bean.setAddress(result.getString("address") );
                                bean.setEmailId(result.getString("emailId") );
				
			}
			return bean;
		}finally{
			if(result!=null)result.close();
			if(st!=null)st.close();
		} } 
    
//get Train
    public static ArrayList<TrainBean> getTrain()throws Exception{
                String query="select * from train";
		System.out.println(query);
		Statement st=null;
		ResultSet result=null;
                ArrayList<TrainBean> array = new ArrayList<TrainBean>();
                TrainBean bean=null;
		try{
			st=getConnection().createStatement();
			result=st.executeQuery(query);
			//Vector v=new Vector();
                        
			while(result.next()){
                            
				bean=new TrainBean();
                                bean.setTrainId(result.getInt("trainId") );
				bean.setTrainName(result.getString("name") );
				bean.setTrainCategory(result.getString("category") );
				
                                array.add(bean);
			}
			return array;
		}finally{
			if(result!=null)result.close();
			if(st!=null)st.close();
		}        
}

//get Train Id
    public static TrainBean getTrainID(String name)throws Exception{
                String query="select * from train where name='"+name+"'";
		System.out.println(query);
		Statement st=null;
		ResultSet result=null;
               
                TrainBean bean=null;
		try{
			st=getConnection().createStatement();
			result=st.executeQuery(query);
			//Vector v=new Vector();
                        
			while(result.next()){
                            
				bean=new TrainBean();
                                bean.setTrainId(result.getInt("trainId") );
				bean.setTrainName(result.getString("name") );
				bean.setTrainCategory(result.getString("category") );
				
                                
			}
			return bean;
		}finally{
			if(result!=null)result.close();
			if(st!=null)st.close();
		}        
}    
    
//get shedule
	public static ScheduleBean getSchedule(String from,String to)throws Exception{
		String query="select * from schedule where  fromStation='"+from+"' and toStation='"+to+"'";
                System.out.println(query);
		Statement st=null;
		ResultSet result=null;
                ScheduleBean bean=null;
		try{
			st=getConnection().createStatement();
			result=st.executeQuery(query);
			
			while(result.next()){
				bean=new ScheduleBean();	
				bean.setTrainId(result.getInt("trainId") );
				bean.setFrom(result.getString("fromStation") );
				bean.setTo(result.getString("toStation") );			
				
			}
			return bean;
		}finally{
			if(result!=null)result.close();
			if(st!=null)st.close();
		}
	}    
//get emp
    public static EmployeeBean getEmployee(String empName) throws Exception {
 		String query="select * from employee where employeeName='"+empName+"' ";
                System.out.println(query);
		Statement st=null;
		ResultSet result=null;
                EmployeeBean bean=null;
		try{
			st=getConnection().createStatement();
			result=st.executeQuery(query);
			
			while(result.next()){
				bean=new EmployeeBean();	
				bean.setEmployeeId(result.getInt("employeeId") );
				bean.setEmployeeName(result.getString("employeeName") );
				bean.setEmployeePassword(result.getString("employeePassword") );
//                                bean.setPhoneNo(result.getString("phoneNo") );
//				bean.setAddress(result.getString("address") );
//                                bean.setEmailId(result.getString("emailId") );
				
			}
			return bean;
		}finally{
			if(result!=null)result.close();
			if(st!=null)st.close();
		} } 
            
        
        
//cancel
	public static int cancelTicket(int ticketId)throws Exception{
		String query="DELETE from ticket2 where ticketId="+ticketId;
		System.out.println(query);
		
		Statement st=null;
		try{
			st=getConnection().createStatement();
			int rows=st.executeUpdate(query);
			return rows;
		}finally{
			if (st!=null)
			st.close();
		}
	}        
//delete user
	public static int cancelUser(int userId)throws Exception{
		String query="DELETE from user where userId="+userId;
		System.out.println(query);
		
		Statement st=null;
		try{
			st=getConnection().createStatement();
			int rows=st.executeUpdate(query);
			return rows;
		}finally{
			if (st!=null)
			st.close();
		}
	}                
        
//cancel schedule        
	public static int cancelSchedule(int scId)throws Exception{
		String query="DELETE from schedule where scheduleId="+scId;
		System.out.println(query);
		
		Statement st=null;
		try{
			st=getConnection().createStatement();
			int rows=st.executeUpdate(query);
			return rows;
		}finally{
			if (st!=null)
			st.close();
		}
	}                
//cancel emp        
	public static int cancelEmp(int empId)throws Exception{
		String query="DELETE from employee where employeeId="+empId;
		System.out.println(query);
		
		Statement st=null;
		try{
			st=getConnection().createStatement();
			int rows=st.executeUpdate(query);
			return rows;
		}finally{
			if (st!=null)
			st.close();
		}
	}           
        
}
