﻿using Gtk;
using logicpos.App;
using logicpos.datalayer.DataLayer.Xpo;
using logicpos.Classes.Gui.Gtk.Widgets.BackOffice;
using logicpos.Classes.Gui.Gtk.WidgetsGeneric;
using logicpos.resources.Resources.Localization;
using logicpos.Classes.Enums.Dialogs;

namespace logicpos.Classes.Gui.Gtk.BackOffice
{
    class DialogConfigurationPaymentCondition : BOBaseDialog
    {
        public DialogConfigurationPaymentCondition(Window pSourceWindow, GenericTreeViewXPO pTreeView, DialogFlags pFlags, DialogMode pDialogMode, XPGuidObject pXPGuidObject)
            : base(pSourceWindow, pTreeView, pFlags, pDialogMode, pXPGuidObject)
        {
            this.Title = Utils.GetWindowTitle(resources.CustomResources.GetCustomResources(GlobalFramework.Settings["customCultureResourceDefinition"], "window_title_edit_configurationpaymentcondition"));
            
            if (Utils.IsLinux) SetSizeRequest(500, 373);
            else SetSizeRequest(500, 353);
            InitUI();
            InitNotes();
            ShowAll();
        }

        private void InitUI()
        {
            try
            {
                //Tab1
                VBox vboxTab1 = new VBox(false, _boxSpacing) { BorderWidth = (uint)_boxSpacing };

                //Ord
                Entry entryOrd = new Entry();
                BOWidgetBox boxLabel = new BOWidgetBox(resources.CustomResources.GetCustomResources(GlobalFramework.Settings["customCultureResourceDefinition"], "global_record_order"), entryOrd);
                vboxTab1.PackStart(boxLabel, false, false, 0);
                _crudWidgetList.Add(new GenericCRUDWidgetXPO(boxLabel, _dataSourceRow, "Ord", SettingsApp.RegexIntegerGreaterThanZero, true));

                //Code
                Entry entryCode = new Entry();
                BOWidgetBox boxCode = new BOWidgetBox(resources.CustomResources.GetCustomResources(GlobalFramework.Settings["customCultureResourceDefinition"], "global_record_code"), entryCode);
                vboxTab1.PackStart(boxCode, false, false, 0);
                _crudWidgetList.Add(new GenericCRUDWidgetXPO(boxCode, _dataSourceRow, "Code", SettingsApp.RegexIntegerGreaterThanZero, true));

                //Designation
                Entry entryDesignation = new Entry();
                BOWidgetBox boxDesignation = new BOWidgetBox(resources.CustomResources.GetCustomResources(GlobalFramework.Settings["customCultureResourceDefinition"], "global_designation"), entryDesignation);
                vboxTab1.PackStart(boxDesignation, false, false, 0);
                _crudWidgetList.Add(new GenericCRUDWidgetXPO(boxDesignation, _dataSourceRow, "Designation", SettingsApp.RegexAlfaNumericExtended, true));

                //Acronym
                Entry entryAcronym = new Entry();
                BOWidgetBox boxAcronym = new BOWidgetBox(resources.CustomResources.GetCustomResources(GlobalFramework.Settings["customCultureResourceDefinition"], "global_ConfigurationPaymentCondition_Acronym"), entryAcronym);
                vboxTab1.PackStart(boxAcronym, false, false, 0);
                _crudWidgetList.Add(new GenericCRUDWidgetXPO(boxAcronym, _dataSourceRow, "Acronym", SettingsApp.RegexAcronym2Or3Chars, true));

                //Disabled
                CheckButton checkButtonDisabled = new CheckButton(resources.CustomResources.GetCustomResources(GlobalFramework.Settings["customCultureResourceDefinition"], "global_record_disabled"));
                if (_dialogMode == DialogMode.Insert) checkButtonDisabled.Active = SettingsApp.BOXPOObjectsStartDisabled;
                vboxTab1.PackStart(checkButtonDisabled, false, false, 0);
                _crudWidgetList.Add(new GenericCRUDWidgetXPO(checkButtonDisabled, _dataSourceRow, "Disabled"));

                //Append Tab
                _notebook.AppendPage(vboxTab1, new Label(resources.CustomResources.GetCustomResources(GlobalFramework.Settings["customCultureResourceDefinition"], "global_record_main_detail")));
            }
            catch (System.Exception ex)
            {
                _log.Error(ex.Message, ex);
            }
        }
    }
}
