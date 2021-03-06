//Generated by 24HRS
package Models;


public class Supplier{

	private int supplier_id;
	private String name;
	private String address;
	private String email;
	private String status;
	private String date_time;

public Supplier(){
}

public Supplier(int supplier_id){
	this.supplier_id = supplier_id;
}
public Supplier(int supplier_id,String name,String address,String email,String status,String date_time){
	this.supplier_id = supplier_id;
	this.name = name;
	this.address = address;
	this.email = email;
	this.status = status;
	this.date_time = date_time;
}

public int getSupplier_id(){
return supplier_id;
}

public void setSupplier_id(int supplier_id){
	this.supplier_id = supplier_id;
}

public String getName(){
return name;
}

public void setName(String name){
	this.name = name;
}

public String getAddress(){
return address;
}

public void setAddress(String address){
	this.address = address;
}

public String getEmail(){
return email;
}

public void setEmail(String email){
	this.email = email;
}

public String getStatus(){
return status;
}

public void setStatus(String status){
	this.status = status;
}

public String getDate_time(){
return date_time;
}

public void setDate_time(String date_time){
	this.date_time = date_time;
}

}