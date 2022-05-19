def encriptador(mensaje):
    # ACÁ INICIA LA FUNCIÓN ENCRIPTADOR
    # (En este espacio debes poner el código necesario para encriptar)
    letters = list(mensaje)
    # get the unique characters
    unique = set(letters)
    # create the encryption key
    clave = dict(zip(unique, alfabeto))
    # encryp the message through the key
    encriptado = ''
    for letter in letters:
        encriptado += clave[letter]
    # ACÁ TERMINA LA FUNCIÓN ENCRIPTADOR
    # NO MODIFIQUES LA SIGUIENTE LÍNEA
    return encriptado, clave

def desencriptador(encriptado, clave):
    # ACÁ INICIA LA FUNCIÓN DESENCRIPTADOR
    # (En este espacio debes poner el código necesario para desencriptar)
    # reverse the key
    yek = dict(zip(clave.values(), clave.keys()))
    # decrypt
    decrypted = ''
    for letter in list(encriptado):
        decrypted += yek[letter]
    # ACÁ TERMINA LA FUNCIÓN DESENCRIPTADOR
    # NO MODIFIQUES LA SIGUIENTE LÍNEA
    return decrypted
