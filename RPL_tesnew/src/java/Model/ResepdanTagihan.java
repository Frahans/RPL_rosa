/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author HP
 */
public class ResepdanTagihan {

    private String kode_resep, tanggal_periksa, nama_obat, dosis, jenis_pembayaran, status;
    private int jumlah;
    private double biaya_obat, biaya_administrasi, biaya_periksa, biaya_total;

    public String getKode_resep() {
        return kode_resep;
    }

    public void setKode_resep(String kode_resep) {
        this.kode_resep = kode_resep;
    }

    public String getTanggal_periksa() {
        return tanggal_periksa;
    }

    public void setTanggal_periksa(String tanggal_periksa) {
        this.tanggal_periksa = tanggal_periksa;
    }

    public String getNama_obat() {
        return nama_obat;
    }

    public void setNama_obat(String nama_obat) {
        this.nama_obat = nama_obat;
    }

    public String getDosis() {
        return dosis;
    }

    public void setDosis(String dosis) {
        this.dosis = dosis;
    }

    public String getJenis_pembayaran() {
        return jenis_pembayaran;
    }

    public void setJenis_pembayaran(String jenis_pembayaran) {
        this.jenis_pembayaran = jenis_pembayaran;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getJumlah() {
        return jumlah;
    }

    public void setJumlah(int jumlah) {
        this.jumlah = jumlah;
    }

    public double getBiaya_obat() {
        return biaya_obat;
    }

    public void setBiaya_obat(double biaya_obat) {
        this.biaya_obat = biaya_obat;
    }

    public double getBiaya_administrasi() {
        return biaya_administrasi;
    }

    public void setBiaya_administrasi(double biaya_administrasi) {
        this.biaya_administrasi = biaya_administrasi;
    }

    public double getBiaya_periksa() {
        return biaya_periksa;
    }

    public void setBiaya_periksa(double biaya_periksa) {
        this.biaya_periksa = biaya_periksa;
    }

    public double getBiaya_total() {
        return biaya_total;
    }

    public void setBiaya_total(double biaya_total) {
        this.biaya_total = biaya_total;
    }

}
