@extends('dosen.template.index')
@section('content')
    <div class="container-fluid">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0" style="color: black">Publikasi</h1>
            </div>

            <div class="d-sm-flex align-items-center justify-content-between mb-2">
                <a href="/form-publikasi-dosen" class="btn btn-sm btn-warning">Back</a>
                <form action="/form-publikasi-dosen/updateData/{{ $publikasi->id_publikasi }}" method="POST">
                    @method('put')
                    @csrf
                    <button class="btn btn-primary btn-sm" type="submit" value="submit">Simpan</button>
            </div>

            <!-- Content Row -->
            <div class="row">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class=" table table-bordred">
                            <thead>
                                <tr>
                                    <th>Data</th>
                                    <th>Keterangan</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>
                                        Kategori Publikasi
                                    </td>
                                    <td>
                                        <select class="custom-select" name="kategori_publikasi">
                                            <option value="jurnal nasional terakreditasi"
                                                {{ $publikasi->kategori_publikasi == 'jurnal nasional terakreditasi' ? 'selected' : '' }}>
                                                Jurnal Nasional Terakreditasi
                                            </option>
                                            <option value="jurnal nasional tidak terakreditasi"
                                                {{ $publikasi->kategori_publikasi == 'jurnal nasional tidak terakreditasi' ? 'selected' : '' }}>
                                                Jurnal Nasional Tidak Terakreditasi
                                            </option>
                                            <option value="jurnal internasional terakreditasi"
                                                {{ $publikasi->kategori_publikasi == 'jurnal internasional terakreditasi' ? 'selected' : '' }}>
                                                Jurnal Internasional Terakreditasi
                                            </option>
                                            <option value="jurnal internasional tidak terakreditasi"
                                                {{ $publikasi->kategori_publikasi == 'jurnal internasional tidak terakreditasi' ? 'selected' : '' }}>
                                                Jurnal Internasional Tidak Terakreditasi
                                            </option>
                                            <option value="prosiding nasional"
                                                {{ $publikasi->kategori_publikasi == 'prosiding nasional' ? 'selected' : '' }}>
                                                Prosiding Nasional
                                            </option>
                                            <option value="prosiding internasional"
                                                {{ $publikasi->kategori_publikasi == 'prosiding internasional' ? 'selected' : '' }}>
                                                Prosiding Internasional
                                            </option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Nama Publikasi
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" placeholder="Isi Nama Publikasi"
                                            name="nama_publikasi" value="{{ $publikasi->nama_publikasi }}">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Tahun Publikasi
                                    </td>
                                    <td>
                                        <input type="date" class="form-control" placeholder="Isi Tahun Publikasi"
                                            name="tahun_publikasi" max="{{ date('Y-m-d') }}"
                                            value="{{ date('Y-m-d', strtotime($publikasi->tahun_publikasi)) }}">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Autor
                                    </td>
                                    <td>
                                        <select class="custom-select" name="autor">
                                            <option value="single autor"
                                                {{ $publikasi->autor == 'single autor' ? 'selected' : '' }}>
                                                Single Autor
                                            </option>
                                            <option value="first autor"
                                                {{ $publikasi->autor == 'first autor' ? 'selected' : '' }}>
                                                First Autor
                                            </option>
                                            <option value="member autor"
                                                {{ $publikasi->autor == 'member autor' ? 'selected' : '' }}>
                                                Member Autor
                                            </option>
                                        </select>
                                    </td>
                                </tr>
                                <td>
                                    Link Publikasi
                                </td>
                                <td>
                                    <input type="text" class="form-control" placeholder="Isi Link Publikasi"
                                        name="link_publikasi" value="{{ $publikasi->link_publikasi }}">
                                </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            </form>

        </div>
    </div>
@endsection
