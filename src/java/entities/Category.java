package entities;
// Generated Nov 7, 2018 3:46:26 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Category generated by hbm2java
 */
@Entity
@Table(name="category"
    ,catalog="thuenha24h"
)
public class Category  implements java.io.Serializable {


     private int id;
     private String name;
     private Set<Poster> posters = new HashSet<Poster>(0);

    public Category() {
    }

	
    public Category(int id, String name) {
        this.id = id;
        this.name = name;
    }
    public Category(int id, String name, Set<Poster> posters) {
       this.id = id;
       this.name = name;
       this.posters = posters;
    }
   
     @Id 

    
    @Column(name="id", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    
    @Column(name="name", nullable=false, length=50)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="category")
    public Set<Poster> getPosters() {
        return this.posters;
    }
    
    public void setPosters(Set<Poster> posters) {
        this.posters = posters;
    }




}


