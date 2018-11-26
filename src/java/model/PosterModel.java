/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import utils.HibernateUtil;
import entities.Poster;
import org.hibernate.Query;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author QUOCTRONG
 */
public class PosterModel {
    // Trả về tất cả bài viết
    public List<Poster> getAll(){
       Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Poster> listPost = new ArrayList<Poster>();
        try{
            session.beginTransaction();
            listPost=session.createCriteria(Poster.class).list();
            session.getTransaction().commit();
            session.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return listPost;
    }
}
