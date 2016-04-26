package edu.sms.entity;

import java.io.Serializable;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

public class Role_Function implements Serializable{
	
	private String ROLE_ID;
	private String	FUNCTION_ID;
	
	
	public String getROLE_ID() {
		return ROLE_ID;
	}
	public void setROLE_ID(String role_id) {
		ROLE_ID = role_id;
	}
	public String getFUNCTION_ID() {
		return FUNCTION_ID;
	}
	public void setFUNCTION_ID(String function_id) {
		FUNCTION_ID = function_id;
	}
	
	public boolean equals(Object obj){
		
		if(!(obj instanceof Role_Function)){
			return false;
		}
		Role_Function role_Function=(Role_Function)obj;
		return new EqualsBuilder()
			.appendSuper(super.equals(obj))
			.append(this.ROLE_ID,role_Function.ROLE_ID)
			.append(this.FUNCTION_ID,role_Function.FUNCTION_ID)
			.isEquals();
			
	} 
	
	public int hasCode(){
		
        return new HashCodeBuilder(-528253723, -475504089)
        .appendSuper(super.hashCode())
        .append(this.ROLE_ID).append(this.FUNCTION_ID)
        .toHashCode();
        
	}
	

}
