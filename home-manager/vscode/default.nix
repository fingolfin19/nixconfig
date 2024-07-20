{
  inputs,
  pkgs,
  ...
}: {
  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;
    mutableExtensionsDir = false;
    extensions = with pkgs.vscode-extensions;
      [
        dracula-theme.theme-dracula
        jdinhlife.gruvbox
        jnoortheen.nix-ide
        mkhl.direnv
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "everforest";
          publisher = "sainnhe";
          version = "latest";
          sha256 = "1dbkk2nys97a825kvrmjh6qgjzfricllwjwh9qcsvmycbg6sp64x";
        }
      ];
    userSettings = {
      "workbench.colorCustomizations" = {
        "[Default Light Modern]" = {
          "list.activeSelectionForeground" = "#f8f8f8";
          "list.activeSelectionIconForeground" = "#000000";
          "list.focusAndSelectionOutline" = "#3a6ea5";
          "list.hoverBackground" = "#ffffff66";
          "activityBar.activeBorder" = "#3a6ea5";
          "activityBar.background" = "#d4d0c8";
          "activityBar.border" = "#181612";
          "activityBarBadge.background" = "#3a6ea5";
          "badge.foreground" = "#181612";
          "breadcrumb.background" = "#d5d0c8";
          "breadcrumbPicker.background" = "#d4d0c8";
          "button.background" = "#3a6ea5";
          "button.secondaryBackground" = "#181612";
          "button.secondaryHoverBackground" = "#3b3b3b";
          "button.secondaryForeground" = "#f8f8f8";
          "checkbox.background" = "#d4d0c8";
          "checkbox.selectBackground" = "#d4d0c8";
          "descriptionForeground" = "#181612";
          "diffEditor.unchangedRegionBackground" = "#d4d0c8";
          "dropdown.foreground" = "#181612";
          "editor.foreground" = "#181612";
          "editorOverviewRuler.background" = "#d4d0c866";
          "editorGroup.border" = "#181612";
          "editorGroup.dropIntoPromptBackground" = "#d4d0c8";
          "editorGroupHeader.tabsBackground" = "#d4d0c8";
          "editorGroupHeader.tabsBorder" = "#181612";
          "editorGutter.modifiedBackground" = "#3a6ea5";
          "editorHoverWidget.background" = "#d4d0c8";
          "editorOverviewRuler.border" = "#181612";
          "editorSuggestWidget.background" = "#d4d0c8";
          "editorWidget.background" = "#d4d0c8";
          "focusBorder" = "#3a6ea5";
          "foreground" = "#181612";
          "icon.foreground" = "#181612";
          "inlineChat.background" = "#d4d0c8";
          "input.foreground" = "#181612";
          "inputOption.activeBorder" = "#3a6ea5";
          "keybindingLabel.foreground" = "#181612";
          "list.activeSelectionBackground" = "#3a6ea5";
          "list.inactiveSelectionBackground" = "#9dbbde";
          "list.inactiveSelectionForeground" = "#181612";
          "listFilterWidget.background" = "#d4d0c8";
          "list.focusBackground" = "#ffffff66";
          "list.focusForeground" = "#181612";
          "list.focusHighlightForeground" = "#ffffff";
          "menu.selectionBackground" = "#3a6ea5";
          "multiDiffEditor.headerBackground" = "#d4d0c8";
          "notebook.cellBorderColor" = "#181612";
          "notebook.cellEditorBackground" = "#d4d0c8";
          "notificationCenterHeader.foreground" = "#181612";
          "notifications.border" = "#181612";
          "notifications.foreground" = "#181612";
          "panel.background" = "#d4d0c8";
          "panel.border" = "#181612";
          "panelInput.border" = "#181612";
          "panelStickyScroll.background" = "#d4d0c8";
          "panelTitle.activeBorder" = "#3a6ea5";
          "panelTitle.activeForeground" = "#181612";
          "panelTitle.inactiveForeground" = "#181612";
          "pickerGroup.border" = "#181612";
          "progressBar.background" = "#3a6ea5";
          "quickInput.background" = "#d4d0c8";
          "quickInput.foreground" = "#181612";
          "settings.checkboxBackground" = "#d4d0c8";
          "scrollbarSlider.hoverBackground" = "#d4d0c899";
          "scrollbarSlider.activeBackground" = "#d4d0c8";
          "scrollbarSlider.background" = "#d4d0c8";
          "sideBar.background" = "#d4d0c8";
          "sideBar.border" = "#181612";
          "sideBar.foreground" = "#181612";
          "sideBarSectionHeader.background" = "#d4d0c8";
          "sideBarSectionHeader.border" = "#181612";
          "sideBarSectionHeader.foreground" = "#181612";
          "sideBarStickyScroll.background" = "#d4d0c8";
          "sideBarTitle.background" = "#d4d0c8";
          "sideBarTitle.foreground" = "#181612";
          "statusBar.background" = "#d4d0c8";
          "statusBar.border" = "#181612";
          "statusBar.focusBorder" = "#3a6ea5";
          "statusBar.foreground" = "#181612";
          "statusBar.noFolderBackground" = "#d4d0c8";
          "statusBarItem.focusBorder" = "#3a6ea5";
          "statusBarItem.remoteBackground" = "#3a6ea5";
          "tab.activeBorder" = "#d4d0c8";
          "tab.activeBorderTop" = "#3a6ea5";
          "tab.activeForeground" = "#181612";
          "tab.border" = "#181612";
          "tab.inactiveBackground" = "#d4d0c8";
          "tab.unfocusedActiveBorder" = "#d4d0c8";
          "tab.unfocusedActiveBorderTop" = "#181612";
          "tab.unfocusedHoverBackground" = "#d4d0c8";
          "tab.unfocusedInactiveBackground" = "#d4d0c8";
          "terminal.background" = "#ffffff";
          "terminal.foreground" = "#181612";
          "terminal.tab.activeBorder" = "#3a6ea5";
          "terminalCursor.foreground" = "#3a6ea5";
          "textBlockQuote.background" = "#d4d0c8";
          "textBlockQuote.border" = "#181612";
          "textCodeBlock.background" = "#d4d0c8";
          "textLink.activeForeground" = "#3a6ea5";
          "textLink.foreground" = "#3a6ea5";
          "textPreformat.foreground" = "#181612";
          "titleBar.activeBackground" = "#d4d0c8";
          "titleBar.border" = "#181612";
          "titleBar.inactiveBackground" = "#d4d0c8";
          "widget.border" = "#181612";
        };
      };

      "editor.fontFamily" = "'cascadia code',hack,'IBM Plex Mono Text', 'Droid Sans Mono', monospace";
      "window.menuBarVisibility" = "toggle";
      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nixd";
      "workbench.editor.showTabs" = "none";
      "workbench.colorTheme" = "Default Light Modern";
      "editor.minimap.enabled" = false;
      "workbench.activityBar.location" = "hidden";
      "window.zoomLevel" = 0.5;
      "editor.fontSize" = 12.5;
      "git.confirmSync" = false;
      "redhat.telemetry.enabled" = false;
      "terminal.integrated.fontSize" = 12.5;
    };
  };
}
