module FormHelper

  def select_input(form, record, field, collection, options = {})
    _, grid_size, field_message, html_options , options = options_input(field, options, record)

    render(partial: 'inputs/select', layout: 'layouts/form',
           locals: {
             f: form, field: field, record: record, field_message: field_message,
             grid_size: grid_size, collection: collection, options: options,
             html_options: html_options
            })
  end

  def check_box_input(form, record, field, options = {})
    label, grid_size, field_message, html_options , options = options_input(field, options, record)

    render(partial: 'inputs/check_box', layout: 'layouts/form',
           locals: {
             f: form, field: field, record: record, field_message: field_message,
             grid_size: grid_size, label: label, options: options.merge(html_options)
           })
  end

  def text_input(form, record, field, options = {})
    _, grid_size, field_message, html_options , options = options_input(field, options, record)

    render(partial: 'inputs/text', layout: 'layouts/form',
           locals: {
             f: form, field: field, record: record, field_message: field_message,
             grid_size: grid_size, options: options.merge(html_options)
           })
  end

  def text_area_input(form, record, field, options = {})
    _, grid_size, field_message, html_options , options = options_input(field, options, record)

    render(partial: 'inputs/text_area', layout: 'layouts/form',
           locals: {
             f: form, field: field, record: record, field_message: field_message,
             grid_size: grid_size, options: options.merge(html_options)
           })
  end

  private

  def options_input(field, options, record)
    field_message = options[:field_message] || field
    error_messages = error_message(record, field_message)
    [
      options[:label],
      options[:grid_size] || 12,
      field_message,
      error_messages.merge(options[:html_options] || {}) || {},
      options[:options] || {}
    ]
  end

  def error_message(record, field_message)
    return {} if record.errors.messages[field_message].blank?

    {
      data: {
        toggle: 'tooltip',
        placement: 'top',
      },
      title: record.errors.messages[field_message].first.titlecase
    }
  end
end
