from main import Calculator

def test_sums_2_numbers():
    assert Calculator().suma(2, 2) == 4

def test_resta_2_numbers():
    assert Calculator().resta(5, 3) == 2


if __name__ == "__main__":
    test_sums_2_numbers()
    test_resta_2_numbers()
    print("¡Todas las pruebas pasaron correctamente!")
