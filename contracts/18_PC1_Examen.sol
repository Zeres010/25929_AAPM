// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.1;
import "hardhat/console.sol";

contract Hospital259290 {
    struct Paciente {
        uint256 id;
        string nombre;
        uint edad;
        string diagnostico;
        bool estado;
    }

    Paciente[] public pacientes;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }
}