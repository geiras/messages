define ->

  Messages =
    locale: "en_us"
    supportedLocales: [
      "en_us"
      "fr_fr"
      "pt_br"
      "pt_pt"
      "es_es"
      "pl_pl"
      "it_it"
    ]

    # Get a localized string.
    #
    #   key  - key to find in in @library
    #   data - data passed to the message that can be used in the template
    #
    # Returns a String.
    get: (key, data) ->
      return @library[key][@locale](data) if @library[key]?[@locale]
      return @library[key]["en_us"](data) if @library[key]?["en_us"]
      ""

    # Localized strings for each message.
    #
    # Example:
    #
    # foo:
    #   en_us: (data) -> "Bar #{ bat }"
    #
    library:

      # Label for the first tab in the UI. Refers to the grid form.
      tabForm:
        en_us: -> "Form"
        fr_fr: -> "Création"
        pt_br: -> "Formulário"
        pt_pt: -> "Criar"
        es_es: -> "Formulario"
        pl_pl: -> "Układ"
        it_it: -> "Crea"

      # Lable for the second tab in the UI. Refers to the grid notation form for
      # "custom" grids.
      tabCustom:
        en_us: -> "Custom"
        fr_fr: -> "Code"
        pt_br: -> "Customizado"
        pt_pt: -> "Perzonalizar"
        es_es: -> "Personalizado"
        pl_pl: -> "Własne"
        it_it: -> "Personalizzato"

      # Label for the third tab in the UI. Refers to the saved grid list.
      tabSaved:
        en_us: -> "Saved"
        fr_fr: -> "Collection"
        pt_br: -> "Salvo"
        pt_pt: -> "Favoritos"
        es_es: -> "Guardado"
        pl_pl: -> "Zapisane"
        it_it: -> "Preferiti"

      # Label for the button that appears on part of the UI that applies the
      # guides of the form, grid notation, or selected grid.
      btnAddGuides:
        en_us: -> "Add guides"
        fr_fr: -> "Ajouter les repères"
        pt_br: -> "Adicionar guias"
        pt_pt: -> "Adicionar guias"
        es_es: -> "Añadir guías"
        pl_pl: -> "Dodaj linie pomocnicze"
        it_it: -> "Aggiungi guide"

      # Label for the default button for alert modals.
      btnOk:
        en_us: -> "Ok"
        fr_fr: -> "Ok"
        pt_br: -> "Ok"
        pt_pt: -> "Ok"
        es_es: -> "Ok"
        pl_pl: -> "OK"
        it_it: -> "Ok"

      # Label for confirmation modals. Clicking agrees.
      btnYes:
        en_us: -> "Yes"
        fr_fr: -> "Oui"
        pt_br: -> "Sim"
        pt_pt: -> "Sim"
        es_es: -> "Si"
        pl_pl: -> "Tak"
        it_it: -> "Sì"

      # Label for the confirmation modals. Clicking rejects.
      btnNo:
        en_us: -> "No"
        fr_fr: -> "Non"
        pt_br: -> "Não"
        pt_pt: -> "Não"
        es_es: -> "No"
        pl_pl: -> "Nie"
        it_it: -> "No"

      # Label for the button that explains what grid notation is. Appears in the
      # “more” menu on the Custom tab.
      btnWhatIsThis:
        en_us: -> "What is this?"
        fr_fr: -> "Qu'est-ce que c'est ?"
        pt_br: -> "O que é isso?"
        pt_pt: -> "O que é isto?"
        es_es: -> "¿Qué es esto?"
        pl_pl: -> "Co to jest?"
        it_it: -> "Cos'è questo?"

      # Label for the button that opens the form that allows you to save a grid.
      # Appears in the “more” menu on the Grid and Custom tabs.
      btnSaveGrid:
        en_us: -> "Save grid"
        fr_fr: -> "Enregistrer la grille"
        pt_br: -> "Salvar grid"
        pt_pt: -> "Guardar grelha"
        es_es: -> "Guardar retícula"
        pl_pl: -> "Zapisz wzorzec"
        it_it: -> "Salva griglia"

      # Label for the confirmation modals. Clicking cancels the current action.
      btnCancel:
        en_us: -> "Cancel"
        fr_fr: -> "Annuler"
        pt_br: -> "Cancelar"
        pt_pt: -> "Cancelar"
        es_es: -> "Cancelar"
        pl_pl: -> "Anuluj"
        it_it: -> "Annulla"

      # Label for the button that resets the contents of the current form to
      # their default values. Appears in the “more” menu on the Grid and Custom
      # tabs.
      btnResetForm:
        en_us: -> "Reset form"
        fr_fr: -> "Effacer"
        pt_br: -> "Resetar formulário"
        pt_pt: -> "Repor formulário"
        es_es: -> "Resetear formulario"
        pl_pl: -> "Zresetuj układ"
        it_it: -> "Resetta i campi"

      # Label for the button that encourages upgrading to the paid version of
      # GuideGuide. Appears in the “more” on all tabs when the trial mode has
      # expired.
      btnLearnMore:
        en_us: -> "Learn more"
        fr_fr: -> "En savoir plus"
        pt_br: -> "Aprenda mais"
        pt_pt: -> "Saber mais"
        es_es: -> "Saber más"
        pl_pl: -> "Dowiedz się więcej"
        it_it: -> "Per saperne di più"

      # Label for the button that allows editing a selected saved grid. Appears
      # in the “more” menu on the Saved tab.
      inputColumns:
        en_us: -> "Columns"
        fr_fr: -> "Colonnes"
        pt_br: -> "Colunas"
        pt_pt: -> "Colunas"
        es_es: -> "Colunas"
        pl_pl: -> "Kolumny"
        it_it: -> "Colonne"

      btnEditSelected:
        en_us: -> "Edit selected"
        fr_fr: -> "Modifier la sélection"
        pt_br: -> "Editar selecionados"
        pt_pt: -> "Editar selecionados"
        es_es: -> "Editar seleccionados"
        pl_pl: -> "Edytuj zaznaczone"
        it_it: -> "Modifica la selezione"

      # Label for the button that deletes the selected saved grid. Appears in
      # the “more” menu on the Saved tab.
      btnDeleteSelected:
        en_us: -> "Delete selected"
        fr_fr: -> "Supprimer la sélection"
        pt_br: -> "Deletar selecionados"
        pt_pt: -> "Apagar selecionados"
        es_es: -> "Borrar seleccionados"
        pl_pl: -> "Skasuj zaznaczone"
        it_it: -> "Cancella selezionati"

      # Label for the button that opens the import modal. Appears in the “more”
      # menu on the Saved tab.
      btnImport:
        en_us: -> "Import"
        fr_fr: -> "Importation"
        pt_br: -> "Importar"
        pt_pt: -> "Importar"
        es_es: -> "Importar"
        pl_pl: -> "Import"
        it_it: -> "Importa"

      # Label for the button that opens the export modal Appears in the “more”
      # menu on the Saved tab.
      btnExport:
        en_us: -> "Export"
        fr_fr: -> "Exportation"
        pt_br: -> "Exportar"
        pt_pt: -> "Exportar"
        es_es: -> "Exportar"
        pl_pl: -> "Eksport"
        it_it: -> "Esporta"

      # Label for the button that bootstaps the default grids. Appears in the
      # blankslate view when all saved grids are removed.
      btnAddDefaultGrids:
        en_us: -> "Add default grids"
        fr_fr: -> "Ajouter les grilles par défaut"
        pt_br: -> "Adicionar grids padrões"
        pt_pt: -> "Adicionar grelhas padrão"
        es_es: -> "Añadir retículas por defecto"
        pl_pl: -> "Dodaj domyślne wzorce"
        it_it: -> "Aggiungi griglie di default"

      # Label for the button that allows for importing data from a file. Appears
      # in the import modal.
      btnFromAFile:
        en_us: -> "From a file"
        fr_fr: -> "À partir d'un fichier"
        pt_br: -> "A partir de um arquivo"
        pt_pt: -> "A partir de um ficheiro"
        es_es: -> "Desde un fichero"
        pl_pl: -> "Z pliku"
        it_it: -> "Da un file"

      # Label for the button that allows for importing data from a GitHub Gist.
      # Appears in the import modal.
      #
      # https://gist.github.com/
      btnFromAGitHubGist:
        en_us: -> "From a GitHub Gist"
        fr_fr: -> "À partir d'un Gist de GitHub"
        pt_br: -> "A partir de um Gist do GitHub"
        pt_pt: -> "A partir de um Gist do GitHub"
        es_es: -> "Desde un Gist de GitHub"
        pl_pl: -> "Z Gistu GitHub"
        it_it: -> "Da un Gist Github"

      # Label for the button that allows for exporting data to a file. Appears
      # in the export modal.
      btnToAFile:
        en_us: -> "To a file"
        fr_fr: -> "Dans un fichier"
        pt_br: -> "Para um arquivo"
        pt_pt: -> "Para um ficheiro"
        es_es: -> "A un fichero"
        pl_pl: -> "Do pliku"
        it_it: -> "In un file"

      # Label for the button that allows for exporting data to a GitHub Gist.
      # Appears in the export modal.
      #
      # https://gist.github.com/
      btnToAGitHubGist:
        en_us: -> "To a GitHub Gist"
        fr_fr: -> "Vers un Gist de GitHub"
        pt_br: -> "Para um Gist do GitHub"
        pt_pt: -> "Para um Gist do GitHub"
        es_es: -> "A un Gist de GitHub"
        pl_pl: -> "Do Gistu GitHub"
        it_it: -> "In un Gist di Github"

      # Label for the button that creates a new grid from guides that exist in
      # the document. Appears in the “more” menu on the Saved tab.
      btnNewFromExisting:
        en_us: -> "New grid from existing guides"
        fr_fr: -> "Nouvelle grille à partir des repères existants"
        pt_br: -> "Novo grid a partir de um grid já existente"
        pt_pt: -> "Nova grelha baseada nas grelhas já existentes"
        es_es: -> "Nueva retícula a partir de las guías existentes"
        pl_pl: -> "Nowy wzorzec z aktualnych linii pomocniczych"
        it_it: -> "Nuova griglia da guide esistenti"

      # Label for the “column width” field in the grid form. Width refers to how
      # wide each individual column is.
      inputWidth:
        en_us: -> "Width"
        fr_fr: -> "Largeur"
        pt_br: -> "Largura"
        pt_pt: -> "Largura"
        es_es: -> "Anchura"
        pl_pl: -> "Szerokość"
        it_it: -> "Larghezza"

      # Label for the “row height” field in the grid form. Height refers to how
      # tall each individual row is.
      inputHeight:
        en_us: -> "Height"
        fr_fr: -> "Hauteur"
        pt_br: -> "Altura"
        pt_pt: -> "Altura"
        es_es: -> "Altura"
        pl_pl: -> "Wysokość"
        it_it: -> "Altezza"

      # Label for the “horizontal gutter” and “vertical gutter” fields in the
      # grid form. Gutter refers to the space between the columns or rows.
      inputGutter:
        en_us: -> "Gutter"
        fr_fr: -> "Gouttière"
        pt_br: -> "Gutter"
        pt_pt: -> "Gutter"
        es_es: -> "Gutter"
        pl_pl: -> "Odstęp"
        it_it: -> "Spaziatura"

      # Label for the “margin” fields in the grid form. Margin refers to the
      # space at the top, left, bottom, and right sides of the context.
      inputMargin:
        en_us: -> "Margin"
        fr_fr: -> "Marge"
        pt_br: -> "Margem"
        pt_pt: -> "Margem"
        es_es: -> "Margen"
        pl_pl: -> "Margines"
        it_it: -> "Margini"

      # Label for the “number of columns” field in the grid form. Column refers
      # to a repeating squence of uniformely sized vertical spaces.
      inputColumns:
        en_us: -> "Columns"
        fr_fr: -> "Colonnes"
        pt_br: -> "Colunas"
        pt_pt: -> "Colunas"
        es_es: -> "Colunas"
        pl_pl: -> "Kolumny"
        it_it: -> "Colonne"

      # Label for the “number of rows field in the grid form. Row refers
      # to a repeating squence of uniformely sized horizontal spaces.
      inputRows:
        en_us: -> "Rows"
        fr_fr: -> "Rangées"
        pt_br: -> "Linhas"
        pt_pt: -> "Linhas"
        es_es: -> "Filas"
        pl_pl: -> "Wiersze"
        it_it: -> "Righe"

      # Label for the field that lets you define a GitHub Gist url from which to
      # import data. Appears in the import modal after “From a GitHub Gist” is
      # clicked.
      #
      # https://gist.github.com
      inputGitHubGistURL:
        en_us: -> "GitHub Gist URL or ID"
        fr_fr: -> "URL ou ID du Gist de GitHub"
        pt_br: -> "URL ou ID de um Gist do GitHub"
        pt_pt: -> "URL ou ID de um Gist do GitHub"
        es_es: -> "URL o ID de un Gist de GitHub"
        pl_pl: -> "URL lub ID Gistu GitHub"
        it_it: -> "URL o ID del Gist di Github"

      # Label for the item that positions grids to the left. Appears in the
      # Position dropdown which appears when a column width is specified.
      dropdownLeft:
        en_us: -> "Left"
        fr_fr: -> "Gauche"
        pt_br: -> "Esquerda"
        pt_pt: -> "Esquerda"
        es_es: -> "Izquierda"
        pl_pl: -> "Lewa"
        it_it: -> "Sinistra"

      # Label for the item that centers horizontal or veritcal grids. Appears in
      # the Position dropdown which appears when a column width or row height.
      # is specified.
      dropdownCenter:
        en_us: -> "Center"
        fr_fr: -> "Centre"
        pt_br: -> "Centro"
        pt_pt: -> "Centro"
        es_es: -> "Centro"
        pl_pl: -> "Środkowa"
        it_it: -> "Centro"

      # Label for the item that positions grids to the right. Appears in the
      # Position dropdown which appears when a column width is specified.
      dropdownRight:
        en_us: -> "Right"
        fr_fr: -> "Droite"
        pt_br: -> "Direita"
        pt_pt: -> "Direita"
        es_es: -> "Derecha"
        pl_pl: -> "Prawa"
        it_it: -> "Destra"

      # Label for the item that positions grids to the top. Appears in the
      # Position dropdown which appears when a row height is specified.
      dropdownTop:
        en_us: -> "Top"
        fr_fr: -> "Haut"
        pt_br: -> "Topo"
        pt_pt: -> "Topo"
        es_es: -> "Arriba"
        pl_pl: -> "Górna"
        it_it: -> "Sopra"

      # Label for the item that positions grids to the bottom. Appears in the
      # Position dropdown which appears when a row height is specified.
      dropdownBottom:
        en_us: -> "Bottom"
        fr_fr: -> "Bas"
        pt_br: -> "Baixo"
        pt_pt: -> "Baixo"
        es_es: -> "Abajo"
        pl_pl: -> "Dolna"
        it_it: -> "Sotto"

      # Message that appears in the blankslate view when no grids are saved.
      # Prompts the user to create a grid or bootstap the default grids.
      blankslateGrids:
        en_us: -> "You have no grids yet! Save your own or…"
        fr_fr: -> "Vous n'avez aucune grille ! Enregistrer la vôtre ou…"
        pt_br: -> "Você ainda não tem nenhum grid! Crie os seus próprios…"
        pt_pt: -> "Ainda não tens nenhuma grelha! Cria as tuas…"
        es_es: -> "¡No hay ninguna retícula definida! Guarda la tuya o…"
        pl_pl: -> "Nie masz jeszcze wzorców! Zapisz swój własny lub…"
        it_it: -> "Non hai ancora alcuna griglia. Salvane una o…"

      # Message that appears in the grid notation field when it is empty. It
      # explains to the user what the field is for.
      #
      # http://guideguide.me/documentation/grid-notation/
      placeholderCustom:
        en_us: -> "Write grid notation here"
        fr_fr: -> "Écriver ici la synthaxe de votre grille"
        pt_br: -> "Escreva anotações sobre o seu grid aqui"
        pt_pt: -> "Escreve notas acerca da tua grelha aqui"
        es_es: -> "Escribe aquí la notación de retícula"
        pl_pl: -> "Wpisz tutaj definicję w odpowiedniej notacji"
        it_it: -> "Scrivi qui il codice della tua griglia"

      # Message that appears when the grid name field is empty. Appears when
      # saving a grid.
      placeholderName:
        en_us: -> "Name your grid"
        fr_fr: -> "Nommer votre grille"
        pt_br: -> "Nomeie o seu grid"
        pt_pt: -> "Dá um nome à tua grelha"
        es_es: -> "Nombra tu retícula"
        pl_pl: -> "Nazwij swój wzorzec"
        it_it: -> "Dai un nome alla tua griglia"

      # Default title for new grids. Appears when saving a grid.
      titleUntitledGrid:
        en_us: -> "Untitled Grid"
        fr_fr: -> "Sans titre"
        pt_br: -> "Grid sem Nome"
        pt_pt: -> "Grelha sem Nome"
        es_es: -> "Retícula Sin Título"
        pl_pl: -> "Nienazwany wzorzec"
        it_it: -> "Griglia senza titolo"

      # Name for a default grid which “outlines” the context by placing guides
      # on the top, left, right, and bottom sides.
      titleOutline:
        en_us: -> "Outline"
        fr_fr: -> "Contours"
        pt_br: -> "Contorno"
        pt_pt: -> "Contorno"
        es_es: -> "Contorno"
        pl_pl: -> "Kontur"
        it_it: -> "Contorno"

      # Name for the default two column grid.
      titleTwoColumnGrid:
        en_us: -> "Two column grid"
        fr_fr: -> "Deux colonnes"
        pt_br: -> "Grid com duas colunas"
        pt_pt: -> "Grilha com duas colunas"
        es_es: -> "Retícula de dos columnas"
        pl_pl: -> "Dwie kolumny"
        it_it: -> "Griglia a due colonne"

      # Name for the default three column grid.
      titleThreeColumnGrid:
        en_us: -> "Three column grid"
        fr_fr: -> "Trois colonnes"
        pt_br: -> "Grid com três colunas"
        pt_pt: -> "Grelha com três colunas"
        es_es: -> "Retícula de tres columnas"
        pl_pl: -> "Trzy kolumny"
        it_it: -> "Griglia a tre colonne"

      # Title that appears at the top of the panel while saving a grid.
      titleSaveYourGrid:
        en_us: -> "Save your grid"
        fr_fr: -> "Enregistrer votre grille"
        pt_br: -> "Salve o seu grid"
        pt_pt: -> "Guarda a tua grelha"
        es_es: -> "Guarda tu retícula"
        pl_pl: -> "Zapisz swój wzorzec"
        it_it: -> "Salva la tua griglia"

      # Title that appears at the top of the panel while the import modal is
      # active.
      titleImportGrids:
        en_us: -> "Import grids"
        fr_fr: -> "Importer des grilles"
        pt_br: -> "Importe grids"
        pt_pt: -> "Importar grelhas"
        es_es: -> "Importar reticulas"
        pl_pl: -> "Importuj wzorce"
        it_it: -> "Importa griglie"

      # Title that appears at the top of the panel while the export modal is
      # active.
      titleExportGrids:
        en_us: -> "Export grids"
        fr_fr: -> "Exporter des grilles"
        pt_br: -> "Exporte grids"
        pt_pt: -> "Exporte grelhas"
        es_es: -> "Exportar retículas"
        pl_pl: -> "Eksportuj wzorce"
        it_it: -> "Esporta griglie"

      # Title that appears at the top alert message that will appear if there is
      # an error while exporting grid data.
      titleExportError:
        en_us: -> "Export error"
        fr_fr: -> "Erreur lors de l'export"
        pt_br: -> "Exporte o erro"
        pt_pt: -> "Exportar o erro"
        es_es: -> "Error de exportación"
        pl_pl: -> "Błąd podczas eksportu"
        it_it: -> "Errore durante l'esportazione"

      # Tooltip for the button at the bottom of the panel which places a guide
      # on the left side of the context.
      tooltipLeftBorder:
        en_us: -> "Left border"
        fr_fr: -> "Bord gauche"
        pt_br: -> "Borda da esquerda"
        pt_pt: -> "Borda da esquerda"
        es_es: -> "Borde izquierdo"
        pl_pl: -> "Lewy margines"
        it_it: -> "Bordo sinistro"

      # Tooltip for the button at the bottom of the panel which places a guide
      # on the right side of the context.
      tooltipRightBorder:
        en_us: -> "Right border"
        fr_fr: -> "Bord droite"
        pt_br: -> "Borda da direita"
        pt_pt: -> "Borda da direita"
        es_es: -> "Borde derecho"
        pl_pl: -> "Prawy margines"
        it_it: -> "Bordo destro"

      # Tooltip for the button at the bottom of the panel which places a guide
      # on the top of the context.
      tooltipTopBorder:
        en_us: -> "Top border"
        fr_fr: -> "Bord supérieur"
        pt_br: -> "Borda superior"
        pt_pt: -> "Borda superior"
        es_es: -> "Borde superior"
        pl_pl: -> "Górny margines"
        it_it: -> "Bordo superiore"

      # Tooltip for the button at the bottom of the panel which places a guide
      # on the bottom of the context.
      tooltipBottomBorder:
        en_us: -> "Bottom border"
        fr_fr: -> "Bord inférieur"
        pt_br: -> "Borda inferior"
        pt_pt: -> "Borda inferior"
        es_es: -> "Borde inferior"
        pl_pl: -> "Dolny margines"
        it_it: -> "Bordo inferiore"

      # Tooltip for the button at the bottom of the panel which places a guide
      # in the middle of the context.
      tooltipMidpoint:
        en_us: -> "Midpoint"
        fr_fr: -> "Centre"
        pt_br: -> "Ponto médio"
        pt_pt: -> "Centro"
        es_es: -> "Punto medio"
        pl_pl: -> "Środek"
        it_it: -> "Centro"

      # Tooltip for the button at the bottom of the panel which clears all
      # guides within the context.
      tooltipClearGuides:
        en_us: -> "Clear guides"
        fr_fr: -> "Effacer les repères"
        pt_br: -> "Limpar guias"
        pt_pt: -> "Limpar guias"
        es_es: -> "Limpiar guías"
        pl_pl: -> "Skasuj linie pomocnicze"
        it_it: -> "Cancella guide"

      # Tooltip for the “eye” button to the right of the tabs at the top of the
      # panel which toggles the guide visibility setting.
      tooltipToggleGuideVisibility:
        en_us: -> "Toggle guide visibility"
        fr_fr: -> "Afficher/masquer les repères"
        pt_br: -> "Alternar a visibilidade da guia"
        pt_pt: -> "Mostrar/esconder guias"
        es_es: -> "Alternar visibilidad de guías"
        pl_pl: -> "Przełącz widoczność wzorca"
        it_it: -> "Mostra/nascondi guide"

      # Message that appears in the description of a GitHub Gist that contains
      # exported guide data.
      #
      # Example: https://gist.github.com/20c8e33534459c722888
      msgGistDescription:
        en_us: -> "This is grid data exported by the GuideGuide plugin."
        fr_fr: -> "
          Voici les données d'une grille exportées par le plugin GuideGuide.
        "
        pt_br: -> "
          Estes são os dados de grids exportados pelo plugin GuideGuide.
        "
        pt_pt: -> "
          Estes são os dados das grelhas exportadas pelo plugin GuideGuide.
        "
        es_es: -> "
          Estos son datos de retícula exportados por el plugin GuideGuide.
        "
        pl_pl: -> "To są dane wzorca wyeksportowane przez wtyczkę GuideGuide."
        it_it: -> "Dati griglia esportati dal plugin GuideGuide"

      # Message that encourages people to buy GuideGuide. Appears in place of
      # the Custom tab after the trial has expired.
      msgCustomUpsell:
        en_us: -> "Buy the full version to create any grid you can think of."
        fr_fr: -> "
          Acheter la version complète pour créer toutes les grilles que vous
          pouvez imaginer.
        "
        pt_br: -> "
          Compre a versão completa para criar qualquer tipo de grid que você
          puder imaginar.
        "
         pt_pt: -> "
          Compra a versão completa para criar qualquer tipo de grelha 
          à tua escolha.
        "        
        es_es: -> "
          Compra la versión completa para crear cualquier retícula que puedas
          imaginar.
        "
        pl_pl: -> "Kup pełną wersję i twórz wzorce jakie tylko zapragniesz."
        it_it: -> "
           Acquista la versione completa per creare qualsiai griglia desideri
        "

      # Message that encourages people to buy GuideGuide. Appears in place of
      # the Saved tab after the trial has expired.
      msgSavedUpsell:
        en_us: -> "Buy the full version to save the grids you use the most."
        fr_fr: -> "
          Acheter la version complète pour enregistrer les grilles que vous
          utiliser fréquemment.
        "
        pt_br: -> "
          Compre a versão completa para salvar quais grids você mais utiliza.
        "
        pt_pt: -> "
          Compra a versão completa para guardar as grelhas que utilizas mais.
        "
        es_es: -> "
          Compra la versión completa para guardar tus retículas más habituales.
        "
        pl_pl: -> "
          Kup pełną wersję by móc zapisywać najczęściej używane wzorce.
        "
        it_it: -> "
           Acquista la versione completa per salvare le griglie che usi più spesso
        "

      # Message that encourages people to buy GuideGuide. Appears at the bottom
      # of all tabs after the trial has expired.
      msgQuickUpsell:
        en_us: -> "Buy the full version to clear and add guides quickly."
        fr_fr: -> "
          Acheter la verison complète pour effacer et ajouter des repères
          facilement.
          "
        pt_br: -> "
          Compre a versão completa para criar e deletar guias de maneira mais
          rápida.
        "
        pt_pt: -> "
          Compra a versão completa para criar e apagar guias mais rapidamente.
        "
        es_es: -> "
          Compra la versión completa para borrar y añadir guías rápidamente.
        "
        pl_pl: -> "
          Kup pełną wersję by szybko usuwać i dodawać linie pomocnicze.
        "
        it_it: -> "
           Acquista la versione completa per cancellare e aggiungere griglie a piacimento
        "

      # Title for the alert message that appears at launch after the trial
      # expires.
      titleFreeVersion:
        en_us: -> "Free version"
        fr_fr: -> "Version gratuite"
        pt_br: -> "Versão de graça"
        pt_pt: -> "Versão gratuita"
        es_es: -> "Versión gratuita"
        pl_pl: -> "Wersja bezpłatna"
        it_it: -> "Versione gratuita"

      # Message that appears in the alert message that appears at launch after
      # the trial expires.
      msgFreeVersionEnabled:
        en_us: -> "
          You’ve used GuideGuide 30 times! You can buy the full version to
          renable the full features.
        "
        fr_fr: -> "
          Vous avez utilisé GuideGuide 30 fois ! Vous pouvez acheter la version
          complète pour réactiver toutes les fonctionnalités.
        "
        pt_br: -> "
          Você já usou GuideGuide 30 vezes! Você pode comprar a versão completa
          para reabilitar todas as funcionalidades.
        "
        pt_pt: -> "
          Já usaste o GuideGuide 30 vezes! Podes comprar a versão completa
          para voltar a ter todas as funcionalidades.
        "
        es_es: -> "
          ¡Has usado GuideGuide 30 veces! Puedes comprar la versión completa
          para reactivar todas las funcionalidades.
        "
        pl_pl: -> "
          Użyto GuideGuide 30 razy! Możesz teraz kupić pełną wersją.
        "
        it_it: -> "
           Hai usato GuideGuide 30 volte! Puoi comprare la versione completa per sbloccare nuovamente tutte le funzionalità
        "

      # Title of the alert that appears on first launch that requests permission
      # to submit usage data via Google Analytics.
      titleGoogleAnalytics:
        en_us: -> "Submit usage data"
        fr_fr: -> "Collecte des données d'utilisation"
        pt_br: -> "Enviar dados de uso"
        pt_pt: -> "Enviar dados de utilização"
        es_es: -> "Enviar datos de uso"
        pl_pl: -> "Wysyłaj informacje o używaniu"
        it_it: -> "Invia statistiche di utilizzo"

      # Message for the alert that appears on first launch that requests permission
      # to submit usage data via Google Analytics.
      msgGoogleAnalytics:
        en_us: -> "
          Will you allow GuideGuide to use Google Analytics to track anonymous
          usage information to help improve the product?
        "
        fr_fr: -> "
          Autoriser GuideGuide à utiliser Google Analytics pour collecter
          anonymement des informations d'utilisation et aider à améliorer le
          plugin ?
        "
        pt_br: -> "
          Você vai permitir que GuideGuide use o Google Analytics para
          acompanhar, de forma anônima, informações da utilização do produto
          para ajudar a melhorá-lo?
        "
         pt_pt: -> "
          Permitir que o GuideGuide use o Google Analytics para
          recolher, de forma anónima, informações de utilização do produto
          para ajudar a melhorá-lo?
        "
        es_es: -> "
          ¿Permitir a GuideGuide utilizar Google Analytics para mantener un
          registro anónimo de uso con el fin de ayudar a mejorar el producto?
        "
        pl_pl: -> "
          Czy pozwolisz GuideGuide używać Google Analytics do śledzenia
          anonimowych danych używania, aby ulepszyć produkt?
        "
        it_it: -> "Autorizzi GuideGuide all'uso di Google Analytics per raccogliere anonimamente statistiche di utilizzo, allo scopo migliorare il plugin?"

      # Menu item that duplicates all guides in the selected contexts to all
      # documents. Appears in the flyout menu and the history state that results
      # from the action.
      menuDuplicateToOpenDocuments:
        en_us: -> "Duplicate guides to open documents"
        fr_fr: -> "Dupliquer les repères vers les documents ouverts"
        pt_br: -> "Duplique os guias para os documentos abertos"
        pt_pt: -> "Duplicar guias para os documentos abertos"
        # TODO: es_es
        pl_pl: -> "Powiel linie pomocnicze w otwartych dokumentach"
        it_it: -> "Duplica guide nei documenti aperti"
        

      # Menu item that duplicates all guides in the selected contexts to all
      # artboards. Appears in the flyout menu and the history state that results
      # from the action.
      menuDuplicateToArtboards:
        en_us: -> "Duplicate guides to artboards"
        fr_fr: -> "Dupliquer les repères vers les plans de travail"
        pt_br: -> "Duplique as guias para as áreas de trabalho"
        pt_pt: -> "Duplicar guias para as artboards"
        # TODO: es_es
        pl_pl: -> "Powiel linie pomocnicze do obszaru kompozycji"
        it_it: -> "Duplica guide nelle tavole da disegno"

      # Menu item that clears all guides in the document. Appears in the flyout
      # menu and the history state that results from the action.
      menuClearAllGuides:
        en_us: -> "Clear all guides"
        fr_fr: -> "Effacer tous les repères"
        pt_br: -> "Limpar todos as guias"
        pt_pt: -> "Limpar todas as guias"
        # TODO: es_es
        pl_pl: -> "Skasuj wszystkie linie pomocnicze"
        it_it: -> "Cancella tutte le guide"

      # Menu item that clears all guides in the currently selected artboards.
      # Appears in the flyout menu and the history state that results from the
      # action.
      menuClearArtboardGuides:
        en_us: -> "Clear selected artboard guides"
        fr_fr: -> "Effacer les repères du plan de travail"
        pt_br: -> "Limpar todas as guias selecionadas da área de trabalho"
        pt_pt: -> "Limpar todas as guias selecionadas da artboard"
        # TODO: es_es
        pl_pl: -> "Skasuj wszystkie linie pomocnicze na zaznaczonym obszarze kompozycji"
        it_it: -> "Cancella le guide nelle tavole da disegno selezionate"

      # Menu item that clears canvas guides. Appears in the flyout menu and the
      # history state that results from the action.
      menuClearCanvasGuides:
        en_us: -> "Clear canvas guides"
        fr_fr: -> "Effacer les repères de la zone de travail"
        pt_br: -> "Limpar todas as guias da tela"
        pt_pt: -> "Limpar todas as guias"
        # TODO: es_es
        pl_pl: -> "Skasuj linie pomocnicze na obszarze roboczym"
        it_it: -> "Cancella le guide nell'area di lavoro"

      # Menu item that clears all vertical guides in a given context. Appears
      # in the flyout menu and the history state that results from the action.
      menuClearVerticalGuides:
        en_us: -> "Clear vertical guides"
        fr_fr: -> "Effacer les repères verticaux"
        pt_br: -> "Limpar todas as guias verticais"
        pt_pt: -> "Limpar todas as guias verticais"
        # TODO: es_es
        pl_pl: -> "Skasuj pionowe linie pomocnicze"
        it_it: -> "Cancella guide verticali"

      # Menu item that clears all horizontal guides in a given context. Appears
      # in the flyout menu and the history state that results from the action.
      menuClearHorizontalGuides:
        en_us: -> "Clear horizontal guides"
        fr_fr: -> "Effacer les repères horizontaux"
        pt_br: -> "Limpar todas as guias horizontais"
        pt_pt: -> "Limpar todas as guias horizontais"
        # TODO: es_es
        pl_pl: -> "Skasuj poziome linie pomocnicze"
        it_it: -> "Cancella guide orizzontali"

      # Menu item that triggers the Google Analytics tracking setting prompt.
      # Appears in the flyout menu.
      menuTrackingSettings:
        en_us: -> "Tracking settings"
        fr_fr: -> "Préférences de suivi"
        pt_br: -> "Configurações de monitorização"
        pt_pt: -> "Definições de rastreamento"
        # TODO: es_es
        pl_pl: -> "Ustawienia śledzenia"
        it_it: -> "Opzioni di condivisione"

      # Menu item that opens the GuideGuide installation directory. Appears in
      # the flyout menu.
      menuUninstall:
        en_us: -> "Uninstall"
        fr_fr: -> "Désinstaller"
        pt_br: -> "Desinstalar"
        pt_pt: -> "Desinstalar"
        # TODO: es_es
        pl_pl: -> "Odinstaluj"
        it_it: -> "Disinstalla"

      # Menu item that toggles debug logging. Appears in the flyout menu.
      menuDebug:
        en_us: -> "Debug"
        fr_fr: -> "Débogage"
        pt_br: -> "Depurar"
        pt_pt: -> "Debug"
        # TODO: es_es
        pl_pl: -> "Debug"
        it_it: -> "Debug"

      # Menu item that toggles using selected layers. Appears in the flyout menu
      # in Photoshop only.
      menuUseLayers:
        en_us: -> "Use selected layers"
        fr_fr: -> "Utiliser les calques sélectionnés"
        pt_br: -> "Usar as camadas selecionadas"
        pt_pt: -> "Usar as camadas selecionadas"
        # TODO: es_es
        # TODO: pl_pl

      # Menu item that will open guideguide.me. Appears in the flyout menu of
      # the trial version.
      menuBuyGuideGuide:
        en_us: -> "Buy GuideGuide"
        fr_fr: -> "Acheter GuideGuide"
        pt_br: -> "Comprar GuideGuide"
        pt_pt: -> "Comprar GuideGuide"
        # TODO: es_es
        pl_pl: -> "Kup GuideGuide"
        it_it: -> "Acquista GuideGuide"

      # Change the folder where GuideGuide stores its data. Appears in the
      # flyout menu.
      menuChangeDataFolder:
        en_us: -> "Change data folder"
        fr_fr: -> "Modifier l'emplacement des données"
        pt_br: -> "Alterar a pasta de dados"
        pt_pt: -> "Alterar a pasta de dados"
        # TODO: es_es
        # TODO: pl_pl

      # Convert selected paths to guides. Appears in the flyout menu in
      # Illustrator only.
      menuConvertSelectionToGuides:
        en_us: -> "Convert selection to guides"
        fr_fr: -> "Convertir la sélection en repères"
        pt_br: -> "Converter os guias selecionados"
        pt_pt: -> "Converter seleção em guias"
        # TODO: es_es
        # TODO: pl_pl
        it_it: -> "Cambia cartella delle preferenze"

      # Label for the history state that appears in documents in which guides
      # have been copied *to*. Will appear like:
      #
      #   “Duplicate guides from MyCoolDoc.psd”
      historyDuplicateGuidesFrom:
        en_us: -> "Duplicate guides from"
        fr_fr: -> "Dupliquer les repères à partir de"
        pt_br: -> "Duplicar guias de"
        pt_pt: -> "Duplicar guias de"
        # TODO: es_es
        pl_pl: -> "Powiel linie pomocnicze z"
        it_it: -> "Duplica guide da"

      # Error message that appears when a user attempts to import a non-json
      # file. Appears in the import modal.
      errNotJSON:
        en_us: -> "Selected file must be a .json file"
        fr_fr: -> "Le fichier doit être au format .json"
        pt_br: -> "O arquivo selecionado tem que ser um arquivo .json"
        pt_pt: -> "O ficheiro selecionado tem que ser um ficheiro .json"
        es_es: -> "El fichero seleccionado debe ser un fichero .json"
        pl_pl: -> "Wybrany plik musi być plikiem .json"
        it_it: -> "Il file selezionato deve essere un .json"

      # Error message that appears when when a chosen import file cannot be
      # read. Appears in the import modal.
      errFileRead:
        en_us: -> "Selected file could not be read"
        fr_fr: -> "Le fichier n'a pas pu être lu"
        pt_br: -> "O arquivo selecionado não pode ser lido"
        pt_pt: -> "O ficheiro selecionado não pode ser lido"
        es_es: -> "El fichero seleccionado no pudo leerse"
        pl_pl: -> "Nie można odczytać wybranego pliku"
        it_it: -> "Il file selezionato non può essere letto"

      # Error that appears when grid notation does not recognize a command.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError1:
        en_us: -> "Unrecognized command"
        fr_fr: -> "Commande inconnue"
        pt_br: -> "Comando não reconhecido"
        pt_pt: -> "Comando não reconhecido"
        es_es: -> "Comando no reconocido"
        pl_pl: -> "Nierozpoznana komenda"
        it_it: -> "Comando sconosciuto"

      # Error that appears when a user attempts to use an empty string in the
      # custom form.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError2:
        en_us: -> "This string does not contain any grids"
        fr_fr: -> "La synthaxe ne contient aucune grille"
        pt_br: -> "Este arquivo não contém nenhum grid"
        pt_pt: -> "Este ficheiro não contém nenhuma grelha"
        es_es: -> "Esta cadena no contiene ninguna retícula"
        pl_pl: -> "Ten ciąg znaków nie zawiera żadnych wzorców"
        it_it: -> "Questa stringa non contiene alcuna griglia"

      # Error that appears when a grid notation variable contains a wildcard.
      # Variable refers to a property that is defined with a dynamic value,
      # similar to a variable in code. Wildard refers to a value which has no
      # intrinsic measuremnt until the grid notation is processed. It
      # effectively means “divide the left over space evenly between this and
      # all other wildcards like it.”
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError3:
        en_us: -> "Variables used as fills cannot contain wildcards"
        fr_fr: -> "
          Les variables utilisées comme itération ne peuvent pas contient de
          métacaractère
        "
        pt_br: -> "As variáveis não podem conter wildcards (*)"
        pt_pt: -> "As variáveis usadas como preenchimentos não podem conter wildcards (*)"
        es_es: -> "
          Las variables usadas como relleno no pueden contener wildcards
        "
        pl_pl: -> "Zmienne używane do wypełniania nie mogą zawierać wieloznaczników"
        it_it: -> "Le variabili usate come ripetizioni non possono contenere caratteri jolly"

      # Error that appears when a grid notation string contains more than one
      # fill. Fill refers to a command that effectively means “Do this thing as
      # many times as will fit.” For example, a 3px fill can fit 3 time in a
      # 10px area.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError4:
        en_us: -> "A grid cannot contain more than one fill"
        fr_fr: -> "Une grille ne peut contenir qu'une seule itération"
        pt_br: -> "Um grid não pode conter mais do que um valor"
        pt_pt: -> "Uma grelha não pode conter mais do que um preenchimento"
        es_es: -> "Una retícula no puede contener más de un relleno"
        pl_pl: -> "Wzorzec nie może zawierać więcej niż jednego wypełnienia"
        it_it: -> "Una griglia non può contenere più di un riempimento"

      # Error that appears when a grid notation variable contains a fill
      # command. Variable refers to a property that is defined with a dynamic
      # value, similar to a variable in code. Fill refers to a command that
      # effectively means “Do this thing as many times as will fit.” For
      # example, a 3px fill can fit 3 time in a 10px area.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError5:
        en_us: -> "Variables cannot contain fills"
        fr_fr: -> "Les variables ne peuvent pas contenir d'itération"
        pt_br: -> "As variáveis não podem ser preenchidas"
        pt_pt: -> "As variáveis não podem ter preenchimento"
        es_es: -> "Las variables no pueden contener rellenos"
        pl_pl: -> "Zmienne nie mogą zawierać wypełnień"
        it_it: -> "Le variabili non possono contenere riempimenti"

      # Error that appears when a variable is used before its value has been
      # defined. Variable refers to a property that is defined with a dynamic
      # value, similar to a variable in code.
      #
      # http://guideguide.me/documentation/grid-notation#errors
      gnError6:
        en_us: -> "Undefined variable"
        fr_fr: -> "Variable indéfinie"
        pt_br: -> "Variável indefinida"
        pt_pt: -> "Variável indefinida"
        es_es: -> "Variable indefinida"
        pl_pl: -> "Niezdefiniowana zmienna"
        it_it: -> "Variabile non definita"
