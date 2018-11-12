package com.app.view.config;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import com.app.view.pojo.AppUser;
import com.app.view.service.AppUserService;

@Configuration          //证明这个类是一个配置文件  
@EnableScheduling 
public class HomeScheduler {
	
	public static List<AppUser> users = null;
	
	@Autowired
	private AppUserService appUserService;
	
	
	//select * from LY_RZ_GJXXB where GJSJ <to_date('2017-11-15','yyyy-mm-dd')
//	delete LY_RZ_GJXXB where GJSJ <to_date('2017-12-9','yyyy-mm-dd')
//  @Scheduled(cron="1 0 0 ? * ? ") //每天12小时执行
	@Scheduled(cron="0 0 * * * ? ") 
    public void statusCheck() {    	
		if(users == null){
			appUserService.getMember();
		}
//		System.out.println(users);		
		if(users.size() > 0){				
			  Iterator<AppUser> it = users.iterator();  
		        while(it.hasNext()) {  
		        	AppUser u = it.next(); 
		        	Date d = u.valid_time;
					//如果有效时间过时了
				 if ( System.currentTimeMillis() > d.getTime()) {
					 appUserService.changeRole(u.getId());
					 it.remove();
		          } 		            
		        }  		
		}	
				   
    } 
	
  
}  