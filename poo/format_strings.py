# not_show_values = ("John", "Peter", "Vicky")

# message = (
#     'Faltan "%(missing)s" de RegistryObjects en OBJETOS_REGISTRO'
#     ) % {'missing': ', '.join(not_show_values)}
# message_b = f'Faltan "{", ".join(not_show_values)}" '\
#     'de RegistryObjects en OBJETOS_REGISTRO'

# print(message)
# print(message_b)

# assert message == message_b, 'no son iguales'
# print('llega al final, osea está bien a')

# concept_definition = {
#     'tipo': '0E',
#     'secuencia': 102
# }

# hierarchy = '{}{}'.format(
#         concept_definition['tipo'],
#         str(concept_definition['secuencia']).zfill(4)
#     )

# hierarchy_b = (
#     f'{concept_definition["tipo"]}'
#     f'{str(concept_definition["secuencia"]).zfill(4)}'
# )

# print(hierarchy)
# print(hierarchy_b)
# assert hierarchy == hierarchy_b, 'no son iguales'
# print('llega al final todo bienb')


class A:
    def foo(self):
        print("Método foo de A")


class B(A):
    pass
    # def foo(self):
    #     print("Método foo de B")


class C(A):
    pass
    # def foo(self):
    #     print("Método foo de C")


class D(B, C):
    pass
    # def foo(self):
    #     print("Método foo de D")


d = D()
print(D.mro())
d.foo()  # Imprime: Método foo de B
