require("dotenv").config(); // 👈 CLAVE
const bcrypt = require("bcrypt");
const mysql = require("./src/database/mysql-pool");

const resetPassword = async () => {
    try {
        const user_name = "tania"; //cambia el usuario
        const newPassword = "recetasTania"; //pon nueva contraseña

        const hash = await bcrypt.hash(newPassword, 10);

        const connection = await mysql.getConnection();
        await connection.query(
            "UPDATE users SET password = ? WHERE user_name = ?",
            [hash, user_name],
        );

        console.log(`Contraseña actualizada para ${user_name}`);
        process.exit();
    } catch (error) {
        console.error("Error reseteando contraseña:", error);
        process.exit(1);
    }
};

resetPassword();
