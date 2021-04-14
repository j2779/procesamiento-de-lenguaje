from django.db import models
from django.db.models import PROTECT


# Create your models here.


class Estado(models.Model):
    estado = models.TextField()

    def __str__(self):
        return self.name

    class Meta:
        verbose_name: 'estado'
        verbose_name_plural: 'estados'
        db_Table: 'estado_user'
        ordering: ['id']


class Usuario(models.Model):
    estado_user = models.ForeignKey(Estado, on_delete=PROTECT)
    nombre = models.TextField()
    apellido = models.TextField()
    cedula = models.CharField(max_length=10, unique=True)
    tipo_persona = models.TextField()
    empresa = models.TextField(null=True, blank=True)
    edad = models.PositiveIntegerField(max_length=3)
    telefono = models.CharField(max_length=10, null=True, blank=True)
    correo = models.EmailField(unique=True)
    clave = models.TextField()
    fecha_registro = models.DateTimeField(auto_now=True)
    fecha_ingreso = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name: 'usuario'
        verbose_name_plural: 'usuarios'
        db_Table: 'usuario'
        ordering: ['id']


class Perfiles(models.Model):
    universidad = models.TextField()
    facultad = models.TextField()
    carrera = models.TextField()
    descripcion = models.TextField()
    fecha_creacion = models.DateTimeField(auto_now=True)
    actualizacion = models.DateTimeField(auto_now_add=True, null=True, blank=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name: 'Perfil'
        verbose_name_plural: 'Perfiles'
        db_Table: 'Perfil_ocupacional'
        ordering: ['id']
