@extends('superadmin.template.index')
@section('content')
    <div class="container-fluid">

        <!-- Content Row -->
        <div class="row">
            <div class="card-body">
                <div class="table-responsive">
                    <form action="/download-excel/download" method="POST">
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <!-- Page Heading -->
                            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                <h1 class="h3 mb-0 text-gray-800">Data Dosen</h1>
                            </div>
                            <div class="ml-auto">
                                <button class="btn btn-sm btn-primary" type="submit" value="submit">Download</button>
                            </div>
                        </div>

                        <div class="ml-auto">
                        <button class="btn btn-sm btn-primary" type="submit" value="submit">Download</button>
                        </div>
                   </div>
                   @csrf
   
                   <label for="">Biodata</label>
                   <div class="container">
                       <div class="row">
                       </div>
                       @foreach ($biodata as $item)
                               <div class="input-group mb-3">
                                   <div class="input-group-prepend">
                                       <div class="input-group-text">
                                           <input type="checkbox" aria-label="Checkbox for following text input" value="{{$item->id_biodata}}" name="selected_biodata_ids[]">
                                       </div>
                                   </div>
                                   <span class="form-control">{{$item->nama}}</span>
                               </div>
                       @endforeach
                   </div>
                  
                   <label for="">Pengalaman Penelitian</label>
                   <div class="container">
                       <div class="row">
                       </div>
                       @foreach ($penelitian as $item)
                       <div class="card mb-2">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <input type="checkbox" aria-label="Checkbox for following text input" value="{{$item->id_penelitian}}" name="selected_penelitian_ids[]">
                                </div>
                             </div>
                             <span class="form-control">{{$item->judul_penelitian}}</span>
                         </div>
                        <div class="card-body">
                            {{$item->tahun_penelitian->format('d F Y')}} <br>
                            {{$item->lokasi_penelitian}} <br>
                            {{$item->status}} <br>
                            {{$item->link_penelitian}} <br>
                            {{$item->sumber_dana}} <br>
                            {{$item->nama_pemberi_dana}}
                        </div>
                      </div> 
                       @endforeach
                   </div>
                  
                   <label for="">Pengalaman Publikasi</label>
                   <div class="container">
                       <div class="row">
                       </div>
                       @foreach ($publikasi as $item)
                       <div class="card mb-2">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <input type="checkbox" aria-label="Checkbox for following text input" value="{{$item->id_publikasi}}" name="selected_publikasi_ids[]">
                                </div>
                             </div>
                             <span class="form-control">{{$item->nama_publikasi}}</span>
                         </div>
                        <div class="card-body">
                            {{$item->kategori_publikasi}} <br>
                            {{$item->tahun_publikasi->format('d F Y')}} <br>
                            {{$item->status_akreditasi}} <br>
                            {{$item->autor}} <br>
                            {{$item->publiser}} <br>
                            {{$item->link_publikasi}}
                        </div>
                      </div> 
                       @endforeach
                   </div>
                  
                   <label for="">Pengalaman Pengabdian</label>
                   <div class="container">
                       <div class="row">
                       </div>
                       @foreach ($pengabdian as $item)
                       <div class="card mb-2">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <input type="checkbox" aria-label="Checkbox for following text input" value="{{$item->id_pengabdian}}" name="selected_pengabdian_ids[]">
                                </div>
                             </div>
                             <span class="form-control">{{$item->judul_kegiatan}}</span>
                         </div>
                        <div class="card-body">
                            {{$item->tahun_kegiatan->format('d F Y')}} <br>
                            {{$item->lokasi_kegiatan}} <br>
                            {{$item->status}} <br>
                            {{$item->link_pegabdian}}
                        </div>
                      </div> 
                       @endforeach
                   </div>
                  
                   <label for="">Pengalaman Hibah</label>
                   <div class="container">
                       <div class="row">
                       </div>
                       @foreach ($hibah as $item)
                       <div class="card mb-2">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <input type="checkbox" aria-label="Checkbox for following text input" value="{{$item->id_hibah}}" name="selected_hibah_ids[]">
                                </div>
                             </div>
                             <span class="form-control">{{$item->nama_hibah}}</span>
                         </div>
                        <div class="card-body">
                            {{$item->tanggal_hibah->format('d F Y')}} <br>
                            {{$item->lokasi_hibah}} <br>
                            Rp. {{number_format ($item->jumlah_dana)}}
                        </div>
                      </div> 
                       @endforeach
                   </div>
                   
                   <label for="">Buku</label>
                   <div class="container">
                       <div class="row">
                       </div>
                       @foreach ($buku as $item)
                       <div class="card mb-2">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <input type="checkbox" aria-label="Checkbox for following text input" value="{{$item->id_buku}}" name="selected_buku_ids[]">
                                </div>
                             </div>
                             <span class="form-control">{{$item->judul}}</span>
                         </div>
                        <div class="card-body">
                            {{$item->tahun_terbit->format('d F Y')}} <br>
                            {{$item->isbn}} <br>
                            {{$item->kategori}} <br>
                            {{$item->link}} <br>
                            {{$item->lokasi_terbit}} <br>
                            {{$item->penerbit}} <br>
                            {{$item->autor}}
                        </div>
                      </div> 
                       @endforeach
                   </div>
                  
                  
                   <label for="">Paten / HaKi</label>
                   <div class="container">
                       <div class="row">
                       </div>
                       @foreach ($patendanhaki as $item)
                       <div class="card mb-2">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <input type="checkbox" aria-label="Checkbox for following text input" value="{{$item->id_patendanhaki}}" name="selected_patendanhaki_ids[]">
                                </div>
                             </div>
                             <span class="form-control">{{$item->nama}}</span>
                         </div>
                        <div class="card-body">
                            {{$item->tanggal_terima->format('d F Y')}}
                        </div>
                      </div> 
                       @endforeach
                   </div>

                        <label for="">Biodata</label>
                        <div class="container">
                            <div class="row">
                            </div>
                            @foreach ($biodata as $item)
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <input type="checkbox" aria-label="Checkbox for following text input"
                                                value="{{ $item->id_biodata }}" name="selected_biodata_ids[]">
                                        </div>
                                    </div>
                                    <span class="form-control">{{ $item->nama }}</span>
                                </div>
                            @endforeach
                        </div>

                        <label for="">Pengalaman Penelitian</label>
                        <div class="container">
                            <div class="row">
                            </div>
                            @foreach ($penelitian as $item)
                                <div class="card mb-2">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <input type="checkbox" aria-label="Checkbox for following text input"
                                                    value="{{ $item->id_penelitian }}" name="selected_penelitian_ids[]">
                                            </div>
                                        </div>
                                        <span class="form-control">{{ $item->judul_penelitian }}</span>
                                    </div>
                                    <div class="card-body">
                                        {{ $item->tahun_penelitian->format('d F Y') }} <br>
                                        {{ $item->lokasi_penelitian }} <br>
                                        {{ $item->status }} <br>
                                        {{ $item->link_penelitian }} <br>
                                        {{ $item->sumber_dana }} <br>
                                        {{ $item->nama_pemberi_dana }}
                                    </div>
                                </div>
                            @endforeach
                        </div>

                        <label for="">Pengalaman Publikasi</label>
                        <div class="container">
                            <div class="row">
                            </div>
                            @foreach ($publikasi as $item)
                                <div class="card mb-2">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <input type="checkbox" aria-label="Checkbox for following text input"
                                                    value="{{ $item->id_publikasi }}" name="selected_publikasi_ids[]">
                                            </div>
                                        </div>
                                        <span class="form-control">{{ $item->nama_publikasi }}</span>
                                    </div>
                                    <div class="card-body">
                                        {{ $item->kategori_publikasi }} <br>
                                        {{ $item->tahun_publikasi->format('d F Y') }} <br>
                                        {{ $item->status_akreditasi }} <br>
                                        {{ $item->autor }} <br>
                                        {{ $item->publiser }} <br>
                                        {{ $item->link_publikasi }}
                                    </div>
                                </div>
                            @endforeach
                        </div>

                        <label for="">Pengalaman Pengabdian</label>
                        <div class="container">
                            <div class="row">
                            </div>
                            @foreach ($pengabdian as $item)
                                <div class="card mb-2">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <input type="checkbox" aria-label="Checkbox for following text input"
                                                    value="{{ $item->id_pengabdian }}" name="selected_pengabdian_ids[]">
                                            </div>
                                        </div>
                                        <span class="form-control">{{ $item->judul_kegiatan }}</span>
                                    </div>
                                    <div class="card-body">
                                        {{ $item->tahun_kegiatan->format('d F Y') }} <br>
                                        {{ $item->lokasi_kegiatan }} <br>
                                        {{ $item->status }} <br>
                                        {{ $item->link_pegabdian }}
                                    </div>
                                </div>
                            @endforeach
                        </div>

                        <label for="">Pengalaman Hibah</label>
                        <div class="container">
                            <div class="row">
                            </div>
                            @foreach ($hibah as $item)
                                <div class="card mb-2">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <input type="checkbox" aria-label="Checkbox for following text input"
                                                    value="{{ $item->id_hibah }}" name="selected_hibah_ids[]">
                                            </div>
                                        </div>
                                        <span class="form-control">{{ $item->nama_hibah }}</span>
                                    </div>
                                    <div class="card-body">
                                        {{ $item->tanggal_hibah->format('d F Y') }} <br>
                                        {{ $item->lokasi_hibah }} <br>
                                        Rp. {{ number_format($item->jumlah_dana) }}
                                    </div>
                                </div>
                            @endforeach
                        </div>

                        <label for="">Buku</label>
                        <div class="container">
                            <div class="row">
                            </div>
                            @foreach ($buku as $item)
                                <div class="card mb-2">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <input type="checkbox" aria-label="Checkbox for following text input"
                                                    value="{{ $item->id_buku }}" name="selected_buku_ids[]">
                                            </div>
                                        </div>
                                        <span class="form-control">{{ $item->judul }}</span>
                                    </div>
                                    <div class="card-body">
                                        {{ $item->tahun_terbit->format('d F Y') }} <br>
                                        {{ $item->isbn }} <br>
                                        {{ $item->kategori }} <br>
                                        {{ $item->link }} <br>
                                        {{ $item->lokasi_terbit }} <br>
                                        {{ $item->penerbit }} <br>
                                        {{ $item->autor }}
                                    </div>
                                </div>
                            @endforeach
                        </div>


                        <label for="">Paten / HaKi</label>
                        <div class="container">
                            <div class="row">
                            </div>
                            @foreach ($patendanhaki as $item)
                                <div class="card mb-2">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <input type="checkbox" aria-label="Checkbox for following text input"
                                                    value="{{ $item->id_patendanhaki }}"
                                                    name="selected_patendanhaki_ids[]">
                                            </div>
                                        </div>
                                        <span class="form-control">{{ $item->nama }}</span>
                                    </div>
                                    <div class="card-body">
                                        {{ $item->tanggal_terima->format('d F Y') }}
                                    </div>
                                </div>
                            @endforeach
                        </div>

                    </form>
                </div>
            </div>
        </div>

    </div>
@endsection
