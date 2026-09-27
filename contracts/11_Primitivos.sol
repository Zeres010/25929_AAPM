// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Primitivos {
    bool public pausado;
    bytes32 private saludo = hex"686F6C61";
    address public direccion;
    //bytes32 private trabajo = hex"7bf560ce7a33e21869241b2544f8b0767788ed21f3f24cb320ba707da91070ee";
    // string private cadena = "trabajo de blockchain";

    function pausar(bool _pausado) public {
        pausado = _pausado;
    }

    function operar() public view  {
        require(pausado == false, "El contraro esta pausado");
        console.log("Aqui va la toda la logica de la funcion operar");
    }

    function devolverSaludo() public view returns (bytes32) {
        return saludo;
    }

    /*function validarTrabajo(string memory _trabajo) public view {
        bytes32 cadenaTemp = keccak256(abi.encodePacked(_trabajo));
        require(cadenaTemp == trabajo, "no es el mimso trabajo");
        console.log("Ejecucion de bloque por trabajo correcto");
    }*/

    function compararCadenas(bytes32 _textoHex) public pure {
        bytes32 temporalHex = keccak256(abi.encodePacked("trabajo de blockchain"));
        require(_textoHex == temporalHex, "no es el mismo trabajo");
        console.log("Ejecucion de bloque por trabajo correcto");
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }
}
