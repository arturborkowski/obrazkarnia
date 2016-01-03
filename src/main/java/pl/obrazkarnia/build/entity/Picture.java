package pl.obrazkarnia.build.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Picture {

	@Id
	@GeneratedValue
	private Integer id;
	
	private String name;
	private SearchHistory history;
	private String url;
	private Date dateAdded;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public SearchHistory getHistory() {
		return history;
	}
	public void setHistory(SearchHistory history) {
		this.history = history;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Date getDateAdded() {
		return dateAdded;
	}
	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}
	
	
}
