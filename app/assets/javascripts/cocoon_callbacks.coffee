jQuery(document).on 'turbolinks:load', ->
  emails = $('#emails')

  emails.on 'cocoon:after-insert', (e, added_el) ->
    added_el.find("input").first().focus();

  emails.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)

  telefones = $('#telefones')

  telefones.on 'cocoon:after-insert', (e, added_el) ->
    added_el.find("input").first().focus();

  telefones.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)  

  items = $('#items')

  items.on 'cocoon:after-insert', (e, added_el) ->
    added_el.find("input").first().focus();

  items.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)  