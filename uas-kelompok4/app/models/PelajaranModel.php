<?php

class PelajaranModel {
    private $table = 'pelajaran';
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    // Metode untuk mengambil semua data pelajaran
    public function getPelajaran() {
        $this->db->query("SELECT * FROM " . $this->table);
        return $this->db->resultSet();
    }

    // Contoh metode pencarian berdasarkan kolom yang ada
    public function searchPelajaran($keyword) {
        $this->db->query("SELECT * FROM " . $this->table . " WHERE nama LIKE :keyword OR guru LIKE :keyword");
        $this->db->bind('keyword', "%" . $keyword . "%");
        return $this->db->resultSet();
    }

    // Contoh metode pengurutan berdasarkan kolom yang ada
    public function sortPelajaranByNip() {
        $this->db->query("SELECT * FROM " . $this->table . " ORDER BY nip");
        return $this->db->resultSet();
    }

    public function sortPelajaranByGuru() {
        $this->db->query("SELECT * FROM " . $this->table . " ORDER BY guru");
        return $this->db->resultSet();
    }

    public function sortPelajaranByName() {
        $this->db->query("SELECT * FROM " . $this->table . " ORDER BY nama");
        return $this->db->resultSet();
    }

    public function getPelajaranById($id) {
        $this->db->query("SELECT * FROM " . $this->table . " WHERE id = :id");
        $this->db->bind('id', $id);
        return $this->db->single();
    }

    public function addPelajaran($data) {
        $this->db->query("INSERT INTO " . $this->table . " (nama, guru, nip) VALUES (:nama, :guru, :nip)");
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('guru', $data['guru']);
        $this->db->bind('nip', $data['nip']);
        $this->db->execute();
        return $this->db->rowCount();
    }

    public function updatePelajaran($data) {
        $this->db->query("UPDATE " . $this->table . " SET nama = :nama, guru = :guru, nip = :nip WHERE id = :id");
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('guru', $data['guru']);
        $this->db->bind('nip', $data['nip']);
        $this->db->bind('id', $data['id']);
        $this->db->execute();
        return $this->db->rowCount();
    }

    public function deletePelajaran($id) {
        $this->db->query("DELETE FROM " . $this->table . " WHERE id = :id");
        $this->db->bind('id', $id);
        $this->db->execute();
        return $this->db->rowCount();
    }
}