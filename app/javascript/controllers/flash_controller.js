// Controlador Stimulus para manejar notificaciones flash
// Este controlador se conecta automáticamente a elementos HTML con data-controller="flash"

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // Método que se ejecuta AUTOMÁTICAMENTE cuando el elemento HTML se conecta al DOM
  // Es como un "before_action" en Rails - se ejecuta cuando la notificación aparece
  connect() {
    // Auto-hide después de 5 segundos
    // setTimeout() programa una función para ejecutarse después de un tiempo específico
    // () => { this.close() } es una función flecha (arrow function) que llama al método close()
    // 5000 = 5000 milisegundos = 5 segundos
    // this.timeout guarda la referencia del timeout para poder cancelarlo después
    this.timeout = setTimeout(() => {
      this.close()
    }, 5000)
  }

  // Método que se ejecuta AUTOMÁTICAMENTE cuando el elemento HTML se desconecta del DOM
  // Es como un "after_action" en Rails - se ejecuta cuando la notificación se elimina
  disconnect() {
    // Verifica si existe un timeout activo
    if (this.timeout) {
      // Cancela el timeout programado
      // Esto evita que se ejecute el close() automático si el usuario ya cerró manualmente
      clearTimeout(this.timeout)
    }
  }

  // Método que se puede llamar desde la vista usando data-action="click->flash#close"
  // Elimina la notificación del DOM
  close() {
    // this.element es la referencia al elemento HTML donde está el controlador
    // .remove() elimina el elemento del DOM
    this.element.remove()
  }
}