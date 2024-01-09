<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class EksportExcelPengabdian implements WithMultipleSheets
{
    protected $models;

    public function __construct($models)
    {
        $this->models = $models;
    }

    public function sheets(): array
    {
        $sheets = [];
    
        foreach ($this->models as $sheetData) {
            $ids = collect($sheetData['data'])->pluck('id_pengabdian',)->toArray();
            $sheetName = $sheetData['Pengabdian'];
            $sheets[] = (new DownloadAllSheetPengabdian($ids, $sheetName));
        }
        return $sheets;
    }
    
}
