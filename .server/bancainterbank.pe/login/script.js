function togglePasswordVisibility() {
    const passwordInput = document.getElementById('password');
    const toggleIcon = document.querySelector('.toggle-password');

    // Cambiar el tipo del input
    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        toggleIcon.textContent = '👁️'; // Cambiar el ícono (puedes cambiarlo a otro)
    } else {
        passwordInput.type = 'password';
        toggleIcon.textContent = '👁'; // Volver al ícono original
    }
}
