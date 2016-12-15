package com.ubl.service;

import com.ubl.bean.Dosen;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DosenService {

    @Autowired
    private SessionFactory sessionFactory;
    
    /**
     * Query untuk ambil semua dosen
     * @return 
     */
    public List<Dosen> getDosens() {
        return sessionFactory.getCurrentSession().createCriteria(Dosen.class).list();
    }
    
    public void saveDosen(Dosen dosen) throws Exception {
        sessionFactory.getCurrentSession().save(dosen);
    }
}
