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

    function agregarElemento(
        uint256 _id,
        string memory _nombre,
        uint256 _edad,
        string memory _diagnostico,
        bool _estado
    ) public {
        require(_id % 2 == 0, "No se permiten id impares");
        pacientes.push(Paciente(_id, _nombre, _edad, _diagnostico, _estado));
    }

    function contarElementos() public view returns (uint256) {
        return pacientes.length;
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }
}