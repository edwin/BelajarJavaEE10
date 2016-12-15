package com.ubl.controller;

import com.ubl.bean.Dosen;
import com.ubl.bean.Matakuliah;
import com.ubl.service.DosenService;
import com.ubl.service.MataKuliahService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
    
    @Autowired
    private DosenService dosenService;
    
    @Autowired
    private MataKuliahService mataKuliahService;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.put("dosens", dosenService.getDosens());
        return "index";
    }

    /**
     *  jika berhasil save, maka redirect ke halaman utama
     *  parameter dosen berisi field yang ada pada class Dosen, yaitu iddosen dan namadosen yang dikirim dari jsp
     * 
     * @param dosen
     * @return
     * @throws Exception 
     */
    @RequestMapping(value = "/simpan-dosen", method = RequestMethod.POST)
    public String simpanDosen(Dosen dosen) throws Exception {
        dosenService.saveDosen(dosen);
        return "redirect:/";
    }
    
    @RequestMapping(value = "/mata-kuliah", method = RequestMethod.GET)
    public String mataKuliah(ModelMap modelMap) {
        modelMap.put("matakuliahs", mataKuliahService.getMatakuliah());
        return "mata-kuliah";
    }
    
    /**
     * 
     * @param matakuliah
     * @return
     * @throws Exception 
     */
    @RequestMapping(value = "/simpan-mata-kuliah", method = RequestMethod.POST)
    public String simpanDosen(Matakuliah matakuliah) throws Exception {
        mataKuliahService.saveMatakuliah(matakuliah);
        return "redirect:/mata-kuliah";
    }
}
