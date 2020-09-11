function submitDesign() {
    if (document.getElementsByName("style[fixed_header]")[0].checked) {
        document.getElementsByName("style[fixed_header]")[0].value = true;
    } else {
        document.getElementsByName("style[fixed_header]")[0].value = false;
    }
    if (document.getElementsByName("style[fixed_sidebar]")[0].checked) {
        document.getElementsByName("style[fixed_sidebar]")[0].value = true;
    } else {
        document.getElementsByName("style[fixed_sidebar]")[0].value = false;
    }
    $('#design').submit();
    toastr["success"]("Diseño guardado correctamente")
}
function submitColors() {
    var header_color = $('#colors > div > div:nth-child(1) > div > ul > li > div.theme-settings-swatches > div.swatch-holder.switch-header-cs-class.active');
    if (header_color.length == 0) {
        document.getElementById("style_header_color").value = 'undefined'
    } else {
        document.getElementById("style_header_color").value = header_color[0].dataset.class
    }
    var sidebar_color = $('#colors > div > div:nth-child(3) > div > ul > li > div.theme-settings-swatches > div.swatch-holder.switch-sidebar-cs-class.active');
    if (sidebar_color.length == 0) {
        document.getElementById("style_sidebar_color").value = 'undefined'
    } else {
        document.getElementById("style_sidebar_color").value = sidebar_color[0].dataset.class
    }
    $('#colors').submit();
    toastr["success"]("Colores guardados correctamente")
}
function submitTabs() {
    var tabs = $('#tabs > div > ul > li > div.theme-settings-swatches > div > button.btn-wide.btn-shadow.btn-primary.active.btn.btn-secondary.switch-theme-class')[0];
    if (tabs.dataset.class == "body-tabs-line") {
        document.getElementById("style_tab_line").value = true
    } else {
        document.getElementById("style_tab_line").value = false
    }
    $('#tabs').submit();
    toastr["success"]("Pestañas guardadas correctamente")
}