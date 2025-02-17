@extends('layout.master')

@section('konten')
<div class="row">
    <div class="col-12">
        <table class="table">
            <thead>
                <tr>
                    <th>Tittle</th>
                    <th>Body</th>
                    <th>Comments</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($posts as $p) 
            <tr>
            <td>{{$p->title}}</td>   
            <td>{{$p->body}}</td>
            <td>
                <ul>
                    {{-- Cara tampil data coment dari --}}
                    @foreach ($p -> comments as $c)
                        <li>{{$c-> body}}</li>                
                    @endforeach
                </ul>   
            </td>
        </tr>
        @endforeach
            </tbody>
        </table>
        {{$posts->links()}}

        {{-- cara tampil data post dari DB --}}
        {{-- @foreach ($posts as $p)
            <h2>{{$p->title}}</h2>
            <h4>{{$p->body}}</h4>
        @endforeach
        <ul> --}}
            {{-- Cara tampil data coment dari --}}
            {{-- @foreach ($p -> comments as $c)
                <li>{{$c-> body}}</li>                
            @endforeach --}}
        </ul>
    </div>
</div>