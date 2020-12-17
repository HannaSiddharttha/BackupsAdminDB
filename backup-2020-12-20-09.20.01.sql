
CREATE LOGIN Usuarios WITH PASSWORD ='12345';
use tienda;

CREATE USER Cliente FOR LOGIN UsuariosC;
CREATE USER Vendedor FOR LOGIN UsuariosV;
CREATE USER Administrador FOR LOGIN UsuarioA;

grant select on object :: producto to Cliente;

grant insert,select on object :: producto to Vendedor;

revoke insert on object :: proveedor to Vendedor;

grant update,delete on object :: tienda to Administrador;

grant insert on object :: proveedor to Administrador;
