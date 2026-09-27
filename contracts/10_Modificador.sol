// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Modificador {
    address public propietario;
    uint256 private fondos;

    constructor() {
        propietario = msg.sender;
    }

    modifier esPropietario(){
        require(msg.sender == propietario, "No puedes ejecutar prq no eres el propietarios del contrato");
        _;
    }

    function depositarFondos(uint256 _monto) public esPropietario {
        fondos = fondos + _monto;
    }

    function retirarFondos(uint256 _monto) public esPropietario {
        require(fondos >= _monto, "No tienes suficiente fondos");
        fondos = fondos - _monto;
    }

    function consultarFondos() public view returns (uint256) {
        return fondos;
    }

    function limpiarFondos() public esPropietario {
        //require(msg.sender == propietario, "No puedes ejecutar prq no eres el propietarios del contrato");
        fondos = 0;
    }
}