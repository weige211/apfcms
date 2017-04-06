package com.hic.serviceimpl;

import java.util.Date;

public class LastCache<T> {

	
	 private T data;  
	 
	 private long refreshtime;  
	 
	  
	   public LastCache(T data) {  
	         this(data, new Date().getTime());  
	   }  
	     
	   public LastCache(T data, long refreshtime) {  
	       this.data = data;  
	       this.refreshtime = refreshtime;  
	   }  
	     
	    public T getData() {  
	       return data;  
	   }  
	      
	   public void setData(T data) {  
	       this.data = data;  
	  }  
	     
	    public long getRefreshtime() {  
	        return refreshtime;  
	   }  
	     
    public void setRefreshtime(long refreshtime) {  
      this.refreshtime = refreshtime;  
	    }  

}
