<?php

namespace App\Exports;
use App\Models\BiodataModels;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithTitle;


class BiodataSheet implements FromQuery, WithHeadings, WithTitle
{
    protected $selectedBiodataIds;
    protected $sheetName;

    public function __construct($selectedBiodataIds, $sheetName)
    {
        $this->selectedBiodataIds = $selectedBiodataIds;
        $this->sheetName = $sheetName;
    }

    public function query()
    {
        return BiodataModels::whereIn('id_biodata', $this->selectedBiodataIds)
            ->join('tb_user', 'tb_biodata.id', '=', 'tb_user.id') // Mengganti 'tb_biodata.id' dengan 'BiodataModels.user_id'
            ->select(
                'tb_biodata.nama', 
                'tb_biodata.nidn', 
                'tb_user.nrp as nrp', // Memberikan alias 'nrp' pada kolom 'tb_user.nrp'
                'tb_biodata.alamat', 
                'tb_biodata.tempat_lahir', 
                'tb_biodata.tanggal_lahir', 
                'tb_biodata.nik', 
                'tb_biodata.agama', 
                'tb_biodata.email', 
                'tb_biodata.no_hp', 
                'tb_biodata.jenis_kelamin'
            );
    }
    
    

    public function headings(): array
    {
        // Define column headers
        return [
            'Nama',
            'NIDN',
            'NRP',
            'Alamat',
            'Tempat Lahir',
            'Tanggal Lahir',
            'NIK',
            'Agama',
            'E-Mail',
            'No HP',
            'Jenis Kelamin',
        ];
    }

    public function title(): string
    {
        return $this->sheetName;
    }
}
