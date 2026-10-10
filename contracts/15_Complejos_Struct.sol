// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Complejos_Struct {
    struct Alumno {
        uint256 codigo;
        string nombre;
        uint256 edad;
    }

    Alumno[] public alumnos;

    function agregarAlumno(uint256 _codigo, string memory _nombre, uint256 _edad) public {
        alumnos.push(Alumno(_codigo, _nombre, _edad));
    }

    function mostrarAlumno(uint256 _indice) public view returns (uint256 codigo, string memory nombre) {
        require(_indice < alumnos.length, "Posicion Incorrecta");
        return (alumnos[_indice].codigo, alumnos[_indice].nombre);
    }

    function mostrarAlumno2(uint256 _indice) public view returns (uint256 codigo, string memory nombre, uint256 edad) {
        require(_indice < alumnos.length, "Posicion Incorrecta");
        Alumno memory al = alumnos[_indice];
        return (al.codigo, al.nombre, al.edad);
    }

    function mostrarAlumno3(uint256 _indice) public view returns (Alumno memory alumno) {
        require(_indice < alumnos.length, "Posicion Incorrecta");
        return alumnos[_indice];
    }

    function buscarAlumno(uint256 _codigo) public view returns (uint256 codigo, string memory nombre, uint256 edad) {
        for (uint256 i = 0; i < alumnos.length; i++) {
            if (alumnos[i].codigo == _codigo) {
                return (alumnos[i].codigo, alumnos[i].nombre, alumnos[i].edad);
            }
        }
        revert("Alumno no encontrado");
    }
    function cambiarEdadAlumno(uint256 _codigo) public {
        
        for(uint i=0; i < alumnos.length; i++) {
            Alumno storage al = alumnos[i];

            if(al.codigo == _codigo) {
                al.edad = al.edad + 1;
            }
        }
       
    }
}