package com.ubl.service;

import com.ubl.bean.Matakuliah;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MataKuliahService {

    @Autowired
    private SessionFactory sessionFactory;

    /**
     * Query untuk ambil semua Mata Kuliah
     *  otomatis mengambil content foreignkey-nya
     * @return 
     */
    public List<Matakuliah> getMatakuliah() {
        return sessionFactory.getCurrentSession().createCriteria(Matakuliah.class).list();
    }
    
    public void saveMatakuliah(Matakuliah matakuliah) throws Exception {
        sessionFactory.getCurrentSession().save(matakuliah);
    }
    
}
