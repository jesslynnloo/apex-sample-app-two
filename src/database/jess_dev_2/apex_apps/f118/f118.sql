--------------------------------------------------------------------------------
-- Name: Team Calendar
-- Copyright (c)2012, 2025 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0 as shown 
-- at https://oss.oracle.com/licenses/upl/
-- 
-- This script makes use of the FullCalendar product. Refer to
-- THIRD_PARTY_LICENSES.txt in the top directory of this project
-- or at https://github.com/oracle/apex for license information.
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>9352366449203324
,p_default_application_id=>118
,p_default_id_offset=>9354620578212929
,p_default_owner=>'JESS_DEV_2'
);
end;
/
 
prompt APPLICATION 118 - Team Calendar
--
-- Application Export:
--   Application:     118
--   Name:            Team Calendar
--   Exported By:     JESS_DEV_2
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     51
--       Items:                  154
--       Computations:            21
--       Validations:             35
--       Processes:               95
--       Regions:                176
--       Buttons:                140
--       Dynamic Actions:         71
--     Shared Components:
--       Logic:
--         Items:                 12
--         Processes:              3
--         Computations:           9
--         Build Options:          4
--       Navigation:
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:             43
--         NavBar Entries:         1
--       Security:
--         Authentication:         1
--         Authorization:          4
--         ACL Roles:              1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  26
--         Shortcuts:              2
--         Plug-ins:               6
--       PWA:
--       Globalization:
--         Messages:              36
--       Reports:
--       E-Mail:
--     Supporting Objects:  Excluded
--   Version:         24.2.11
--   Instance ID:     8325226857105543
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'JESS_DEV_2')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Team Calendar')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TEAM-CALENDAR')
,p_application_group=>wwv_flow_imp.id(189034225876496944)
,p_application_group_name=>'Starter Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B5CDC6F5068EB5D3291A15B06CECC9BAF767EF48F62733C466BFBC9C2C1A8583'
,p_checksum_salt_last_reset=>'19990804000000'
,p_bookmark_checksum_function=>'SH512'
,p_max_session_length_sec=>28800
,p_max_session_idle_sec=>28800
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'&APP_DATE_FORMAT.'
,p_timestamp_format=>'&APP_TIMESTAMP_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.26 -> 1.0.27: Changed Notifications region(s) from plsql to report.',
'    Changed navigation region to APEX list.',
'1.0.27 -> 1.0.28: Changed Authentication scheme to use new "APEX_PACKAGED_APPLICATIONS" cookie',
'1.0.28 -> 1.0.29: Added confirm modal when enabling ACL',
'1.0.30 -> 1.0.31: Added "Rename Application" page and supporting application items, computations, substitution strings, item and region  changes on login pages, and UI Logo text replacement.',
'1.0.31 -> 1.0.32: Added Notifications to Mobile home page (400)',
'1.0.32 -> 1.0.33: Added "Bulk Add Users" functionality',
'1.0.34 -> 1.0.35: Error handling procedure updated to account for bug 17516350',
'1.0.35 -> 1.0.36: Implemented redesigned administrative ACL controls'))
,p_authentication_id=>wwv_flow_imp.id(8949801941501567742)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'&APPLICATION_TITLE.'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'24.2.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_security_scheme=>wwv_flow_imp.id(3264368374772348877)
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'eba_ca_fw.apex_error_handling'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_DATE_FORMAT'
,p_substitution_value_01=>'DD-Mon-RRRR'
,p_substitution_string_02=>'APP_TIME_FORMAT'
,p_substitution_value_02=>'HH:MIam'
,p_substitution_string_03=>'APP_TIMESTAMP_FORMAT'
,p_substitution_value_03=>'DSFM HH24:MI:SS'
,p_substitution_string_04=>'APP_DATETIME_FORMAT'
,p_substitution_value_04=>'DD-Mon-RRRR HH:MIam'
,p_substitution_string_05=>'APP_NAME'
,p_substitution_value_05=>'Team Calendar'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>9
,p_version_scn=>82521914
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
,p_copyright_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Name: #APP_NAME#',
'Copyright (c)2012, #YEAR# Oracle and/or its affiliates.',
'Licensed under the Universal Permissive License v 1.0 as shown ',
'at https://oss.oracle.com/licenses/upl/',
'',
'This script makes use of the FullCalendar product. Refer to',
'THIRD_PARTY_LICENSES.txt in the top directory of this project',
'or at https://github.com/oracle/apex for license information.'))
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(118)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_theme_style_by_user_pref=>true
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(1760666398868434401)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_include_legacy_javascript=>'PRE18:18'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(1226288688404772270)
,p_nav_bar_list_template_id=>2847543055748234966
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1226288688404772270)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1226289495339772274)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:1001:P1001_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1760728707919542462)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1760729027799546015)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Preferences'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-heart-o'
,p_parent_list_item_id=>wwv_flow_imp.id(1760728707919542462)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1072338183847852045)
,p_list_item_display_sequence=>52
,p_list_item_link_text=>'Customize Appearance'
,p_list_item_link_target=>'#CUSTOMIZE_URL#'
,p_list_item_icon=>'fa-wrench'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'''#CUSTOMIZE_URL#'' is not null'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(1760728707919542462)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1072338502615854149)
,p_list_item_display_sequence=>54
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(1760728707919542462)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1760729325172549336)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(1760728707919542462)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/mobile_navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1641081171066998273)
,p_name=>'Mobile Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1702245442258328786)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'a-Icon icon-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1760666398868434401)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1760666519186434408)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,3,14,31,32,10,33,34,11,28,39'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1760666620507434408)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Timeline'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clock-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1760666701782434408)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Search'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1760666828888434408)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'Tags'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tags'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1760666900219434408)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27,28,4,25,26,7,8,23,24,15,16,17,29,40,39,175,9,35,30,37,18,19,38,53,54,41,100,5,6,43,41,40,42,44,6'
);
end;
/
prompt --application/shared_components/navigation/lists/event_actions
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2204848584569895071)
,p_name=>'Event Actions'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2204848759438895081)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'javascript:openModal(''edit_link_modal'');'
,p_list_item_icon=>'fa-external-link'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2204849240956895095)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Attach File'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_EVENT_ID:&P3_EVENT_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2204849606087895095)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Update'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_EVENT_ID:&P3_EVENT_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_required_patch=>wwv_flow_imp.id(1688256117016091328)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/preferences
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2480132200111897902)
,p_name=>'Preferences'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2480132536919897903)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Time Zone'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-globe'
,p_list_text_01=>'Set time zone for the current user.'
,p_list_text_02=>'switchIcon'
,p_list_text_03=>'&TZ.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3264373580620375645)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(142370280651443295)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Use to change the Access Control Scope or to disable Access Control.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3264374482738375646)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29,RIR:::'
,p_list_item_icon=>'fa-users'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''Y'''
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'Administrators can define the domain of users and assign each a role.'
,p_list_text_02=>'userIcon'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1447200596535952563)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Username Format'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Define the username format for new users in this application.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3264374897291375647)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1866578700063863693)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Calendars'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Maintain the different calendars available to enter events against.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3264375172074375647)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Event Types'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-align-left'
,p_list_text_01=>'Maintain the different types of events available. Examples: meeting, conference, etc.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1336355687626520949)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Rename Application'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tag'
,p_list_text_01=>'Change the application name, displayed on the top left of each page, to one of your choosing.  By default, the application name is "&APP_NAME.".'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1991741720193199628)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Manage Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database'
,p_list_text_01=>'Create, re-Create or remove sample data distributed with this application.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3265218685455236582)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Reporting Time Frames'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'For reporting purposes, define different periods, such as fiscal months.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3265534000683515349)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bullhorn'
,p_list_text_01=>'Manage application notifications that can be used to notify users of information.  Notifications can be set up to show within a specific date range.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3314966991632650485)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RIR,CIR:::'
,p_list_item_icon=>'fa-alert'
,p_list_text_01=>'Report of all internal errors encountered within the application.'
,p_list_text_02=>'reportIcon'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1363314501017638400)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Time Zone'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-globe'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Set my time zone preference for this application.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1326551472271155933)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Page Privileges'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Report of the pages within this application and their corresponding access control security level.'
,p_list_text_02=>'reportIcon'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1847585910941245686)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Application Appearance'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Change user interface theme style for all users.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1684191860777437516)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Build Options'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-gear'
,p_list_text_01=>'Manage the status of build options. Build options allow application functionality to be included or excluded from an application.  Use build options to factor your application.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reporting
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3343532383953146899)
,p_name=>'Activity Reporting'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3343532601141146900)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Activity Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Monthly calendar of page views with summary of page views by user by day.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/admin_email
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8035429957368010891)
,p_name=>'Admin Email'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8035430976415016368)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Send Email'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_from_email varchar2(255);',
'begin',
'    -- If the end-user''s username is already an email address use it as the from address',
'    if regexp_like(:APP_USER, ''^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'') then',
'        l_from_email := lower(:APP_USER);',
'    else',
'        -- otherwise populate the from address by querying the apex_workspace_apex_users view (where email is a required value)',
'        select',
'            lower(a.email)',
'        into',
'            l_from_email',
'        from',
'            eba_ca_users u,',
'            apex_workspace_apex_users a',
'        where',
'            lower(u.username) = lower(a.user_name)',
'        and',
'            lower(:APP_USER) = lower(a.user_name);',
'    end if;',
'    return regexp_like(l_from_email, ''^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'');',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_01=>'Send email of events to other app users.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8036060555833199628)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Groups'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Groups are reusable lists of people that you can email a set of events to.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8036061866914202835)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Group Members'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Report of all members of all groups.  Used for adding members and seeing which groups a person belongs to.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000020649444154584763545FF6FE3FC30002C651078C8600AE10D0787B9BC1F1E161B292E746554F8667BC9244E9C5990833CFCD65';
wwv_flow_imp.g_varchar2_table(2) := 'C83C378F2843D0154D374A62986E944C945E9C0E68E5BCCA2075FB0C5186A02B7AA662C250FD439B28BD381D90ADC9CC906BC04B9421E88A265FF8CC30F5FA5FA2F41274C0CF5FBF187EFDFA0D368C8D8D154CE3E3B3B3B13150D5019FBF7C65006110E0';
wwv_flow_imp.g_varchar2_table(3) := 'E5E106D3F8F82035C3CB01031E0503EE804197064E5EB8CE70EDCE430645690906074B038C44094A8495AB4F33ECBAF294E10FBF24C34F4975BCD991A46CB862EB0186C5EB76C10D8C0D7263880B7445C996CB36ED6398BF7A3B5CCD570D4786AF1A0E38';
wwv_flow_imp.g_varchar2_table(4) := '1D41D001C83ABD922A18BE7CFD0E17E2E1E664D836AF03C5707435FF583918DE785792EE0043FEDF0C96624C281A374EEE62F8FDE3075C8C958383C13FB70CAF1AB21D80CDC9DC370E3070DFD88F37788951836C36C94D32F6E73719983F3E63F8CB2F85';
wwv_flow_imp.g_varchar2_table(5) := '338111A306E608921CC0F8F70F03DBF3EB0CCC5FDE30FCE51161F825A9C9F09F990525B08851435608B0BDBAC3C0776E3D03D38F2F70FDFF3878183E190532FC125381545644A8418F5AE242E0DF3F06915D7D0C4C3F3E63248D7F1CBC0C6FDC8AC0E204';
wwv_flow_imp.g_varchar2_table(6) := 'D530A1266A901EA21CC0F1F40A03DFE9D538B3D227D350B01C21353FA47530CC20CA015C48291F6FB14640F29B8623790EA0C452427A890A01428650223FEA80D11000007A4C7C90B2FB18FB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(560408808602191720)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900000CC449444154785EED9D796C54C71DC77FEB03EFAEBD064C4C02354938129BCB24055C3744269404718442DAA242A5A0B6013551';
wwv_flow_imp.g_varchar2_table(2) := '14D416A5915A4B3D442B55156D85540929A6AD122590A685B6C44D94831414B72901AA38E10A8929C58180F1B96BEFFADAAD9E31A9317BCC9B376FF6CDCC77FFF5CC6FE6F7F9CD677FBB6FDFAE7DE5CFB727080F103094800F02185A79A43D440002E020';
wwv_flow_imp.g_varchar2_table(3) := '184D0002185D7E240F0170068C2600018C2E3F92870038034613800046971FC943009C01A3094000A3CB8FE42100CE80D1042080D1E547F2100067C0680210C0E8F22379088033603401086074F9913C04C019309A000430BAFC481E02E00C184D000218';
wwv_flow_imp.g_varchar2_table(4) := '5D7E240F0170068C2600018C2E3F92870038034613800046971FC943009C01A3094000A3CB8FE42100CE80D1042080D1E547F2100067C0680210C0E8F22379088033603401086074F9913C04C019309A80E7052818ECA32D4776D27DE7DEA2295D1F1B5D';
wwv_flow_imp.g_varchar2_table(5) := '2C51C99F2F2EA303B7D7D0F6AAC7458554368EE705F8C3BEAF5345EB1965017B79E3C74B2B68C39A5D5EDEA2EB7BF3B4008F1DDB458F1DFBADEB104C5E60C7C26F51DDBC8DC622F0B4007BF73E4C33DA9A8C2D8E8CC44FDE544E5F5D6BEE938CA70568AC';
wwv_flow_imp.g_varchar2_table(6) := '5B24E30C18BF46E5A60663194000634BFFFFC42180470F013A809CC24000399C6DAF02016C23E39A0001B8B0B93F0902B8CFD85A0102C8E16C7B1508601B19D70408C085CDFD4910C07DC6E800CFB727E460B6BF0A04B0CF8C67063A000F3509734E6D18';
wwv_flow_imp.g_varchar2_table(7) := '2761152C51B1BBC358089EFE1C0002C8399710400E67DBAB4000DBC8B82640002E6CEE4F8200EE33B65680007238DB5E0502D846C63501027061737F1204709F313A80872F83420008E036015C05729BB002F1F112C8A3454207905318082087B3ED5520';
wwv_flow_imp.g_varchar2_table(8) := '806D645C1320001736F7274100F719E34D30DE04CB39651E5E051DC0A3C5B1DB012E7C72594826936F9998348EEAF153C18100428E8DF82010808F692A8121C08D04B4BA0CAAFA33B4DBFB87001080E929152F8198306931081D204919218016679B2909';
wwv_flow_imp.g_varchar2_table(9) := '080001703728932A59188437C17CD0F126989D1B3A003A003A00BB2F7247A203F0F1460760E7860E800E800EC0EE8BDC91E8007CBCD101D8B9A103A003A003B0FB2277243A001F6F7400766EE800E800E800ECBEC81D890EC0C71B1D809D1B3A003A003A';
wwv_flow_imp.g_varchar2_table(10) := '00BB2F7247A203F0F1460760E7860E800E800EC0EE8BDC91763B80DCDDE9B31ABE11E6D15A4200398581007238DB5E0502D846C63501027061737F1204709FB1B5020490C3D9F62A10C03632AE0910800B9BFB932080FB8CD10134FA612CB77F5541F5F8';
wwv_flow_imp.g_varchar2_table(11) := 'A974420790F344637B15BB1D40F503EAF6FE21C08D04F041183E08C39B60DB4FCD9226A003F081C6AD10ECDCD001D001D001D87D913B121D808F373A003B37740074007400765FE48E4407E0E38D0EC0CE0D1D001D001D80DD17B923D101F878A303B073';
wwv_flow_imp.g_varchar2_table(12) := '43074007400760F745EE4874003EDEE800ECDCD0016C7680C38DA7E9FDD367A9A9F9225D6A69A7484F6C284251D04F37978EA7696593684EF954AAAA2C4F59856CFDFF8174B742145C3849635A3EA2BCCE8B941B69235F5F746878624C80068B4A6860EC';
wwv_flow_imp.g_varchar2_table(13) := '24EA2B9D4EBD9367B29F2E054642000601223D51DAF3D703B4EFD5B728DCDDC354D6506190EEBFE76E5ABDB49A8201FF7573BC22C0B5BC7E5FDF40397DDD4C79C5C71452ECF6F9D47DC7224AE45F9F1753008F0D82001904A87FF36DDAF9DC7EEA0C47B8';
wwv_flow_imp.g_varchar2_table(14) := '4A6789F0B52F2EA125D5777D3ADF0B0238CDCB122132FB7E8ADDF6592E2E5E990401D208F0AB5D2F0E3DEB8B782CBB773E7D73DDF2A150D91640645ED1A90B293CEF411188B2120302A410E0273B9EA1D71B8E0A2DCAA2F9B3E9898D6BB32A801B79F596';
wwv_flow_imp.g_varchar2_table(15) := 'CDA5CE055F11CA4A5630089084F40BF507853DF38F0E6F7582DA273626ADAFDBDF0710F9CC3F3A01553B8156028878D6B05E1BFF7CE76E11A152C678EAD10DB46A49B5AB6B8C0E2E23AFAEBBD728F79E00028C3829D655910D5BB671BFE1653DD1634345';
wwv_flow_imp.g_varchar2_table(16) := 'B47B472D150503AC531C8D939597F5C6B8F5812D4A5D1D8200238E56DD9E7A7A66DFAB8E0E1BEBE48D0F2DA34DEB57B10E77344E665E3D77D65064D65247FB953919028CA0BD7AD30F5C7FF6BFB69CD505F6D7FD544AAD65E66575812B2BBF27252F118B';
wwv_flow_imp.g_varchar2_table(17) := '4080618A870E3752EDF65D229832C7D8B6F511AAA9AA641ECF33301B797556AD57E6136308307CAADCBC4292EAE03EB4EC5EFACE23EB78CE35F39C6CE4A5D2152108307C941EADFD259D38738EF960891838EB8EDB68E7B6EF8A0895324636F2EA2F29A3';
wwv_flow_imp.g_varchar2_table(18) := 'F69ACDAEE6252A38041826B97AD3F7A933CC763F8C28F8634385B4BFEE67A2C2258D938DBCE263827465E553AEE6252A38041826B978FDB729914888E2CA14C7E7F3D1C13DBF661ACB3B281B7925C8472D6B7FC4BB65A9F33C2DC0D69971DA7C57891420';
wwv_flow_imp.g_varchar2_table(19) := 'D9382810404A69D32EE26901E29D97E8B935B7D2C249EE7F60948D970A78090401D21218E8B844393EA227AB4B5DEF04D978B38837C110202D8178344CF15EB62FA0384539EE834314BCF0BED330B6E6F74C9E431D77D6D89A63777036F2C26550BB554A';
wwv_flow_imp.g_varchar2_table(20) := '337E30D24689817E81119387F2B73451C9F1575C5F67E4026DB39753AC749AAB6B66232F7C1026B8A4B23AC12D0DBFA39CFEABDF8575FB11CF0FD0278BBEE1F63243F1A5E6855B21A4D4D495458A4EBC41C10F0EB9127B745099378DE99A97884279FA2A';
wwv_flow_imp.g_varchar2_table(21) := '908804EDC4F0F5C768C26B3B98BF206E27F6C8B1B26F1BD6352F5EFE23E741805114FDE78E51F1BFFF22826DCA18D9F8E288AE79392D1404484230F4EE4B1438FB8E53B649E767F30A89AE793929140448416FEC913F5241F37B4ED8DE30D70B5F1ED735';
wwv_flow_imp.g_varchar2_table(22) := '2FDE42418034E4443E6366F3997F748ABAE6C5230104C840CD7AED5C74FC75EE37C65EFD01295DF3B22B01046020665D45293CD340FEFF1C651641859F10D4352F86927E3A0402D8A14544BAFE88ACAE79652A2F04C844087FD79A0004D0BABC482E1301';
wwv_flow_imp.g_varchar2_table(23) := '08908910FEAE350108A07579915C260210201321FC5D6B021040EBF222B94C0420402642C37FCFED6EA7FCD6FF0EFD0FADBC700BE5443B2837D64D34D07B75445E010DFA0B291E184703A1D2A1FFA9D53FE1561A2C1CCFB8427686E99A172B4D08908654';
wwv_flow_imp.g_varchar2_table(24) := '6E771BF9CF3752C1851394D7758995E975E3068A6FA6DEC9B32836A592060BE5FCC245A68DEA9A57A6BC93FD1D0224A192DFDE4C810FFF49FE8FC57E4738F69939149DF179EA1F5FC6532BC77374CDCB09180830825E8E75CBC389D72870F68813A619E7';
wwv_flow_imp.g_varchar2_table(25) := '46A72EA0EE590F505CD27F59D435AF8CA019064080614805174F52A8B19E72A261066CCE870C064214A95C45BD93DCFDBFBBBAE6E5BC0257234000220A9E3E444527DF10C5D4569CC8CCA5D453EECE4FA3E89A972DC019061B2F40D17B2F53F0A3B74532';
wwv_flow_imp.g_varchar2_table(26) := 'B51D2B3ABD9AC27357D89E976E82AE790985647A070835FE8D024DFF12CD942B5E74DAE7285CB9926BEEE849BAE62504CEA820C67680C2537FA7C2536FBAC1943B6677C512EAAEB88F7BBE3551D7BC1C414933D94801ACCB9BC5EFBCE816534771BB16AE';
wwv_flow_imp.g_varchar2_table(27) := '23EB7229CF43D7BC7858B0CE314E00EB2ACF8403BF219FA45F80632DC4B57189FC00B57EE1718A0742B6A6EA9A972D081C838D13A0F8C89FC8DFDCC8814ADE94585925752DF8B2AD0575CDCB16048EC1460930E6F28734EE1FCF7260923FA5E39E87A96F';
wwv_flow_imp.g_varchar2_table(28) := 'E20CA68575CD8B297987838C12C03AFCD66151E1611D7E4B029687AE79B1E4EE748C3102E4B53753C9C1A79DF2923ABF6DF1661AC870DF90AE79C9026D8C00458DF5146C3A2C8BAB90757AA6550DDD2E91EEA16B5E420032043146809B5EFE05E5F44618';
wwv_flow_imp.g_varchar2_table(29) := '90786748BCA088AEAC7832ED8674CD4B56158C10C0BA0D78BC622F7FAE1D80F6C59B53DE3EAD6B5EB20EBFB58E110258F7FA58F7C6A8F888CC5D413DD3AB936E5DD7BC64D6C908014247F752E0FCBB32B90A5B2B3A651E85E77F29693C5DF312068F2190';
wwv_flow_imp.g_varchar2_table(30) := '110258577FACAB252A3EACAB40D6D5A0640F5DF3925927230498F0CA76CA8D75C9E42A6CAD417F31B52EDF9A349EAE790983C710C8080126BEB48D48C2BF5A65E06D7F485E3E5D7EB036E93C5DF3B20F897F861902FCF987FC843C30F3F2DA1F271740D3';
wwv_flow_imp.g_varchar2_table(31) := 'BC64223742009940B1965A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E0513';
wwv_flow_imp.g_varchar2_table(32) := '80008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281';
wwv_flow_imp.g_varchar2_table(33) := '229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A0420805AF5C26E051380008281229C5A04';
wwv_flow_imp.g_varchar2_table(34) := '20805AF5C26E051380008281229C5A04FE0745995C6A9BAAD4DE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(560409040672191736)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EED9D09985C6599EFDFAAEAAADE93EA2521096149088184004242081036D902980B57506473D041BD2A20F3E0';
wwv_flow_imp.g_varchar2_table(2) := '3A3ACC5C46C771182F7A916114150715C7111107119045F67D11080102862D104CD2DDD57B77ADF39C0E9000E9EEAAAF4E9DF37EE7FBD5F3CC3C330FE73BDFFBFEFEEFE9FEA5BAEA9CD86E57F794841704200001084000024E118821004EE54DB3108000';
wwv_flow_imp.g_varchar2_table(3) := '0420008131020800830001084000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D4300021080000410006600021080000420E0200104C0C1D069';
wwv_flow_imp.g_varchar2_table(4) := '190210800004208000300310800004200001070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D33204200001084000016006200001084000020E1240001C0C';
wwv_flow_imp.g_varchar2_table(5) := '9D96210001084000020800330001084000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D4300021080000410006600021080000420E0200104C0';
wwv_flow_imp.g_varchar2_table(6) := 'C1D069190210800004208000300310800004200001070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D33204200001084000016006200001084000020E1240';
wwv_flow_imp.g_varchar2_table(7) := '001C0C9D96210001084000020800330001084000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D4300021080000410006600021080000420E020';
wwv_flow_imp.g_varchar2_table(8) := '0104C0C1D069190210800004208000300310800004200001070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D3320420000108400001600620000108400002';
wwv_flow_imp.g_varchar2_table(9) := '0E1240001C0C9D96210001084000020800330001084000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D43000210800004100066000210800004';
wwv_flow_imp.g_varchar2_table(10) := '20E0200104C0C1D069190210800004208000300310800004200001070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D3320420000108400001600620000108';
wwv_flow_imp.g_varchar2_table(11) := '4000020E1240001C0C9D96210001084000020800330001084000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D43000210800004100066000210';
wwv_flow_imp.g_varchar2_table(12) := '80000420E0200104C0C1D069190210800004208000300310800004200001070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D3320420000108400001600620';
wwv_flow_imp.g_varchar2_table(13) := '0001084000020E1240001C0C9D96210001084000020800330001084000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C2480004424F458A924F1524192C5E29B1D';
wwv_flow_imp.g_varchar2_table(14) := '9522D2196D40400381D85811B9785C8AB18494629BFF7F5E10B099000260697ADE2FFCBD37AC92E5AFDE2F737B5F961DFAD6C9B4C12E69CD0E48D1FBE1C40F284B93A56C9504C604BB24FDA916D9D0DC29EBA66C2F6BA7EE24F7EC70803C317D1142A032';
wwv_flow_imp.g_varchar2_table(15) := '348A9A8C000230192185FFDDFB657FDE233F90C56F3C2E9D43DD0A2BA42408B841604353A73C346BB15CBEF86C79B575961B4DD36564082000964579C8ABF7CAD7EEB958660C6EB4AC72CA85407409BC347527F9E601E7CBFDB39746B7493A8B1C0104C0';
wwv_flow_imp.g_varchar2_table(16) := 'A2483FFDD88FE4937FFA0F49140B16554DA9107083403E5E2757BCEFAFE4F27D3FEE46C374693D0104C09208F7DAB04A7E72C3395257C85952316542C03D02B97852CE5C79B9AC9EB6C0BDE6E9D83A0208800591797FF3FFB79BBF203BF5BE6241B59408';
wwv_flow_imp.g_varchar2_table(17) := '01B709AC69DF45CE39FA6279A3653BB741D0BD7A020880F288BC4FFB5F7CFB8572F48BB72BAF94F2200081B7085C3B7FA5FCC3215F0608045413400054C723B2CF1B4FCA25B7FDADB40FF728AF94F2200081B708AC6F9921E71FF54D79A6633E5020A096';
wwv_flow_imp.g_varchar2_table(18) := '0002A0369ACD859DF7F0F7E5EC27AE525E25E5410002EF2670E9924F8E7D28901704B4124000B426F3665D97DCFA5539E2A53B945749791080C0BB09DC32E770B9E088AF0306026A0920006AA31189978A72EDAFCF90B99997155749691080C0B6083CDB';
wwv_flow_imp.g_varchar2_table(19) := 'B1AB9C72E295DC2590F1504B0001501B8D485D312F77FC7CA54C19ED535C25A5410002DB22D0DDD026479C769D14E2750082804A020880CA583617D590CFCADD3F5F21F5B951C555521A0420B02D02DE3D010EFAE81F64A42E052008A8248000A88C6573';
wwv_flow_imp.g_varchar2_table(20) := '51F5F951B9FB67C74A431E01501C13A541609B0446132939F8CC9B1100E6432D0104406D340880E268280D02931218ADAB9783CFB85146EAEA273D96032010060104200CEA65EEC93B006582E2300828248000280C8592DE410001503C100880E270280D';
wwv_flow_imp.g_varchar2_table(21) := '02931040001811ED041000C50921008AC3A134082000CC80E5041000C50122008AC3A134082000CC80E5041000C50122008AC3A134082000CC80E5041000C50122008AC3A134082000CC80E5041000C50122008AC3A134082000CC80E5041000C5012200';
wwv_flow_imp.g_varchar2_table(22) := '8AC3A134082000CC80E5041000C50122008AC3A134082000CC80E5041000C50122008AC3A134082000CC80E5041000C50122008AC3A134082000CC80E5041000C50122008AC3A134082000CC80E5041000C50122008AC3A134082000CC80E5041000C501';
wwv_flow_imp.g_varchar2_table(23) := '22008AC3A134082000CC80E5041000C501D617B2F2E09547485C8A8AABA4340840605B040AB184EC7FD6AD924DA40004019504100095B16C2E2A512ACA633F3E4462A592E22A290D0210D81681522C26FB7EFC4EF1448017043412400034A6B2554D173C';
wwv_flow_imp.g_varchar2_table(24) := '74992C7BED2169CE0E29AF94F2200081B7080CA69AE4BED9CBE492FD3E0D1408A8258000A88D667361CF9EDC24A59E2E919111E595521E0420F03681860691B60E59700DE2CE54E8258000E8CD66B3009C9A565E21E5410002E311D8FD1719E040402D01';
wwv_flow_imp.g_varchar2_table(25) := '04406D346FBE038000284F88F220303E010480E9D04C0001D09C0EEF00284F87F220303101048009D14C0001D09C0E02A03C1DCA830002C00CD84B0001509E1D9F01501E10E541600202BC03C07868268000684E87770094A7437910E01D0066C05E0208';
wwv_flow_imp.g_varchar2_table(26) := '80F2EC7807407940940701DE0160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E54100016006';
wwv_flow_imp.g_varchar2_table(27) := '2C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E5410001';
wwv_flow_imp.g_varchar2_table(28) := '60062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541';
wwv_flow_imp.g_varchar2_table(29) := '000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10E541000160062C258000280F0E01501E10';
wwv_flow_imp.g_varchar2_table(30) := 'E541000160062C258000280F0E01501E10E541000160062C258000280F2E4C0128168B92E9ED97D16C5662B1987252EF2CAF542A497D7D4AD2535A251E8F1BD53ED67F5FBF8C8EDAD97F2A9594F49429924898F5EF31ECC9F44936971511FBF2F7FAEF68';
wwv_flow_imp.g_varchar2_table(31) := '4B1B65EFD7A2DD7F91F1EB549C0702BE1340007C47EAEF09C314806C2E275DDD19F17E11D8F8F27EF17BBF0092C93AA3F2F3F9BC6CEAEA91A2D5FD4F95643269DE7F77463C11B2F1E5F5DDD99E0E555E11001B27C79D9A1100E559872A00D99C74F5D82B';
wwv_flow_imp.g_varchar2_table(32) := '00DEBB161DED694919FE02B45D80BCFE3BDBDB8C052897CBCBA6EE1E6B05D0133FAFFF30DFBD420094FF8075BC3C0440F9002000E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E601210008000260';
wwv_flow_imp.g_varchar2_table(33) := '7EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E601210008000260';
wwv_flow_imp.g_varchar2_table(34) := '7EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E601210008000260';
wwv_flow_imp.g_varchar2_table(35) := '7EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E601210008000260';
wwv_flow_imp.g_varchar2_table(36) := '7EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E601210008000260';
wwv_flow_imp.g_varchar2_table(37) := '7EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E601210008000260';
wwv_flow_imp.g_varchar2_table(38) := '7EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E601210008000260';
wwv_flow_imp.g_varchar2_table(39) := '7EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E601210008000260';
wwv_flow_imp.g_varchar2_table(40) := '7EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E6012100080002607EFDB032FA041000E5192300E601210008000260';
wwv_flow_imp.g_varchar2_table(41) := '7EFDB032FA041000E519872A00B99C747567A4542A29A7B4EDF2E2F1B874B4A52599AC33AA3F9FCFCBA6AE1E295ADDFF54492693E6FD7767A4582C1AAD0F7B91D777677B5A3C110CEBB5FB2F32616DCDBE10989400023029A2700F0853000AC5A2F4F6F6';
wwv_flow_imp.g_varchar2_table(42) := '4B369B0DF587A84902DE2FEDFAFA94B44D9D625CBB778E4C6F9F8C8E66251EE22F1193FE3D694BA69263FD7B2264F2F2CED193E993D1AC85FD8B8C899F278061BE108030E9B3F764041080C90885FCDFC31480905B677B08584F0001B03EC24837800028';
wwv_flow_imp.g_varchar2_table(43) := '8F1701501E10E5416002020800E3A1990002A0391D1141009407447910400098014B092000CA8343009407447910400098014B092000CA8343009407447910400098014B092000CA8343009407447910400098014B092000CA8343009407447910400098';
wwv_flow_imp.g_varchar2_table(44) := '014B092000CA8343009407447910400098014B092000CA8343009407447910400098014B092000CA8343009407447910400098014B092000CA8343009407447910400098014B092000CA8343009407447910400098014B092000CA834300940744791040';
wwv_flow_imp.g_varchar2_table(45) := '0098014B092000CA8343009407447910400098014B092000CA8343009407447910400098014B092000CA830B5B00BC67C2974ACA214D505E3C1EABAAF862D1DEE663319198F7BFAA78158B4511A9EE1C556C5FD5523FFAAFAA0011E16980D512647D2D09';
wwv_flow_imp.g_varchar2_table(46) := '2000B5A4EBC3B9C3148042A120BD7D0392CD6525168BFBD04D70A7F07E71D5A752929EDA2AF1B859EDDE3932BDFD92CDE5AAFE451A5CE79B772A958A924C26253D758A240CFBF7E4AF27D32BD96C4E6286E708BAEFB7F6F36A4F26EBA43D3D35D4EC1080';
wwv_flow_imp.g_varchar2_table(47) := 'B026807DCB218000944329C463C21400EF175F577746BC1FA636BEBC7FFD77B4B58DFD223079E57279E9EAE9115BDF0588C762D2D1D126C93AB3FEF3F9BC6CEACEC8E67701EC7B79B977B6B72100F64547C50111400002026DBA4DA80290CD49578FBD02';
wwv_flow_imp.g_varchar2_table(48) := 'E0BDFDDDD19E9654326984DF7601F2FAF77E015623409BBA7BAC154004C068EC59E41001044079D808807940080002C03B00E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E';
wwv_flow_imp.g_varchar2_table(49) := '3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E';
wwv_flow_imp.g_varchar2_table(50) := '3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E';
wwv_flow_imp.g_varchar2_table(51) := '3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E';
wwv_flow_imp.g_varchar2_table(52) := '3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E';
wwv_flow_imp.g_varchar2_table(53) := '3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E3102601E100280002000E6D70F2BA34F0001509E';
wwv_flow_imp.g_varchar2_table(54) := '3102601E100280002000E6D70F2BA34F0001509E3102601E50AD0520D337282FBEFABABCF2FA4659BFB15B36746724D33B20FD8343323C9A9542A138567C221197C6FA94B43637497A6A8B4C6F4FCBCC69EDB2E3AC6932678759929ED26CDEE4042BBDFE';
wwv_flow_imp.g_varchar2_table(55) := 'BD5F80C9649DD1F973B9BC6CEAEE9152A964B43EEC455EDF9A05203E3228C9CC6B52D7B74112039B243E9491C448BFC4B243122B6425562C8C212CC513524AA4A4946A924243AB149BD25268E994FC94E9924B6F2FC586DACC4FD8F9B17FED092000B567';
wwv_flow_imp.g_varchar2_table(56) := '5CD50E0880393EBF05205F28C8634FBF204F3EBB56563FFFB2BCBEA1CBBCB8AD56CE9ADE210B77DD49F6DA7DAEECBBC73CA94B247C392F02A04C008A79A97FE379496D7C41521B5F1AFBA5EFC7CB9381ECB49D253B6D9E8CCED855246E267C7ED4C239EC';
wwv_flow_imp.g_varchar2_table(57) := '22800028CF0B01300FC82F01786CD51AB9F7D1D5F2C013CF483EBFF95F65B57AD5D52564D9DE0BE4A0C50B659F3D76AD6A1B04408700D4BFB146EAD73D25F5EB574BAC90AF2AD3C916971275323A73A18CCEDE534667CC9FEC70FEBBE3041000E5038000';
wwv_flow_imp.g_varchar2_table(58) := '9807548D00E4F279B9E6F777CA6F6FB9D7B77FE957DA89F7CEC09107ED2B471FBCD8E85D0104203C01F0E6E73737DF23DFBDF66EDFFEA55FE9FC78EF0C0CEFBC4486E6EEC7BB0295C273E478044079D008807940A602F0F3EB6E95FFFCDDEDD2DB3F68BE';
wwv_flow_imp.g_varchar2_table(59) := 'B98F2B5B9B1BE503872F93138E3AB0A2B32200E10880B6F929A69A6478DE4132387F7945F3C3C1D127800028CF1801300FA85201B8F9AE87E5C7BFBA51D6FBF4B77DF3CAB7BD727A475A3E74EC2172F07E7B96756A04205801D03E3F85A636195A70B80C';
wwv_flow_imp.g_varchar2_table(60) := 'EFB07759F3C341D127800028CF1801300FA85C0158F7C646B9ECA7D7C9BD8FAC32DF2CC0958BF7DC55CE3CE1489931AD7DC25D11806004C0B6F9199DB99B0C2C3A460ACD1D014E2D5B69248000684C65AB9A1000F380CA1180EB6FBB4FBE73E5AFC5FBCA';
wwv_flow_imp.g_varchar2_table(61) := '9B4D2FEFC3821F3BF91839E2807DC62D1B01A8BD00D83A3FDE870507F63C76EC3302BCDC25800028CF1E01300F683201F8D72B7E29FF7DEB7DE61B285879C481FBC8274E396E9B952000B5158028CC8F2700FDEF5BA9609229210C02084018D42BD81301';
wwv_flow_imp.g_varchar2_table(62) := 'A800D6BB0E1D4F00BA7AFAE4A24BAF92C79F7EDEFCE48A567AF71038EFCC13C76E32B4F50B01A88D00446D7EB29D73A46FC9C9526C78E7FC281A714AA9110104A04660FD3A2D02604E725B02B0F6D5F572E1FFFBB1BCF2FA06F3132B5CE97D65F0FC8F9F';
wwv_flow_imp.g_varchar2_table(63) := '243BCE9CF676750880FF0210D5F9F1BE3298597A8A14A64C5738DD94542B020840ADC8FA745E04C01CE4BB0560CD8BEBE4CBDFFA816CEAE9353FA9E2956D535BE58B9FFCB0CC993D63AC4A04C05F0188FAFC141B5A25B3EC74C9A7672A9E724AF3930002';
wwv_flow_imp.g_varchar2_table(64) := 'E027CD1A9C0B013087BAB50078FF72FBFC372E8FEC2FFFB7287912F0954F9F3AF64E0002E09F00B8323F9E04F41CF851DE0930FFB163D54A0440795C088079406F0940FFC0B07CEEA24B23F7B6FF7864BC3F075C78CE19D2966EE56140ED6D632254CDCB';
wwv_flow_imp.g_varchar2_table(65) := 'FB9BBF4BF3E3FD39A067F9C7F84C40354363C95A04407950A10A402E275DDD196B9F0637F62FE08E36F9FC3FFD7B643EF057EEB87A1F0CFCFB73CF948EF6B4A492C97297BDE338EFB9071BBBBAADCDDFEBDBEBBF5A01F8DC45DF736E7EBC0F0666969F65';
wwv_flow_imp.g_varchar2_table(66) := '34372CB2870002A03CAB3005C07BFA5D26D327D95C4EAAFC4754E094BD27D8A65249B9F29A9BE5FADBEE0F7C7F0D1B1EBD7CB17CE533A74BC2F0E982C56251BA7A7A256769FEDEBD12A675B457250051F8AA9FE92CF215415372F6AC4300946715A6006C';
wwv_flow_imp.g_varchar2_table(67) := '8DC6BE47C297E477B7DF2F17FFE097CA13AE6D795FF8E429B2F288CA9E21F0EE8A4A63E157F7367A6DBB7CEFD9FD1056EF263FAECF8F778F006E1614F4F406B71F02101C6BA39DB4088051F1212EF26ECFFA579FFF67EBEEF0E737B264B24EFEE35FBF2C';
wwv_flow_imp.g_varchar2_table(68) := 'B3676CF97AA0DF7B44F17CCCCFE654BD3B0676BFFF33DC36388A43EE69FD6E57F7787ACF4B290104C02C98AF5C7C8535F7F637EBB0FC55072D5924DFFCC227CA5FC091C2FC6C1902EFD901BDFB9FC65444900002A03C5404A0F280BCA7B27DE3B29F55BE';
wwv_flow_imp.g_varchar2_table(69) := '30C22BBEFAD933E49843F68B7087FEB5C6FCBC9765FFE20FF21441FF464CCD99100035516CBB1004A0F2804E39F722B58FF4ADBC1B7F56CC9CDE21BFBCF4427F4E16F1B3303FEF0DD87B9470D7D1E7473C79F7DA430094678E005416D0CFAFBB55BEFF8B';
wwv_flow_imp.g_varchar2_table(70) := 'EB2B5BE4C8D19F3A75A59C7EE2918E746BD626F3333EB7C18547C9E0FCE5666059A5920002A032962D452100E50794CBE7E583FFE742E9ED1F2C7F9143474E6D6D966BFFFD2249D6D539D475F9AD323F13B32AA69A64D38A0B44E2CC4FF953A5FB480440';
wwv_flow_imp.g_varchar2_table(71) := '773E8200941FD07FDD70877CEFAADF94BFC0C123CFF9E8FF960F1F7F98839D4FDE32F33339A381452B6468DE01931FC8115610400094C78400941FD0197FF30D676EF75B3E95771EB9E3ACE9F2B34BBE6ABA3CD2EB989FC9E3F56E13DC75E4B9931FC811';
wwv_flow_imp.g_varchar2_table(72) := '5610400094C784009417D0FD8F3D2D5FFAD60FCA3BD8F1A3BEF5A54FCA01FBEEE1388577B6CFFC943F0EBDCB4E97D119F3CB5FC0916A0920006AA3D95C1802505E40FF78E94FE5967B1E29EF60C78F3A6AF912F9BB73CF749CC23BDB677ECA1F8791D97B';
wwv_flow_imp.g_varchar2_table(73) := '49DF9293CA5FC0916A0920006AA34100CA8DC6FBF0D68AB3BEE4FC5DFFCAE5E5DD1DF0A69F7C8B0F03BE098CF9297772361FE7DD1D70E3F15FE1C380956153793402A032962D45F10EC0E401DDF5D093F2B56FFF68F20339E26D025FBFE0AFE590A57B41';
wwv_flow_imp.g_varchar2_table(74) := '4444989FCAC7A077E9476474D682CA17B24215010440551CEF2D0601983CA06FFFF0BFE4B7B7DC3BF9811CF13681138E3A482E38FBC3101111E6A7F231189EB344FAF75E59F94256A8228000A88A03013089834F6F574E8D6F036C61C6FC543E3F7C1BA0';
wwv_flow_imp.g_varchar2_table(75) := '72661A5720001A53D9AA26DE019838A0EE4CBF9CF8A9AF294F516779D77DFFEBD29E6ED5595C4055313FE6A037ADF8A2141B9ACD4FC0CAD0092000A14730710108C0C47CF8FA96F900F3754011E6C77C7EF83AA0393B2D2B11002D498C530702307140DC';
wwv_flow_imp.g_varchar2_table(76) := 'BBDD7C8079368008F3633E3F3C1BC09C9D9695088096241000A324FEF9F2ABE5F7773C68B4D6F545C71DB6BF7CF9D36E3FE79DF931BF0A4676DC47FAF63DD1FC04AC0C9D0002107A04FC09A09A083E77D1F7E4F1A79FAFE614CEAEDD678F5DE5BB179EE3';
wwv_flow_imp.g_varchar2_table(77) := '6CFF5EE3CC8F79FCD9CE3992597E96F90958193A010420F40810806A22E013DCE6F4F8268008F3633E3F7C13C09C9D969508809624C6A9E3DE135BA5A331A1BCCAF0CA5B79F6DFF2F85F43FCDEE381AFFFE13F19AE8EC632E6C73CC7B1C7031FF725F313';
wwv_flow_imp.g_varchar2_table(78) := 'B03274020840E8114C5CC05587A664E9AC26E5558657DE11675CC02D800DF17BB704BEED67DF365C1D8D65CC8F798E63B7045EF977E6276065E8041080D02398B88073E617E49CC51DCAAB0CAFBC433F72BE944AA5F00AB078E7582C2677FEE7772CEEA0';
wwv_flow_imp.g_varchar2_table(79) := 'FAD2999F2A18C662B2E1847FA8E2042C0D9B000210760293ECBF6B5D46AEFFD0CECAAB0CAF3C7E809BB3470044981FF3F91104A00A783A9622003A7218B78A7CE62F72D931B3E498B96EDFB16D3C40BC856B3EC0FC094084F9319F1FFE0460CE4ECB4A04';
wwv_flow_imp.g_varchar2_table(80) := '404B12E3D4E109C06E1DF572C3877917605B88F81097F900F3214011E6C77C7EF810A0393B2D2B11002D494C2000DE7F3A75615AFEF1D0ED94571B7C797C8DCB9C395F03E46B80E6D323C2D700ABA1A7632D02A0238709FF04F0D67FFCF4BE1D72C1FE9D';
wwv_flow_imp.g_varchar2_table(81) := 'CA2B0EB63C6EE462CE9B1B01712320F3E911E14640D5D0D3B11601D091C3F802D0BB4164AB4FB9F34EC03B51712B57F301E656C022CC8FF9FC702B6073765A5622005A9218A78EC240B794F2B977FC57EF3301E72DE9E08381C2C35CAA195F1E06C4FC54';
wwv_flow_imp.g_varchar2_table(82) := '333F3C0CA81A7A3AD622003A7218B78AE2C880144706B7F9DF1774D68F49C0D2998DB24B5BBD93770CE471AEE603CCE380791CB0F9F488F038E06AE8E9588B00E8C861DC2A4A859C14FABB9557195E7989ECB06C77DF95E11560F1CE7F39F0635248355A';
wwv_flow_imp.g_varchar2_table(83) := 'DC41F5A5333FE60C37ADF8A2141B9ACD4FC0CAD0092000A14730790185C18C9472A3931FE8E811D31FBA5AEA86321F64E83B000016B6494441548E766FD676BE292D1B96BAFD28E0B7C8313F95CF10DF00A89C99C6150880C654DE5553A99097427F9705';
wwv_flow_imp.g_varchar2_table(84) := '958653E2D435774AF3EB4F87B3B9A5BB0ECEDA437AE71F6A69F5FE96CDFC54CE7378CE12E9DF7B65E50B59A18A0002A02A8EF18B298E0E4B71B8CF926A832DB361E35A697FFAA66037B57CB7EE3D56C8C8B4B99677E14FF9CC4FE51C7B977E4446672DA8';
wwv_flow_imp.g_varchar2_table(85) := '7C212B5411400054C5317131DE8701BD0F05F27A1781624166DEF34389150BA0298340299E90F5CBCF1689F398E9315CCC4F1953B3E590B15B001FFF1591785D45EB38581F0104405F261356C43B01DBC6937EE65669FACB1ACBD20CA7DCA1EDE64B66C1';
wwv_flow_imp.g_varchar2_table(86) := '91E16CAE7457E6A7FC604666EF257D4B4E2A7F0147AA258000A88D66FCC2BCCF0478EF04F0C1C02D8C1ABA5E92F6A77E6F619AC197DCBDE77132D2C1B325B626CFFC943F877CFDAF7C56DA8F4400B42734417DDE57043D0928E5B3E249C1D6770CB4B82D';
wwv_flow_imp.g_varchar2_table(87) := 'E3D2F934F7E4E8F8F4FFF88C989FC9E7874FFF4FCEC8A62310009BD2A2D6090934BD70BFB4ACE2C38013411A58B44286E61DC0246D8300F333F958303F9333B2E90804C0A6B4A8756202C5BC74DEF46D89678720B50D02638F6F5D71011FDE1A6F3A989F';
wwv_flow_imp.g_varchar2_table(88) := '09AF1BE6277A3F561080E865EA7447CD6BEE91E6D5B738CD60BCE6B977FBE463C1FC8CCF88F9997C7E6C3B0201B02D31EA9D9440C71FBE2389A19E498F73E98042539B741D7DBE4B2D1BF7CAFCBC171DF3633C4EAA172200AAE3A13813028DAF3E21AD8F';
wwv_flow_imp.g_varchar2_table(89) := '5E6BB234B26BFA177F508677D83BB2FDF9D918F3F35E9ACC8F9F13A6E75C08809E2CA8C44702531FBC5AEAD73FE7E319ED3DD5E8CCDDA4777FEEFB5F4982CCCF165ACC4F259363D7B108805D79516D990412835DD27EFBBF49CCFB7AA4C32FEFAE6DDDEF';
wwv_flow_imp.g_varchar2_table(90) := 'FF8C149A3B1CA65079EBCCCF6666CC4FE5B363D30A04C0A6B4A8B522028D2F3D22AD7FBABEA235513BB8FF7D2B6578E725516B2B907E981F11E62790510B6D13042034F46C1C04014F00BC1FE42EBEBC5FFCDE0F705EE604981FE6C77C7AF4AF4400F467';
wwv_flow_imp.g_varchar2_table(91) := '4485551248DFF313496D7AB1CAB3D8B53CDB394732CBCFB2AB68A5D5323F4A83A1ACAA0920005523E404DA09C44706A4ED9E2B2531B0497BA9BED4E7DDAEB567F9C7A4D8D0E2CBF95C3F09F3E3FA0444B77F0420BAD9D2D95604127D1BA4EDBEAB243ED2';
wwv_flow_imp.g_varchar2_table(92) := '1F692EC58656E939F0A35298323DD27D06DD1CF3133471F60B820002100465F65041A02EB35ED20FFC3CB212E0FDF2CF2C3B5DF2E9992A7847AD08E6276A89D20F02C00C3845C0FB975CFAA15F46EECF01DEDBFE99A5A7F02FFF1A4F33F35363C09C3E50';
wwv_flow_imp.g_varchar2_table(93) := '020840A0B8D94C0301EF6FBA531EB926321F0CF43EF0D7B7E464FEE61FD070313F0181669B9A1340006A8E980DB41288C257BCF8AA5F78D3C5FC84C79E9DFD218000F8C391B3584AC0BB4740CB53375A77C740EF0E6D037B1ECB4D7E429E3BE627E400D8';
wwv_flow_imp.g_varchar2_table(94) := 'BE2A02084055F8581C0502DE6D5F5B56DD6CCDB303BC7BB30F2C3A86DBFB2A193EE64749109451310104A062642C882A01EF29704DCFFC51EDA384BD47B20E2D389CA7FA291D40E647693094352E010480E180C0BB0834AFB9471A5FB857E2D921156C8A';
wwv_flow_imp.g_varchar2_table(95) := 'A926199E77900CCE5FAEA21E8A989800F3C384D8420001B02529EA0C9640312F4D6B1F1E7B8E40587710F4BEDAE77DC86F68EE7E22F1BA60FB67B7EA08303FD5F16375200410804030B389CD04EADF5823F5EB9E92FAF5AB6BFE6141EFC37DA33317CAE8';
wwv_flow_imp.g_varchar2_table(96) := 'EC3D6574C67C9BB151FB9B04981F46412B0104406B32D4A58F40312FF56F3C2FA98D2F486AE34BBEBD33E0FD4B3F3B6D67C94E9B27A33376E55FFBFA92F7A722E6C71F8E9CC5370208806F2839916B04E2238392CCBC26757D1BC664203E9491C448BFC4';
wwv_flow_imp.g_varchar2_table(97) := 'B243122B6425562C8C2129C513524AA4A4946A924243AB149BD2E2FDD2CF4F992EB9F4F6526C68760D1DFD8A08F3C318844D0001083B01F6870004200001088440000108013A5B42000210800004C2268000849D00FB430002108000044220800084009D';
wwv_flow_imp.g_varchar2_table(98) := '2D2100010840000261134000C24E80FD21000108400002211040004280CE9610800004200081B00920006127C0FE10800004200081100820002140674B08400002108040D8041080B013607F084000021080400804108010A0B325042000010840206C02';
wwv_flow_imp.g_varchar2_table(99) := '0840D809B03F042000010840200402084008D0D9120210800004201036010420EC04D81F021080000420100201042004E86C09010840000210089B0002107602EC0F01084000021008810002100274B684000420000108844D0001083B01F6B78A40AC90';
wwv_flow_imp.g_varchar2_table(100) := '97BA814D92F0FE673023F161EF7FFA25313A20B1DC88C47323121B1DD8664FA5FA1629261BA4946C9082F77F37B64AB1312D85E6B4145A3A25DFD229A5449D553C28B63202CC4F65BC38BAB6041080DAF2E5EC9613A8CBBC2EC9EE7592CCAC9364CFEB92';
wwv_flow_imp.g_varchar2_table(101) := 'E8DF58D38E0AADD324D7364B72E9D9926B9F2DF9F4AC9AEEC7C96B4B80F9A92D5FCE5E1D0104A03A7EAC8E1881C470BFA4FEF29CA436AC95D4A61725961D0AB5C352AA49B29D73243B7DAE64B7DB4D0A8DADA1D6C3E61313607E98109B08200036A545AD';
wwv_flow_imp.g_varchar2_table(102) := '3521101FE99786D79E96D4EBAB25D5F5724DF6F0EBA4D98E9D243B6BA18C6CBF87141B9001BFB856731EE6A71A7AAC0D93000210267DF60E9540FDFAD5D2F0CA9352BFFE9950EB30DD7C74E60219D9712F199DB9D0F414ACAB8200F353053C96AA208000';
wwv_flow_imp.g_varchar2_table(103) := 'A88881228222102B64A571ED43D2F8D2239218EC096ADB9AEE53686E93E19D97C8F09CA552AA4BD5742FD74FCEFCB83E01D1EA1F0188569E74330E81F8E8A034BE709F34AD7D40BC4F6247F1554A246568EEFE323CEF4029D63747B1C5D07A627E4243CF';
wwv_flow_imp.g_varchar2_table(104) := 'C635248000D4102EA70E9F40AC9093E6357749D39A7B454A85F00B0AA282789D0CCD3B5006773B443C29E0654E80F9617ECCA747FF4A04407F46546848A071ED83D2FCEC1D120FF993FC86E557BDAC986A92C1DD0F93E1B9FB577D2E174FC0FC303F519F';
wwv_flow_imp.g_varchar2_table(105) := '7B0420EA093BD85F6AE38BD2B2FA56A9EB59E760F7EF6D39DF365B06161E29D96973E0510601E6E79D90989F3286C6D24310004B83A3ECF71288958AD2BCEA6669FAF303E0D90681A15D96C9E0A263A4148BC3671B04989F89C782F989DE658300442F53';
wwv_flow_imp.g_varchar2_table(106) := '273B4A6EF8B3B43EF57BA9EBDFE464FFE5369D6FED94FE3D8F93DCF45DCA5DE2C471CC4F7931333FE571B2E52804C096A4A8735C02CDCFDD21CDCFFC11421510185C70B80CEE7658052BA27B28F35379B6CC4FE5CC34AE400034A6424D651188658765CA';
wwv_flow_imp.g_varchar2_table(107) := 'E3BFB5F6463E653559C383BC1B09F5ED738294528D35DC45EFA9999FEAB2717D7EAAA3A7633502A02307AAA89040B2679D4C79F437634FE5E3654EA0D0D2217D8B3F28B9B6D9E627B17025F3E34F68AECE8F3FF4C23F0B02107E0654502181FAD79E96A9';
wwv_flow_imp.g_varchar2_table(108) := '8FFCDA9DEFF557C8A7E2C36309E95D72928C6EBF47C54B6D5CC0FCF89C9A63F3E333BD504F8700848A9FCD2B25D0F8E2C3D2FAC4EF2A5DC6F16510E8DFFB03323C67BF328EB4F710E6A776D9B9303FB5A317CE99118070B8B3AB0181A617EE9596557F30';
wwv_flow_imp.g_varchar2_table(109) := '58C99272090C2C3A5A86E61D54EEE1561DC7FCD43EAE28CF4FEDE905BF0302103C73763420D0B4E6EEB19BFBF0AA3D01EFA64143F30FAEFD4601EEC0FC04073B8AF3131CBD6077420082E5CD6E06049A9EBF5B5A9EE697BF013AE325037B1C2943BB4643';
wwv_flow_imp.g_varchar2_table(110) := '02981FE331305E18A5F9318660C14204C082905C2EB169ED43D2F2E40D2E2308ADF781BD8E97A1B94B43DBDF8F8D991F3F289A9D230AF363D6B93DAB10007BB272AED286D756C994877FE55CDF9A1AEEDBEF4332B2FD224D25955D0BF35336AA9A1D68F3';
wwv_flow_imp.g_varchar2_table(111) := 'FCD40C8AA21323008AC2A0942D04925DAF48DBDD3F028902023D07FFB5E43A76545049F925303FE5B3AAF59136CE4FAD9968393F02A02509EA789B407C6440DAEEBA42124319A8282050684A4BCF219F9062438B826A262F81F9999C519047D8363F41B2';
wwv_flow_imp.g_varchar2_table(112) := '097B2F0420EC04D8FF3D04D2F7FF54527F7901328A0864B79B279903CE5454D1F8A5303FFA62B2697EF4D1AB5D450840EDD872660302DE57FDBCAF6CF1D247C0FB6AA0F7152FCD2FE6476F3A36CC8F5E7AB5A90C01A80D57CE6A40A07EFD7332F5C1AB0D';
wwv_flow_imp.g_varchar2_table(113) := '56B2242802BDFB9F26A333770B6ABB8AF6617E2AC215CAC19AE7271420216F8A00841C00DB6F26102B64A5E3B6CB24CEDFFD558F44B1292D5D477C564A8994AA3A991F55718C5B8CD6F9B1839EFF552200FE33E58C06045A1FFF6F697CF95183952C099A';
wwv_flow_imp.g_varchar2_table(114) := 'C0F04E8BA57F9FFF15F4B613EEC7FCA88A63C26234CE8F3DF4FCAD1401F0972767332050FFC67332F501DEFA374017DA92DE65A7C9E80C1D7F0A607E421B03E38D35CD8F711311588800442044DB5B68BFFD32A9EBDB607B1B4ED59F9F325DBADFFF5915';
wwv_flow_imp.g_varchar2_table(115) := '3D333F2A62A8A8084DF35351E1113B18018858A0B6B5C3435A6C4B6C4BBD1A1EFAC2FC303FF61208BF720420FC0C9CAD203E3A201D7FB8446285BCB30C6C6EBC94A893AEA3FF468AF5E1DC2088F9B1797A44C29E1FBBE9F9533D02E00F47CE6240A0E5A9';
wwv_flow_imp.g_varchar2_table(116) := '1BA5E9CF0F18AC6489160243BB2C93813D8F0DA51CE62714ECBE6E1AE6FCF8DA88A52743002C0DCEF6B213833DD271CB776C6F83FA45A4EBA8F3A5D0DC16280BE62750DC35DD2C8CF9A96943169D1C01B028AC2895DAFAC40DD2F8E243516AC9D95E86E7';
wwv_flow_imp.g_varchar2_table(117) := 'EE2FFD7B1D1768FFCC4FA0B86BBA5918F353D3862C3A39026051585129353E32289D37FD4B54DAA10F11D9B4E28B526C680E8405F31308E6403709727E026D4CF9660880F280A2585EF3B37F94E667EF88626BCEF634B8FB6132B8FBE181F4CFFC048239';
wwv_flow_imp.g_varchar2_table(118) := 'D04D829C9F401B53BE1902A03CA02896D779D3C5E23DB295577408788F0ADEB4E20B8134C4FC048239D04D829C9F401B53BE1902A03CA0A895D7F0EA9332E5D15F47AD2DFA1191BEC527C9C80E7BD59405F35353BCA19E3C88F909B541859B23000A4389';
wwv_flow_imp.g_varchar2_table(119) := '7249E9FB7E2AA90D2F44B945677BCB4E9F279903CFAC69FFCC4F4DF1867AF220E627D406156E8E00280C25AA252506BBA5E396EF46B53DFA1AFB4AE0E7A4D0DC5E1316CC4F4DB0AA3A692DE74755A34A8A41009404E14219CD6BEE91E6D5B7B8D0AAB33D';
wwv_flow_imp.g_varchar2_table(120) := '0E2E3C4A06E72FAF49FFCC4F4DB0AA3A692DE74755A34A8A41009404E142196D775E21C99E752EB4EA6C8FB9B6D9D273E8276AD23FF35313ACAA4E5ACBF951D5A892621000254144BD0CDEBE8D7AC25BFAABC5DBB8CC0FF3E30E81E03A45008263EDF44E';
wwv_flow_imp.g_varchar2_table(121) := '8D6B1F92D6276F709A812BCDF7EF75BC0CCF5DEA6BBBCC8FAF38559FAC16F3A3BAE1108B43004284EFD2D6531FFC85D4AF7FD6A5969DED7574E6EED2BBFFA9BEF6CFFCF88A53F5C96A313FAA1B0EB138042044F82E6D3DED77DF90583EEB52CBCEF65AAA';
wwv_flow_imp.g_varchar2_table(122) := '4BC9C60F7CD5D7FE991F5F71AA3E592DE64775C3211687008408DF95AD93DDAF4ADB5D3F74A55DFA14919E43CE965CFB0EBEB0607E7CC168D549FC9C1FAB1A0FB858042060E02E6ED7F4C27DD2B2EA66175B77B6E78145C7C8D0BC037DE99FF9F105A355';
wwv_flow_imp.g_varchar2_table(123) := '27F1737EAC6A3CE06211808081BBB8DD94877F250DAFAD72B175677B1ED97E91F4EDF7215FFA677E7CC168D549FC9C1FAB1A0FB858042060E02E6ED771EBA59218D8E462EBCEF65C68E994AE23CFF5A57FE6C7178C569DC4CFF9B1AAF1808B45000206EE';
wwv_flow_imp.g_varchar2_table(124) := 'DC76859C4CBFFEEBCEB54DC3221B567E4D2491AC0E05F3531D3F8B57FB323F16F71F44E9084010941DDEA32EF3BAB4DFF17D8709B8DB7AF7619F927C7A565500989FAAF059BDD88FF9B11A4000C52300014076798BFA754FC9D447AE711981B3BDF72E39';
wwv_flow_imp.g_varchar2_table(125) := '594667EF5955FFCC4F55F8AC5EECC7FC580D2080E211800020BBBC45D39ABBA565F5AD2E2370B6F7818547CAD0FC83ABEA9FF9A90A9FD58BFD981FAB0104503C0210006497B768FDD3F5D2F8D2232E2370B6F7E19D9748FFFB5656D53FF353153EAB17FB';
wwv_flow_imp.g_varchar2_table(126) := '313F560308A078042000C82E6F917EE06A49BDF19CCB089CED3D3B6337C92C3BADAAFE999FAAF059BDD88FF9B11A4000C52300014076790B1EE1EA6EFA7E3CDA95F9617EDC2550FBCE1180DA33767A878E5BFFBF2406BA9C66E06AF385960EE93AF2BCAA';
wwv_flow_imp.g_varchar2_table(127) := 'DA677EAAC267F5623FE6C76A0001148F000400D9E52D3A6FFC17898F0EBA8CC0D9DE8BF5CDB2E9D82F56D53FF353153EAB17FB313F560308A078042000C82E6F31FDBABF77B97DE77BDF70E2FFAD8A01F353153EEB17573B3FD603A8710308408D01BB7E';
wwv_flow_imp.g_varchar2_table(128) := '7A7E80BB3D01D5FE00677E981FB709D4B67B04A0B67C9D3F3B3FC0DD1E0104C0EDFCABEDBEDAF9A976FFA8AF4700A29E30FD41000210800004B6410001602C200001084000020E1240001C0C9D96210001084000020800330001084000021070900002E0';
wwv_flow_imp.g_varchar2_table(129) := '60E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D4300021080000410006600021080000420E0200104C0C1D069190210800004208000300310800004200001070920';
wwv_flow_imp.g_varchar2_table(130) := '000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D33204200001084000016006200001084000020E1240001C0C9D9621000108400002080033000108400002107090';
wwv_flow_imp.g_varchar2_table(131) := '0002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D4300021080000410006600021080000420E0200104C0C1D069190210800004208000300310800004200001';
wwv_flow_imp.g_varchar2_table(132) := '070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D33204200001084000016006200001084000020E1240001C0C9D9621000108400002080033000108400002';
wwv_flow_imp.g_varchar2_table(133) := '1070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D4300021080000410006600021080000420E0200104C0C1D069190210800004208000300310800004';
wwv_flow_imp.g_varchar2_table(134) := '200001070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D33204200001084000016006200001084000020E1240001C0C9D9621000108400002080033000108';
wwv_flow_imp.g_varchar2_table(135) := '4000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D4300021080000410006600021080000420E0200104C0C1D069190210800004208000300310';
wwv_flow_imp.g_varchar2_table(136) := '800004200001070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D33204200001084000016006200001084000020E1240001C0C9D9621000108400002080033';
wwv_flow_imp.g_varchar2_table(137) := '0001084000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D4300021080000410006600021080000420E0200104C0C1D069190210800004208000';
wwv_flow_imp.g_varchar2_table(138) := '300310800004200001070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D33204200001084000016006200001084000020E1240001C0C9D9621000108400002';
wwv_flow_imp.g_varchar2_table(139) := '0800330001084000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24800038183A2D4300021080000410006600021080000420E0200104C0C1D069190210800004';
wwv_flow_imp.g_varchar2_table(140) := '208000300310800004200001070920000E864ECB1080000420000104801980000420000108384800017030745A860004200001082000CC00042000010840C04102088083A1D33204200001084000016006200001084000020E1240001C0C9D9621000108';
wwv_flow_imp.g_varchar2_table(141) := '4000020800330001084000021070900002E060E8B40C0108400002104000980108400002108080830410000743A7650840000210800002C00C400002108000041C24F03FE16D6C96BC7CD84C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(560409270625191753)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/gc_apxcolor_js
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '76617220617078436F6C6F72203D207B0A202020207061727365496E744F7244656661756C743A2066756E6374696F6E202820737472696E672029207B0A202020202020202076617220726573756C74203D207061727365466C6F61742820737472696E';
wwv_flow_imp.g_varchar2_table(2) := '6720293B0A202020202020202072657475726E2069734E614E2820726573756C742029203F2030203A20726573756C743B0A202020207D2C0A202020207061727365466C6F61744F7244656661756C743A2066756E6374696F6E202820737472696E6720';
wwv_flow_imp.g_varchar2_table(3) := '29207B0A202020202020202076617220726573756C74203D207061727365466C6F61742820737472696E6720293B0A202020202020202072657475726E2069734E614E2820726573756C742029203F2030203A20726573756C743B0A202020207D2C0A20';
wwv_flow_imp.g_varchar2_table(4) := '2020207061727365524742413A2066756E6374696F6E202820737472696E672029207B0A20202020202020207661722072676261203D207B0A202020202020202020202020723A20302C0A202020202020202020202020673A20302C0A20202020202020';
wwv_flow_imp.g_varchar2_table(5) := '2020202020623A20302C0A202020202020202020202020613A20300A20202020202020207D3B0A2020202020202020737472696E67203D20737472696E672E7265706C61636528202F5C732F672C20222220293B0A2020202020202020737472696E6720';
wwv_flow_imp.g_varchar2_table(6) := '3D20737472696E672E7265706C61636528202272676261222C20222220293B0A2020202020202020737472696E67203D20737472696E672E7265706C616365282022726762222C20222220293B0A2020202020202020737472696E67203D20737472696E';
wwv_flow_imp.g_varchar2_table(7) := '672E7265706C61636528202228222C20222220293B0A2020202020202020737472696E67203D20737472696E672E7265706C61636528202229222C20222220293B0A20202020202020207661722076616C756573203D20737472696E672E73706C697428';
wwv_flow_imp.g_varchar2_table(8) := '20222C2220293B0A2020202020202020726762612E72203D20746869732E7061727365496E744F7244656661756C74282076616C7565735B305D2C20313020293B0A2020202020202020726762612E67203D20746869732E7061727365496E744F724465';
wwv_flow_imp.g_varchar2_table(9) := '6661756C74282076616C7565735B315D2C20313020293B0A2020202020202020726762612E62203D20746869732E7061727365496E744F7244656661756C74282076616C7565735B325D2C20313020293B0A2020202020202020726762612E61203D2074';
wwv_flow_imp.g_varchar2_table(10) := '6869732E7061727365466C6F61744F7244656661756C74282076616C7565735B335D20293B0A202020202020202072657475726E20726762613B0A202020207D2C0A202020207061727365486578546F526762614F7244656661756C743A2066756E6374';
wwv_flow_imp.g_varchar2_table(11) := '696F6E2028206865782029207B0A2020202020202020686578203D20686578207C7C202223303030303030223B0A2020202020202020686578203D207061727365496E742820282028206865782E696E6465784F6628202723272029203E202D31202920';
wwv_flow_imp.g_varchar2_table(12) := '3F206865782E737562737472696E672820312029203A2068657820292C20313620293B0A202020202020202072657475726E207B0A202020202020202020202020723A20686578203E3E2031362C0A202020202020202020202020673A20282068657820';
wwv_flow_imp.g_varchar2_table(13) := '262030783030464630302029203E3E20382C0A202020202020202020202020623A202820686578202620307830303030464620292C0A202020202020202020202020613A20310A20202020202020207D3B0A202020207D2C0A2020202067657450657263';
wwv_flow_imp.g_varchar2_table(14) := '65697665644C756D696E616E6365203A2066756E6374696F6E2820726762436F6C6F722029207B0A2020202020202020766172206C756D696E616E6365203D202820726762436F6C6F722E72202A20323939202B20726762436F6C6F722E67202A203538';
wwv_flow_imp.g_varchar2_table(15) := '37202B20726762436F6C6F722E62202A203131342029202F20313030303B0A202020202020202072657475726E206C756D696E616E63653B0A202020207D2C0A20202020676574436F6E7472617374436F6C6F723A2066756E6374696F6E202820636F6C';
wwv_flow_imp.g_varchar2_table(16) := '6F7220297B0A202020202020202076617220726762203D20746869732E7061727365524742412820636F6C6F7220293B0A202020202020202072657475726E20746869732E6765745065726365697665644C756D696E616E636528207267622029203E3D';
wwv_flow_imp.g_varchar2_table(17) := '20313238203F20222332363236323622203A20227768697465223B0A202020207D0A7D3B';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(668773785073738284)
,p_file_name=>'gc/apxColor.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/group_cal_logo2_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C2000000200802000000CF0F30EF0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000013274944415478DAEC5C09509457B6EE8DAD4159C44485C8A26234EA';
wwv_flow_imp.g_varchar2_table(2) := 'D3E8C8D379088CD1A766229A441378866826EAC46D628C5A4FC5A98ADBBC31C6B134498D1535A98ACB1835A899104191006A1415514119C1000A12C4465AA1A1A1BBDFC77FE8E3E5FFBB91389A2289B728FCFBF45DCE39F73BDBBD3FAA6D369B4A6A3535';
wwv_flow_imp.g_varchar2_table(3) := '35172E5CD06834780671E0C0816E6E6EAAB6B5C6C6C673E7CE59AD56B55A8DE7BE7DFB7A7B7BAB1EB75F4DD3F1537E7EFE912347C2C2C280A4F3E7CFFBFBFBF7E8D1A38DB3180C863D7BF70EFDCD6F80A1E29292BABABAE8E8E8C7CAFDF534754E4E4E79';
wwv_flow_imp.g_varchar2_table(4) := '79B95EAFAFA8A8F0F1F3FB5D5414A87BF7EDF37077F7F2F2B2582CF79D02B043B7A2E2E237A64DC3C73367CF5ECACB0B0D0DBD7BF76EE7CE9D070D1AF458CBBF7C6F74212BEBB7CB97C329351A8DE6CD9BF3AF5E5569B5AE00D6C2859DBCBDCD52800394';
wwv_flow_imp.g_varchar2_table(5) := '4C164B9DCD6646DC524CA155A96ED7D77B2C5E7CE5DA354B7D7D555959CDCC99461717B5CD96BD72E56318FD2A60045F12A0D5DAEAEAAAEBEAF26B6A6E1A0C702F6693C9BFBEFE09B3B95EA5026EAC365BA35A6D6A6C3459AD0013A753CD3052ABAD3535';
wwv_flow_imp.g_varchar2_table(6) := '0693A9D260B0621EA3B1435D9DB7D5EAEAEE7E43AD76B6B0CD3E0F7EABEDED67A73E9BBD11F30F2C85A8D29F400F0F7D391D66314BB33668B5469B4D872866B3555BADC08D1978B25AF11594042469351A381EB5D56A6E8923101B55AABB2A1546A1DB1D';
wwv_flow_imp.g_varchar2_table(7) := 'F4C14089596732A023F22764F4555555F8E8EEEEDEBD7BF7A0A020AD564B39FECF024008E508DCD9D9D92693096A4455111818D8AD5B3748F1A3F606DA282C2CB458A04575C78E1DBB76EDFA489104CE6FDCB861341AF1A8D5EA9001FFFB3AD7111E0194';
wwv_flow_imp.g_varchar2_table(8) := '8E1E1E0DDBB65574ECD8645C0683975E8F05B51280E090346A35BAEA351AC887354D12BC982D7757D73BFBF79F3B754A6DB198EBEAFAE87456279CA133D2F0C4C4C44387BE416D287E85EC3E2EEE7F7AF6EC896D68FF18027476ECD89E9E9EDED0D0207E';
wwv_flow_imp.g_varchar2_table(9) := '151919151717D7A14387B64301705CB3663526C4737878F8DCB9F31EA90680DADDBBFF71F2E4493C7B7878FCFDEF9B1F0E8C300734E1EBE636F9E245ABC5D204231717B39B1B9ED412C834842409711E8880D0A34AC5D10D5FB9BAB80CFDD7BFAC7979CD';
wwv_flow_imp.g_varchar2_table(10) := '4E52AFB73857D9D6AD5B525353955F5DBE7C79D5AA95AB56AD0E080868E73E0996B069D3C63367CE28BF3A7A34F5D6ADCA458B16BBB8B8B41D9456A949FAB1DA9C78F187EA479B9793E2C743584EC286F40F266BF4F0B074E8D0D8B163A3BB3B0142237D';
wwv_flow_imp.g_varchar2_table(11) := '450F14F861267AADD643A37117F20070647173B37979E1C7AAD75B5BF5DE478E1CA17C02E5616C6CDC5B6FCD1A3264085110E9B66CF9C4511EDF8E1AD8BB78F1E2E9D3A78967446448316BD6EC279E788228287EAF5EBDFAA3B687732C691F7ECAA4EEE1';
wwv_flow_imp.g_varchar2_table(12) := '2C27C1480A554DA0B0C72CE9111FA47FF0ABE503229D5EA7835B7297BAA8F8C79EB3353F2BBC3A98861FB2DADBCB2F4F7AFEF9E7232222E0C6911010312F2FAFBABAFA515BE4BF09A3E3C78FC9A4183E7CF898316399989B9BFBA38CC17AAFD97E12116C';
wwv_flow_imp.g_varchar2_table(13) := 'BCDE433B7E7431186CB5B52AC9106C926BA1225F23D568F888D25D23D1D5D20F3DE8ED7E08D59C32845137554B2EC134CC94591F3C78B04ED794E363B9D0D0D06BD7AE519F9B372BFCFCFC9A956AAFE3B8A62378532010ED49A36946BE2C4C34795029D5';
wwv_flow_imp.g_varchar2_table(14) := 'E021CD46A2D1509A2C2EC11D284D7698DFA0435151B14C0A10118B996840C1DB1222CC2AAF2E4ECEDC4AFA6EE131782CF1436365DFCAF8D7D89B380F4B2AF5B917D494CBB1DE784551ABCC0CE8D4130F3A95AB6BE1D2A5E686060BED87A838C9FDA09795';
wwv_flow_imp.g_varchar2_table(15) := '2A73E1C0912672953C530332058511616007BD5EE3E525DB80D2D2EB74A4E9EAEA0AAC107FE0233AFA774012D601CFFEFE9D41BC75EB16522549F5EAD75F7FBDA4A4243DFDDB2E5DBA2C58F02E46A144FAEAABAF00CA929262B3D98C3A2F242418FEE0C9';
wwv_flow_imp.g_varchar2_table(16) := '279F247C1C3C78E0E8D134A9CA54AF58B1D2D3D31385E1B66D5B8973C4A05EBD7A819365CB964AB9AD3A26667C75B53129E9EB9B376F22CD9F38716278F87F3A4C75310380CE5274EAD489A4C0D2919191E0179F82838319EBE7CF9F3F70607F65652544';
wwv_flow_imp.g_varchar2_table(17) := '401D875AAC57AFB0175E78A173E7CEBCD316A9919FE055205772F2A14B972E1517175FBF7E5D2A6683274C9810121202C6D0212B2B6BE7CE1D24D19C3973D2D333CE9C398DE217A221CED285044D9E9191011E4A4BCB8282BA8F1A359A97E3E3652A7D0E';
wwv_flow_imp.g_varchar2_table(18) := '1F4E494B4B3318AA2A2B6F62391F1F9F0103068C1D3B0E99388993929292949484EE3E3EBE3366CCD8B56B27B43A7FFE3B3A9D9B9BDFE2C55AC9A3A8ED3FE4A6B452EA0D46E86ACD267CABB553CCF66F1DB60BBB77CB28F5F5F504615F5F5FF11CBC7FFF';
wwv_flow_imp.g_varchar2_table(19) := 'FEFDFAF5130D0B3D91485107A880F259A81EC351E22D59F2BFE4BDA80173D9D96721E4EAD56B20BFB4D39557AF1672468CDF77EEDCE109A94894BCE3F726539327FEF2CB2F8B8A8A38D95FBB76ED9A357FE19D90B5DADA5A9282F44BB60B88CF9933573C';
wwv_flow_imp.g_varchar2_table(20) := '06C3F3B163C7D6AD7B9F8D1E68C06F04EEB4B4A3EBD67D80748ABD88E88D0843B0A2ECEC6C5EB4486AC78E652E5B964087BAD5D5B759A20D1B3630FF67CF9EBD72E5CAFAF57FA3740D937CF0C13A160DCDDFDF5FE68D8027D8D8C18307793998284D85E1';
wwv_flow_imp.g_varchar2_table(21) := '0909CBDD90FBDA6CD0336915DBF7D7BFFE1FF5C1249AA6AABEBA5A7BF7AEA6AA4A535DAD311AD5D5D56E506D45C58553A7723232CE6566E6E6E434D4D66AE0151B1A005AC2109CC18AF7DE5B9590B066CD1A9885E344AEE55D0A25D1A4323136619B2D52';
wwv_flow_imp.g_varchar2_table(22) := 'F1204BFA387E637E41D1B6C4C44418287D8475A2C086B3C14724552803B99B22FCDFA308879FCD14EC417C7CFC9B6FBE8908858FD8C56FBE4972963A10B7B26F291462389D7EE123BA25267E29396B6B60E0531B376E9A3B772ECD0F9F01B3E619985B3E';
wwv_flow_imp.g_varchar2_table(23) := '924D4F4F87E51071CC98310B172E0C0A0A22C63EFEF8238A50E8CB12E9F59E4B972E85F3A08F5005EC8AA6858B659DCF9CF9C7C99327575454C896437F6088885151515BB76E8B8F7F9D3E02467979B93275014F050505AC04DDBD98673F308416EED6D4';
wwv_flow_imp.g_varchar2_table(24) := '9CBF7001BC925737DEB983208224807C29D96E7272B2B7B737946532183EFDF453D4B703070E6C3D118311B317C546D0D25F7FFDCFCB97F3396662C24993260706065238E7B1111123C2C3C37BF7EE4D264E5F3DFBECB353A6BC8621F02E7BF6EC21EB41';
wwv_flow_imp.g_varchar2_table(25) := '90829380441639885BF870593441481D3F3E060FE7CEE59C38711C0F28C79C65FA7CE205D8B47661A95643D7347F78F85008854A02BB055721997BA1920D7612F03A44090808FCC31FDE94D0A95BB1E23D7269700388BCA28A604E83070F7177F7E06388';
wwv_flow_imp.g_varchar2_table(26) := '9A9A5ADAD9C2C2ABD46DF8F0DF8E1E3D1A1460947C390FBF71E3061F8045464621DF0076513513A5A0A070C080FFE0435722A2447DF5D5D85EBD7A2286EA5A569BCD21A6BCBC1CF0443F0A07683FFCF0030008BF4DE1E6D4A953D82A12988CEFE8D1A3F7';
wwv_flow_imp.g_varchar2_table(27) := '8591C804769986C36B6664A48BDDA2A2A2A171514818D9BBEFBE0BA46263E0CF900F91BA83834328497FEAA9EE1CEC917EF5ECD90B0A9481465C5DB97FC86CC866F040142449CE60C4F3343636B47E69BD77EF3EE890221D1EF2F3F34DA63A1A5E5F6F76';
wwv_flow_imp.g_varchar2_table(28) := '0623D0BFFFFE7BA274EBD695D080BC8AD785EFECD1A3872891AFAF0FF877777753CA5856564A0FD83E2A1DBA74E94A11903A83D2B76FDF03070E721A7EFBF66DE08CA7A2B84FA91B1367CD9A858C9626D439BB67015694390DE5F9E4BD015E1E82E7B694';
wwv_flow_imp.g_varchar2_table(29) := '8E88AFDC0D9E896A0AD291C31B1FA6F7E9D387EF49E06C18DC9C02437DDCD968BCC34587F294CF61A54DBC91E0301EA200AFCE04419F5AA9B6458869E5AE8A5A6AEA11B49C9C1C855159956CD8A382CD6834120519FABC7973311F202BC86894C9482B53';
wwv_flow_imp.g_varchar2_table(30) := '981399E1348ED545DB27CB8D9AA28AC9B467CF179999C760A5CA0302A50EFBF71F40367C2FA8B1BDD2D428402889E1C1000AD6A69C001A472E525656460E8940D69677DCC89D1008608BC4FD1B6FBC0187BC6BD72E0A250E9D87784B4589141F51290316';
wwv_flow_imp.g_varchar2_table(31) := '6DB068374A5FE8C80DB0A6ACB22AC6A137B27B947A110AC89DC9CC3C3DF5F0945805B5CC279F7CD2E28845A7230D88989679239A9928D55273185565715FE62909A662707775756156451929A35FBC7811B26F9E0718602361C48B3E1E3BCE9BD2C21B51';
wwv_flow_imp.g_varchar2_table(32) := 'CE4BC004A3228B900A14CAFCA956C2B71C4DF1A014D561D3EBF5C82EA9CAC00C0016E2179C2DCA60877B2CB306F204424CE14CAB518CD93281858CDF298CEAEA4C44319B1BEEFB9615A440DD477BCC53C1F0DE7AEB8FF43C64C890B56BDF4768D8B2650B';
wwv_flow_imp.g_varchar2_table(33) := 'CD366CD83014C6C826DF79E79DDCDC8BCE60C41B466F7151FE3775EA34CE4AC9F69063F1B9575B02B73D36D5393415F4CC4421959B4BDFBEF65AFC2BAFBC02B88F19F3DF32FD2B8DF31E8CC4DC88AB27A8499493E1CFB7167495C81A24E4F224CE524E20';
wwv_flow_imp.g_varchar2_table(34) := '0639160D41F44576C6B5B1C388A30C1640093448064D91918E91B8B39797A7C310263A7CD9792E8730AE2525AC783A9302053372520A6A90825E1335180C3C3FC6527EC306FDD24B2F53D6C58C89B6C16C1051F2679E646FE8FFCC33CF60532123262465';
wwv_flow_imp.g_varchar2_table(35) := '8807AAAD2B8D6A58B676FBBD729D2C8616145C210A9CD09429531067C0B952FF0E576CBE0C51DEC003EC647026A92112C35B0001145020038A26D0CDF606D54744448836E12CE50C0B0BB3D85B5A5A1A04A367C9CB3637D1B0440AEF62A74E9D888E284E';
wwv_flow_imp.g_varchar2_table(36) := '8295969671CF6EDD0228871387D39DBC7242EE453530E878200A8700A5147DFB3EC353EDDF9F080D4090ACAC534C0C09693A7E84029902BF4BAC22E1659185BDB7D889CD27C89450A3A12E23FE519FCE9C396366539B41FE4CA92225A5E994D8D59528E5';
wwv_flow_imp.g_varchar2_table(37) := 'E53748463A3E157960E5403AF27C9462CBD425CEEF004636A1012B3E3E3EC1C1C1B0865AA9C1CE505E7A7979910F80CA468E1C09BDE02B68105602CC4546462A3D877203C68E1DC77CA09EDCB061C3EEDDBB3FFEF8A3ECEC6C81BF16114712C32AC268D0';
wwv_flow_imp.g_varchar2_table(38) := 'A067899E959575E9D2253886949464A22023A19734E8D8861AB22E04653A2670B604D21A6406D7AE959C3CF99D1D0AA10ECF1E414431CC0A05FFCB97276CDEBCF9C30F3FE4D9860D1B8E6E0C053454B2E021292909553051B85010D96018A138250AB6F3';
wwv_flow_imp.g_varchar2_table(39) := '8B2FBE00B8F7EDDB6BC7B72B70EC6C5385A99A6184AD240AEAFCD2D2D2ECECB390541C883EBEBE7EF4112E03EAC2D67FFEF9E74AFD533454DAB6CEE1352180820AF0DB6FBFA57415CBC08B00313412EAF0F3F31B3468506A6A2AF60C363762C408A00A7A';
wwv_flow_imp.g_varchar2_table(40) := 'E170E630AE81D8BB77EF575F8DDDB1633B2D840CD461DC6825A8C156626363811BC4592C3D6DDA5471E4F4E9D3C9E13FFDF4D33CFCCF52A3C3247B1A6E52944856D954A3468D72082348111A1A3A75EA54CA9D31F0F0E1C36287D1A347434C7443B00B08';
wwv_flow_imp.g_varchar2_table(41) := '08A0131A884C52238ED3B991984DCA4EB1B1EEF8F1310028D0838FEBD77F801FEE3C6FDE9F60E792866D3215B50C3A36BBE98E45B9472BBEF4D28B74064D1193511B1515F5D1471F12B2172C5880DFD862A4C2003D572D6D0A6AE48AB0AA97D48E1F3F0E';
wwv_flow_imp.g_varchar2_table(42) := '60520E84E561CA840C9802BE856A4E9C3881CE80147E676464545656D2016EEBC9293ACC831AFEF4365D64CA1A0239B48CDF241BD3C55B523C848484AC5FFFB7B0B0DEE25804E2952B5721B652E791239F9B32E535BA3E4443E759B36673674EEC98326A';
wwv_flow_imp.g_varchar2_table(43) := 'D4E8DFFFFE05FE3861C2C471E3C6394BF220C5F4E933162D5A2C9302B63469D2A465CB12A8B4C4EFF7DF5FC72F2F00C76FBF3DFFB9E746D90F9A8D7C91221CB8371F1360A7376EDC347468B8524614B6846F712051585E9E0A9498188C98C8F4A14387C6';
wwv_flow_imp.g_varchar2_table(44) := 'C6C6C9748B4267F9F23FD3890C1AD2B8D5AB57D3B9B974E67E9B8F30642B366F0A1C66747434AD0739813B20F7F4E9D3F4376BD495AA928484847EFDFAD10B43870E1D827B442CE3041C7C4C9E3C392626860A256A3B77EE84E770F6965685D46A6B91BC';
wwv_flow_imp.g_varchar2_table(45) := 'AB014DF80FF1F69B3C361F5329AFC4A5605F0EF852E9040F215ECBD32A08C7A5A5D7BB74E94A17A8B20B7038DDC8C811543D40D14B962C01BC8A8B8BE0E1818FD6DF85A5F9C1031402638320B05DF86CAA00EEBD8925F5292A2AAAA9B98B80EB25DD55F3';
wwv_flow_imp.g_varchar2_table(46) := 'C5382D417DC89D3091210E01299DEFDEBD3B32549651BCEDE1510E954644EC575595212828183CD0A27C86C4A777E846357F9F3E7DC4233D9A9FC5211D8A6F3C37C308FC6119E4BCDF7DF71D98460F408A3A015883070F860F872BDEB56B171006BD8315';
wwv_flow_imp.g_varchar2_table(47) := 'D941115409B4211B183F7E7C7C7C3C5CA23318C90EEB38137C801790EFFB6ABA58242BBF45988E88F82F82D18B2FBE0873646FDA7666647F98D03A9F8F42C61F3B4FEB93B45E6BB7F6BE110C28313171FBF6ED741B45F8A0E210310B4600582C5DBA3433';
wwv_flow_imp.g_varchar2_table(48) := '3313110D110798E30EA29F47C046F8DBB469D3679F7D367FFE7C8C6A7D6D76E90FAC9AFB8EBD6F0765A5FD603CB43EF091CAF870E779B0E59A5F804A4E4E46C1058834FDA188BD0128F03148A2737272525252BCBDBD296BB13A6F0013FC10E0B875EB56';
wwv_flow_imp.g_varchar2_table(49) := '7286AAF6DE7EE2B7577F994DC767E148DD65F76894F4800E3C0164AD5C552ADF0681676AFFC273C24887933FC73F946B2F30C2AE23D1993D7B36E022D659948DA202F4F7F7475C4371CBB933E7AA3297CE97918023FD5710EDFCE57C384B545BF5F575E0';
wwv_flow_imp.g_varchar2_table(50) := '1DD9F163183DB841226B4615834AC7598648B7F7EEF6BF15E15025EBAF6ED9C827151414C4C5C5B5F778F673FEB3DDF602A392921254583A9DEEA14F0D4F865C2A2828E8B1967FF1EDFF0518009F80FA9E82CDF0D70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(2211296410828607249)
,p_file_name=>'group-cal-logo2.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(29431774233173013)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>187973429
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(30734327339667925)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>37166093807269
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(30923382297643886)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>37167665066283
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(30923734477643886)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>37167665066283
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(30947347166492425)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>155456021
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(129276862867061913)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>37166093807272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(150306763778350491)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'N')).to_clob
,p_version_scn=>37166093807272
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(152646050736651475)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>37166093807273
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(205561006805679828)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>37166093807275
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(636139807537779412)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37166093806701
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1149916498435648019)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>37166093807277
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1797022758498564414)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>37166093807277
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1863723394177846509)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>37166093807280
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1949634515608792536)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>37166093807281
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3264368191493348877)
,p_name=>'ADMINISTRATION RIGHTS'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_ca.get_authorization_level(:APP_USER) = 3;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>1089051329
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/application_sentry
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3264368374772348877)
,p_name=>'APPLICATION SENTRY'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :APP_PAGE_ID = 101 then',
'        return true;',
'    else',
'        return (eba_ca.get_authorization_level(:APP_USER) > 0);',
'    end if;',
'end;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>1089051329
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3264368700663348877)
,p_name=>'CONTRIBUTION RIGHTS'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_ca.get_authorization_level(:APP_USER) >= 2;'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>1089051329
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/is_admin
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8949845639264631060)
,p_name=>'is Admin'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select admin_username',
'     from EBA_ca_admins',
'    where upper(admin_username) = upper(:APP_USER) )',
'loop',
'   return true;',
'end loop;',
'',
'for c2 in (',
'   select count(*) admin_cnt',
'     from EBA_ca_admins )',
'loop',
'   if c2.admin_cnt = 0',
'      then return true;',
'   else return false;',
'   end if;',
'end loop;'))
,p_error_message=>'Only Administrators can access these features.'
,p_version_scn=>1089051329
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributer
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(610645949523991990)
,p_static_id=>'CONTRIBUTER'
,p_name=>'Contributer'
,p_version_scn=>37166093807337
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3224069800770413389)
,p_icon_sequence=>10
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes/default_time_zone
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(7989327854326478829)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Default Time Zone'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  c integer := 0;',
'begin',
'for c1 in (',
'   select TIMEZONE_PREFERENCE',
'   from   eba_ca_tz_pref',
'   where  USERID = upper(:APP_USER)) loop',
'   --',
'   if c1.TIMEZONE_PREFERENCE is not null then',
'       c := c + 1;',
'       APEX_UTIL.SET_SESSION_TIME_ZONE (P_TIME_ZONE => c1.TIMEZONE_PREFERENCE ); ',
'       :P100_TIMEZONE := c1.TIMEZONE_PREFERENCE;',
'       :F855_TIMEZONE := c1.TIMEZONE_PREFERENCE;',
'   end if;',
'   exit;',
'end loop;',
'if c = 0 then',
'        APEX_UTIL.SET_SESSION_TIME_ZONE (P_TIME_ZONE => ''US/Pacific''); ',
'       :P100_TIMEZONE := ''US/Pacific'';',
'       :F855_TIMEZONE := ''US/Pacific'';',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to default time zone'
,p_version_scn=>37166093807364
);
end;
/
prompt --application/shared_components/logic/application_processes/clear_create_member_collections
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(7418471433512446552)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Create Member Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_CREATE'' );',
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_INVALID'' );'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
,p_version_scn=>37166093807379
);
end;
/
prompt --application/shared_components/logic/application_processes/trim_all_page_items
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(1548071691608859776)
,p_process_sequence=>1
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Trim All Page Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select item_name',
'               from apex_application_page_items',
'               where application_id = :APP_ID',
'                   and page_id = :APP_PAGE_ID',
'                   and display_as_code in (''NATIVE_TEXT_FIELD'',',
'                                           ''NATIVE_TEXTAREA'',',
'                                           ''NATIVE_NUMBER_FIELD'') ) loop',
'        apex_util.set_session_state( c1.item_name,',
'            ltrim( rtrim( apex_util.get_session_state( c1.item_name ) ) )',
'        );',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>82521914
);
end;
/
prompt --application/shared_components/logic/application_items/application_title
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1336334372413388317)
,p_name=>'APPLICATION_TITLE'
,p_protection_level=>'S'
,p_version_scn=>37166093807400
);
end;
/
prompt --application/shared_components/logic/application_items/calendars_filter
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1866642804483206072)
,p_name=>'CALENDARS_FILTER'
,p_protection_level=>'I'
,p_version_scn=>37166093807408
);
end;
/
prompt --application/shared_components/logic/application_items/cals_restricted_to
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1886703168365683231)
,p_name=>'CALS_RESTRICTED_TO'
,p_protection_level=>'I'
,p_version_scn=>37166093807416
);
end;
/
prompt --application/shared_components/logic/application_items/contact_email
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1866708055545030765)
,p_name=>'CONTACT_EMAIL'
,p_protection_level=>'I'
,p_version_scn=>37166093807424
);
end;
/
prompt --application/shared_components/logic/application_items/event_types_filter
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1866643076605209405)
,p_name=>'EVENT_TYPES_FILTER'
,p_protection_level=>'B'
,p_version_scn=>37166093807431
);
end;
/
prompt --application/shared_components/logic/application_items/external_internal_bo
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1645562104210397131)
,p_name=>'EXTERNAL_INTERNAL_BO'
,p_protection_level=>'I'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
,p_version_scn=>37166093807439
);
end;
/
prompt --application/shared_components/logic/application_items/external_internal_bo_name
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1701574147370398910)
,p_name=>'EXTERNAL_INTERNAL_BO_NAME'
,p_protection_level=>'I'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
,p_version_scn=>37166093807448
);
end;
/
prompt --application/shared_components/logic/application_items/f855_timezone
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(7989930558638766783)
,p_name=>'F855_TIMEZONE'
,p_protection_level=>'S'
,p_version_scn=>37166093807460
);
end;
/
prompt --application/shared_components/logic/application_items/host_url
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(8036289664292712878)
,p_name=>'HOST_URL'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
,p_version_scn=>37166093807473
);
end;
/
prompt --application/shared_components/logic/application_items/last_view
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(3265665088994510540)
,p_name=>'LAST_VIEW'
,p_protection_level=>'S'
,p_version_scn=>37166093807482
);
end;
/
prompt --application/shared_components/logic/application_items/multiple_cal_bo
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1866546483004605663)
,p_name=>'MULTIPLE_CAL_BO'
,p_protection_level=>'I'
,p_version_scn=>37166093807492
);
end;
/
prompt --application/shared_components/logic/application_items/multiple_cal_bo_name
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1866547216947614804)
,p_name=>'MULTIPLE_CAL_BO_NAME'
,p_protection_level=>'I'
,p_version_scn=>37166093807500
);
end;
/
prompt --application/shared_components/logic/application_computations/application_title
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(1336339089222395781)
,p_computation_sequence=>10
,p_computation_item=>'APPLICATION_TITLE'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_app_name varchar2(255);',
'begin',
'    select nvl(preference_value,:APP_NAME)',
'      into l_app_name',
'      from eba_ca_preferences',
'     where preference_name = ''APPLICATION_TITLE'';',
'    return l_app_name;',
'exception',
'    when others then',
'        return :APP_NAME;',
'end;'))
,p_version_scn=>37166093807512
);
end;
/
prompt --application/shared_components/logic/application_computations/external_internal_bo
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(1645564179688405401)
,p_computation_sequence=>10
,p_computation_item=>'EXTERNAL_INTERNAL_BO'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'Include'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
,p_version_scn=>37166093807526
);
end;
/
prompt --application/shared_components/logic/application_computations/external_internal_bo_002
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(1645579515068420646)
,p_computation_sequence=>10
,p_computation_item=>'EXTERNAL_INTERNAL_BO'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'Exclude'
,p_required_patch=>-wwv_flow_imp.id(1641094558700216905)
,p_version_scn=>37166093807536
);
end;
/
prompt --application/shared_components/logic/application_computations/external_internal_bo_name
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(1701574419761409084)
,p_computation_sequence=>10
,p_computation_item=>'EXTERNAL_INTERNAL_BO_NAME'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'Include External / Internal Event Types'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
,p_version_scn=>37166093807543
);
end;
/
prompt --application/shared_components/logic/application_computations/multiple_cal_bo_name
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(1866547838605620126)
,p_computation_sequence=>10
,p_computation_item=>'MULTIPLE_CAL_BO_NAME'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'Include Multiple Calendars'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
,p_version_scn=>37166093807552
);
end;
/
prompt --application/shared_components/logic/application_computations/multiple_cal_bo
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(1866547981343622993)
,p_computation_sequence=>10
,p_computation_item=>'MULTIPLE_CAL_BO'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'Include'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
,p_version_scn=>37166093807561
);
end;
/
prompt --application/shared_components/logic/application_computations/multiple_cal_bo_002
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(1866548251791624703)
,p_computation_sequence=>10
,p_computation_item=>'MULTIPLE_CAL_BO'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'Exclude'
,p_required_patch=>-wwv_flow_imp.id(1866546217384601308)
,p_version_scn=>37166093807569
);
end;
/
prompt --application/shared_components/logic/application_computations/cals_restricted_to
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(1886703643495700762)
,p_computation_sequence=>10
,p_computation_item=>'CALS_RESTRICTED_TO'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(restricted_to, decode(access_level_id, 3, ''All'', null)) ',
'from eba_ca_users',
'where username = :APP_USER'))
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
,p_version_scn=>37166093807584
);
end;
/
prompt --application/shared_components/logic/application_computations/host_url
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(8036290572603715304)
,p_computation_sequence=>10
,p_computation_item=>'HOST_URL'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'wwv_flow_utilities.host_url(''SCRIPT'');'
,p_version_scn=>37166093807594
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_control_scope
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3264915671437458797)
,p_lov_name=>'ACCESS CONTROL SCOPE'
,p_reference_id=>715508815567433405
,p_lov_query=>'.'||wwv_flow_imp.id(3264915671437458797)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1387026184333268954)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Reader access for any authenticated user'
,p_lov_return_value=>'PUBLIC_READONLY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1387026497147268954)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Contributor access for any authenticated user'
,p_lov_return_value=>'PUBLIC_CONTRIBUTE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1387026778678268954)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Restricted to users defined in access control list'
,p_lov_return_value=>'ACL_ONLY'
);
end;
/
prompt --application/shared_components/user_interface/lovs/access_control_scope1
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(142363442167415303)
,p_lov_name=>'ACCESS CONTROL SCOPE1'
,p_lov_query=>'.'||wwv_flow_imp.id(142363442167415303)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(142363775535415308)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Readers'
,p_lov_return_value=>'PUBLIC_READONLY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(142364156092415308)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Contributors'
,p_lov_return_value=>'PUBLIC_CONTRIBUTE'
);
end;
/
prompt --application/shared_components/user_interface/lovs/access_level
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3265723888066068547)
,p_lov_name=>'ACCESS_LEVEL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select access_level d, id r',
'  from eba_ca_access_levels',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/calendars
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1866676699908727641)
,p_lov_name=>'CALENDARS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select short_name || '' - '' || calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d',
', calendar_id r',
'from eba_ca_calendars c',
'where public_view_yn = ''Y''',
'or    exists (select ''x''',
'              from eba_ca_users u',
'              where u.username = :APP_USER',
'              and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                     or (access_level_id = 3 and restricted_to is null)',
'                    )',
'             ) ',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/calendars_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1930330885703221075)
,p_lov_name=>'CALENDARS FULL NAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select ''Default'' d,',
'       -1 r,',
'       1 ob',
'  from dual',
' where exists (select 1 from eba_ca_events',
'                where calendar_id is null)',
'union',
'select short_name ||'' - ''|| calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       calendar_id r,',
'       2 ob',
'  from eba_ca_calendars c',
'  where public_view_yn = ''Y''',
'  or    exists (select ''x''',
'                from eba_ca_users u',
'                where u.username = :APP_USER',
'                and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                       or (access_level_id = 3 and restricted_to is null)',
'                      )',
'               ) ',
')',
' order by ob, d'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/calendars_with_default
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1878644215199008302)
,p_lov_name=>'CALENDARS WITH DEFAULT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select ''Default'' d,',
'       -1 r,',
'       1 ob',
'  from dual',
' where exists (select 1 from eba_ca_events',
'                where calendar_id is null)',
'union',
'select short_name ||'' - ''|| calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       calendar_id r,',
'       2 ob',
'  from eba_ca_calendars c',
'  where public_view_yn = ''Y''',
'  or    exists (select ''x''',
'                from eba_ca_users u',
'                where u.username = :APP_USER',
'                and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                       or (access_level_id = 3 and restricted_to is null)',
'                      )',
'               ) ',
')',
' order by ob, d'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/checkbox
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9168577419751250965)
,p_lov_name=>'CHECKBOX'
,p_lov_query=>'.'||wwv_flow_imp.id(9168577419751250965)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9168577718833250966)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>' '
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/color_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3303827771527254699)
,p_lov_name=>'COLOR PREFERENCE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select color_name, id ',
'from EBA_CA_color_prefs ',
'order by display_sequence, id'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/contacts
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1641100680617237514)
,p_lov_name=>'CONTACTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(replace(decode(instr(username, ''@''), 0, username, substr(username, 1, instr(username, ''@'') - 1)), ''.'', '' ''))  d, upper(username) r',
'from eba_ca_users u',
'where exists (select ''x''',
'              from eba_ca_events e',
'              where instr(upper(e.contact_email), u.username) > 0',
'             )',
'order by 1',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_groups
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8036095365108296938)
,p_lov_name=>'EMAIL GROUPS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_name d, group_id r',
'  from EBA_ca_email_groups',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_groups_with_cnt
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8036295147931727163)
,p_lov_name=>'EMAIL GROUPS WITH CNT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ('' || cnt  || ',
'          case when cnt = 1 then '' member)''',
'               else '' members)'' end d, ',
'       group_id r ',
'  from (',
'select g.group_id,',
'       g.group_name name,',
'       count(*) cnt    ',
'  from EBA_ca_email_groups g, ',
'       EBA_ca_email_group_mbrs m',
' where m.group_id = g.group_id',
' group by g.group_id, g.group_name',
')',
'order by name'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/event_types
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8949808742838567911)
,p_lov_name=>'EVENT TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select 1 ob, ''- New Event Type -'' d, -1 r',
'  from dual',
'union all',
'select 2 ob, type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', '' (External)''), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
')',
'order by ob, d'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/event_types_for_main_cal
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7977644959494043344)
,p_lov_name=>'EVENT TYPES FOR MAIN CAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
' order by type_name'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/events
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3265767193690751479)
,p_lov_name=>'EVENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_name d, event_id r',
'from   eba_ca_events',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/notification_type
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3265530793993478633)
,p_lov_name=>'NOTIFICATION TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3265530793993478633)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3265531087870478634)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yellow'
,p_lov_return_value=>'YELLOW'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3265531273901478635)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Red'
,p_lov_return_value=>'RED'
);
end;
/
prompt --application/shared_components/user_interface/lovs/recur_frequency
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9168549725535120172)
,p_lov_name=>'RECUR FREQUENCY'
,p_lov_query=>'.'||wwv_flow_imp.id(9168549725535120172)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9168550038772120184)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Daily'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9168550241184120195)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'every Weekday (M-F)'
,p_lov_return_value=>'WD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9168550432249120195)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'every Week (same day of week)'
,p_lov_return_value=>'W'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9168550620621120195)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'every 2 Weeks (same day of week)'
,p_lov_return_value=>'2W'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9168550844770120195)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'each Month (same date)'
,p_lov_return_value=>'M'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4102885011321181548)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'every 3 Months (same date)'
,p_lov_return_value=>'Q'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rows
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3266695695727831067)
,p_lov_name=>'ROWS'
,p_lov_query=>'.'||wwv_flow_imp.id(3266695695727831067)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3266695892969831068)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3266696073535831069)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3266696273478831069)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3266696494207831069)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3266696696916831069)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'5000'
,p_lov_return_value=>'5000'
);
end;
/
prompt --application/shared_components/user_interface/lovs/start_time_selector
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8949934145676020819)
,p_lov_name=>'START TIME SELECTOR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),v(''APP_TIME_FORMAT'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),v(''APP_TIME_FORMAT'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/std_time_zones
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3266531777938715866)
,p_lov_name=>'STD TIME ZONES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct tzname d, tzname r',
'  from V$TIMEZONE_NAMES',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframes_for_ir_col_headings
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8048774563741974302)
,p_lov_name=>'TIMEFRAMES (FOR IR COL HEADINGS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf_name d, ',
'       tf_name r',
'  from EBA_ca_timeframes',
' where sysdate <= end_date',
' order by start_date',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframes_showing_dates
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8044249159643010489)
,p_lov_name=>'TIMEFRAMES (SHOWING DATES)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf_name || '' ('' || start_date || '' to '' ||',
'                          end_date || '')'' d, ',
'       tf_id r',
'  from EBA_ca_timeframes',
' order by start_date',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1089051329
);
end;
/
prompt --application/shared_components/user_interface/lovs/timezones
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7988824945792659935)
,p_lov_name=>'TIMEZONES'
,p_lov_query=>'.'||wwv_flow_imp.id(7988824945792659935)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7988825260725659944)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'US/Eastern'
,p_lov_return_value=>'US/Eastern'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7988825446744659947)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'US/East-Indiana'
,p_lov_return_value=>'US/East-Indiana'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7989318857743451434)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'US/Michigan'
,p_lov_return_value=>'US/Michigan'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7988825666829659947)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'US/Central'
,p_lov_return_value=>'US/Central'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7988825866486659947)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'US/Mountain'
,p_lov_return_value=>'US/Mountain'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7989319061206452501)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'US/Arizona'
,p_lov_return_value=>'US/Arizona'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7989311852155421488)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'US/Pacific'
,p_lov_return_value=>'US/Pacific'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7989319263976453245)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'US/Alaska'
,p_lov_return_value=>'US/Alaska'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7989321971248455401)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'US/Hawaii'
,p_lov_return_value=>'US/Hawaii'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8132039963633048837)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Asia/Calcutta'
,p_lov_return_value=>'Asia/Calcutta'
);
end;
/
prompt --application/shared_components/user_interface/lovs/upd_request_af
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8023160861291469928)
,p_lov_name=>'UPD_REQUEST_AF'
,p_lov_query=>'.'||wwv_flow_imp.id(8023160861291469928)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8023161148885469933)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'All Events'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8023161371929469936)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Future Events'
,p_lov_return_value=>'F'
);
end;
/
prompt --application/shared_components/user_interface/lovs/upd_request_afo
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9175601920653508973)
,p_lov_name=>'UPD_REQUEST_AFO'
,p_lov_query=>'.'||wwv_flow_imp.id(9175601920653508973)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9175602227062508981)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'All Events'
,p_lov_return_value=>'A'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:APP_PAGE_ID =  11 and (instr( :P11_REQUEST_TYPE,''A'') > 0 or  :P11_REQUEST_TYPE = ''D''))',
'or',
'(:APP_PAGE_ID = 411 and (instr(nvl(:P411_REQUEST_TYPE,''AFO''),''A'') > 0 or :P411_REQUEST_TYPE = ''D''))'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9175602434681508988)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Future Events'
,p_lov_return_value=>'F'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:APP_PAGE_ID =  11 and (instr( :P11_REQUEST_TYPE,''F'') > 0 or  :P11_REQUEST_TYPE = ''D''))',
'or',
'(:APP_PAGE_ID = 411 and (instr(nvl(:P411_REQUEST_TYPE,''AFO''),''F'') > 0 or :P411_REQUEST_TYPE = ''D''))'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9175602637939508988)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Only this Event'
,p_lov_return_value=>'O'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:APP_PAGE_ID =  11 and (instr( :P11_REQUEST_TYPE,''O'') > 0 or  :P11_REQUEST_TYPE = ''D''))',
'or',
'(:APP_PAGE_ID = 411 and (instr(nvl(:P411_REQUEST_TYPE,''AFO''),''O'') > 0 or :P411_REQUEST_TYPE = ''D''))'))
,p_lov_disp_cond2=>'PLSQL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/upd_request_fo
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8023209971052652458)
,p_lov_name=>'UPD_REQUEST_FO'
,p_lov_query=>'.'||wwv_flow_imp.id(8023209971052652458)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8023210462808652461)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Future Events'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8023210248304652459)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Only this Event'
,p_lov_return_value=>'O'
);
end;
/
prompt --application/shared_components/user_interface/lovs/username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1447197188668927776)
,p_lov_name=>'USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(1447197188668927776)||'.'
,p_location=>'STATIC'
,p_version_scn=>1089051329
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1447197480193927784)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Address'
,p_lov_return_value=>'EMAIL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1447197789285927789)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Non-Email Address'
,p_lov_return_value=>'STRING'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1326545190523142160)
,p_group_name=>'ACL'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8949833037355592644)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1326552201174164147)
,p_group_name=>'Events'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1326545491908142482)
,p_group_name=>'Help'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1326545592947142787)
,p_group_name=>'Home'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1326553581350177345)
,p_group_name=>'Login'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1326545901604145306)
,p_group_name=>'Mobile'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8949832234238591801)
,p_group_name=>'Public'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1326546178879148219)
,p_group_name=>'Search'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1326546279918148528)
,p_group_name=>'Tags'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(1326546077494147851)
,p_group_name=>'Timeline'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(8949803322316567820)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1072333857921841937)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Application Appearance'
,p_link=>'f?p=&APP_ID.:41:&SESSION.'
,p_page_id=>41
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1326550484344152489)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Page Privileges'
,p_link=>'f?p=&APP_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1336342596636432608)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Rename Application'
,p_link=>'f?p=&APP_ID.:37:&SESSION.'
,p_page_id=>37
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1348399576830124302)
,p_parent_id=>wwv_flow_imp.id(2480131591495897900)
,p_short_name=>'Time Zone'
,p_link=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_page_id=>100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1447196679996927761)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Username Format'
,p_link=>'f?p=&APP_ID.:38:&SESSION.'
,p_page_id=>38
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1447218096719989938)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::'
,p_page_id=>53
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1447232079564023408)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1684183769232400377)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Build Options'
,p_link=>'f?p=&APP_ID.:40:&SESSION.'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1785530430470081308)
,p_short_name=>'Timeline of Future Events'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1785853165032095021)
,p_short_name=>'Search'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1785891465552119440)
,p_short_name=>'Tags'
,p_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1866559506805840794)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Calendars'
,p_link=>'f?p=&APP_ID.:42:&SESSION.'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1866571244608848617)
,p_parent_id=>wwv_flow_imp.id(1866559506805840794)
,p_short_name=>'Calendar Details'
,p_link=>'f?p=&APP_ID.:44:&SESSION.'
,p_page_id=>44
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1991628703823847285)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:43:&SESSION.'
,p_page_id=>43
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2480131591495897900)
,p_parent_id=>wwv_flow_imp.id(3265536078527562697)
,p_short_name=>'Preferences'
,p_link=>'f?p=&APP_ID.:28:&SESSION.'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3233395288632676659)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3265518783173468360)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Notifications'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3265529485476478631)
,p_parent_id=>wwv_flow_imp.id(3265518783173468360)
,p_short_name=>'Notification'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3265536078527562697)
,p_short_name=>'Home'
,p_link=>'f?p=&FLOW_ID.:1:&SESSION.'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3265715374505935715)
,p_parent_id=>wwv_flow_imp.id(3265726377889085959)
,p_short_name=>'User Details'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3265726377889085959)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Access Control List'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3265749684702720986)
,p_parent_id=>wwv_flow_imp.id(3265536078527562697)
,p_short_name=>'&P3_EVENT_NAME.'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3265756674313733865)
,p_parent_id=>wwv_flow_imp.id(3265749684702720986)
,p_short_name=>'Attachments'
,p_link=>'f?p=&FLOW_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3265765081528747502)
,p_parent_id=>wwv_flow_imp.id(3265756674313733865)
,p_short_name=>'Attachment'
,p_link=>'f?p=&FLOW_ID.:32:&SESSION.'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3266447470943463513)
,p_parent_id=>wwv_flow_imp.id(3265749684702720986)
,p_short_name=>'Event Update'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3266454579892479352)
,p_parent_id=>wwv_flow_imp.id(3265749684702720986)
,p_short_name=>'Event Updates'
,p_link=>'f?p=&FLOW_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3314966386230643900)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Application Error Log'
,p_link=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3343529488244125506)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Activity Calendar'
,p_link=>'f?p=&FLOW_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7444202630080131305)
,p_parent_id=>wwv_flow_imp.id(1785853165032095021)
,p_short_name=>'Delete Multiple'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8035427676091006808)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Send Email'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8035446954129109707)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Groups'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8035453067946113968)
,p_parent_id=>wwv_flow_imp.id(8035446954129109707)
,p_short_name=>'Details'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8036065451942210212)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Group Members'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8036090969393273197)
,p_parent_id=>wwv_flow_imp.id(8036065451942210212)
,p_short_name=>'Details'
,p_link=>'f?p=&FLOW_ID.:19:&SESSION.'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8042700054859645983)
,p_parent_id=>wwv_flow_imp.id(8036065451942210212)
,p_short_name=>'Add Multiple Members'
,p_link=>'f?p=&FLOW_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8042780369665730294)
,p_parent_id=>wwv_flow_imp.id(8036065451942210212)
,p_short_name=>'Add Multiple Members'
,p_link=>'f?p=&FLOW_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8043865560586552471)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_short_name=>'Reporting Time Frames'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8043878567344576681)
,p_parent_id=>wwv_flow_imp.id(8043865560586552471)
,p_short_name=>'Details'
,p_link=>'f?p=&FLOW_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8530421082507638515)
,p_parent_id=>wwv_flow_imp.id(8949826526074567980)
,p_short_name=>'Update or Delete Affects'
,p_link=>'f?p=&FLOW_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8949817717301567951)
,p_parent_id=>wwv_flow_imp.id(3265534489551527176)
,p_option_sequence=>70
,p_short_name=>'Event Types'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8949820341438567964)
,p_parent_id=>wwv_flow_imp.id(8949817717301567951)
,p_option_sequence=>80
,p_short_name=>'Details'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8949826526074567980)
,p_option_sequence=>100
,p_short_name=>'Event'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(1725657061664248689)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>2318601014859922299
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>2318601014859922299
,p_default_header_template=>wwv_flow_imp.id(1725622416201248601)
,p_default_footer_template=>wwv_flow_imp.id(1725622416201248601)
,p_default_required_label=>2526760615038828570
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(62208816450554123)
,p_theme_id=>42
,p_name=>'PRESERVE_LABEL_SPACING'
,p_display_name=>'Preserve Label Spacing'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_help_text=>'Preserves the label space and enables use of the Label Column Span property.'
,p_null_text=>'Yes'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(62212843538554126)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(62214843394554127)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(62218082920554129)
,p_theme_id=>42
,p_name=>'DISPLAY_MODE'
,p_display_name=>'Display Mode'
,p_display_sequence=>30
,p_template_types=>'PAGE'
,p_help_text=>'Determines the default display appearance and positioning of the dialog. The default opens a floating dialog position at the center of the screen.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(62226447713554134)
,p_theme_id=>42
,p_name=>'DISPLAY_MODE'
,p_display_name=>'Display Mode'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the default display appearance and positioning of the dialog. The default opens a floating dialog position at the center of the screen.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(62236431784554140)
,p_theme_id=>42
,p_name=>'RESULT_SEPARATOR'
,p_display_name=>'Result Separator'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_null_text=>'Show'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(62240476713554143)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998546875625703827)
,p_theme_id=>142
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998547237268703827)
,p_theme_id=>142
,p_name=>'DISPLAY_TYPE'
,p_display_name=>'Display Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998549125032703831)
,p_theme_id=>142
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998549502964703831)
,p_theme_id=>142
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998551175596703836)
,p_theme_id=>142
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Extend to Fit Contents'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998551699161703837)
,p_theme_id=>142
,p_name=>'REGION_HEADER'
,p_display_name=>'Region Header'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998552035610703837)
,p_theme_id=>142
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998553070754703837)
,p_theme_id=>142
,p_name=>'REGION_TYPE'
,p_display_name=>'Region Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Normal - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998554119322703839)
,p_theme_id=>142
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998554814903703840)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998555139985703840)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998557236657703847)
,p_theme_id=>142
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998557625702703847)
,p_theme_id=>142
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998557910263703847)
,p_theme_id=>142
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998559272466703850)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998560166035703851)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998561685481703854)
,p_theme_id=>142
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998562842252703855)
,p_theme_id=>142
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998564754068703860)
,p_theme_id=>142
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998565930417703862)
,p_theme_id=>142
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998566595273703864)
,p_theme_id=>142
,p_name=>'BREADCRUMB_DIVIDER'
,p_display_name=>'Breadcrumb Divider'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998567901012703867)
,p_theme_id=>142
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998568156665703867)
,p_theme_id=>142
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998568502004703867)
,p_theme_id=>142
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998568931523703867)
,p_theme_id=>142
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998569179262703867)
,p_theme_id=>142
,p_name=>'BUTTON_STYLE'
,p_display_name=>'Button Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998569693879703867)
,p_theme_id=>142
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998570550865703867)
,p_theme_id=>142
,p_name=>'BUTTON_WIDTH'
,p_display_name=>'Button Width'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Width'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998571052361703867)
,p_theme_id=>142
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Help text for Form Label Width'
,p_null_text=>'Default Width'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998571525017703868)
,p_theme_id=>142
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998571807231703868)
,p_theme_id=>142
,p_name=>'FORM_ITEMS_SIZE'
,p_display_name=>'Form Items Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Size'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998572058720703868)
,p_theme_id=>142
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(998572367772703868)
,p_theme_id=>142
,p_name=>'FORM_ITEM_PADDING'
,p_display_name=>'Form Item Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1062810019723209729)
,p_theme_id=>142
,p_name=>'NAVIGATION_COLOR_SCHEME'
,p_display_name=>'Navigation Color Scheme'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1085483073627292307)
,p_theme_id=>142
,p_name=>'CURRENT_PAGE'
,p_display_name=>'Current Page'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1244805749820864708)
,p_theme_id=>142
,p_name=>'REGION_ACCENT'
,p_display_name=>'Region Accent'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1244811624826864717)
,p_theme_id=>142
,p_name=>'LIST_STYLE'
,p_display_name=>'List Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1281383686931881900)
,p_theme_id=>142
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1281386111150881904)
,p_theme_id=>142
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1281405134815881933)
,p_theme_id=>142
,p_name=>'FORM_ITEM_WIDTH'
,p_display_name=>'Form Item Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1369833878158116674)
,p_theme_id=>142
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1373335079604473988)
,p_theme_id=>142
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1549578754116563369)
,p_theme_id=>142
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1641094558700216905)
,p_build_option_name=>'Include External / Internal Event Types'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>37166093810572
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Differentiate between events that can be viewed by the public (external) and those that can only be viewed by those entered into the Access Control List (internal).',
'This option requires the Access Control Scope to be set to ''Reader access for any authenticated user''. By populating the Contact Email on events with the relevant addresses from users listed in the Access Control List, the Contact can be used to sear'
||'ch for events specifically for that person.'))
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1688256117016091328)
,p_build_option_name=>'Show Updates'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>37166093810573
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Enable or disable the display of event updates.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1702553619385177411)
,p_build_option_name=>'Show Time'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>37166093810573
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Select whether time will be displayed on calendar entries. If included, the calendar will also show Week and Day views.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1866546217384601308)
,p_build_option_name=>'Include Multiple Calendars'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>37166093810573
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Determine whether multiple calendars can be defined, and events can be entered against the different calendars. Administrators can optionally define which calendars a specific user can view and edit. '
);
end;
/
prompt --application/shared_components/globalization/messages
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(3270592096689768214)
,p_name=>'ABOUT_THIS_APPLICATION'
,p_message_text=>'About this Application'
,p_version_scn=>37166093810590
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1392227585337120269)
,p_name=>'ABOUT_TO_CREATE'
,p_message_text=>'Please confirm adding the following %0 <strong>%1</strong> user(s) to your access control list.'
,p_version_scn=>37166093810592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1436814701114337360)
,p_name=>'ABOUT_TO_CREATE_WITH_INVALIDS'
,p_message_text=>'Please confirm adding the following %0 <strong>%1</strong> user(s) to your access control list. Note that %2 string(s) were invalid usernames.'
,p_version_scn=>37166093810592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(3265706972332903182)
,p_name=>'ACCESS_CONTROL_INFO'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features, for authenticated users. Team Calendar supports the following 3 access levels; Reader, Contributor and Administrator.',
'  <b>Reader''s</b> have read-only access and can also view reports.',
'  <b>Contributor''s</b> can create, edit, delete and view reports.',
'  <b>Administrator''s</b>, in addition to Contributor''s capability, can also perform Team Calendar administration, including configuration of access control, exporting and installing or uninstalling sample data.</p> ',
''))
,p_version_scn=>37166093810601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1536653979112653604)
,p_name=>'ACL_DISABLED'
,p_message_text=>'<p>All users are currently <strong>Administrators</strong>. Please enable Access Control to restrict user access to this application.</p>'
,p_version_scn=>37166093810613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1536653783209651732)
,p_name=>'ACL_ENABLED'
,p_message_text=>'<p>Only users defined in the Access Control List have access to this application.</p>'
,p_version_scn=>37166093810613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1536653587954649519)
,p_name=>'ACL_PUBLIC_CONTRIBUTE'
,p_message_text=>'<p>All authenticated users have <strong>Reader</strong> and <strong>Contributor</strong> access.</p><p>Administrators are restricted by the Access Control List.</p>'
,p_version_scn=>37166093810613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1536653392483647348)
,p_name=>'ACL_PUBLIC_READONLY'
,p_message_text=>'<p>All authenticated users have <strong>Reader</strong> access.</p><p>Contributors and Administrators are restricted by the Access Control List.</p>'
,p_version_scn=>37166093810613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(3264919176536514854)
,p_name=>'AC_CONFIGURATION_INFO'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Enabling Access Control</strong> allows the application and its features to be controlled by the <strong>Access Control List</strong>, as defined by the application administrator. This application has 3 access levels available that can be '
||'granted to a user; Administrator, Contributor and Reader. Please see the Manage Access Control List page for further details on what each level provides.</p>',
'',
'<p>In addition, if you want to make every authenticated user a ''Reader'' of your application, you can select Reader access for any authenticated user from the Access Control Scope configuration option. Similarly, selecting Contributor access for any a'
||'uthenticated user will provide contributor access to any user who can authenticate into your application.</p>',
'',
'<br>',
'<p><b>Disabling Access Control</b> means that access to the application and all of its features including Administration are open to any user who can authenticate to the application.</p>',
'<br>',
'<p>Note: Irrespective of whether Access Control is enabled or disabled, a user still has to authenticate successfully into the application.</p>'))
,p_version_scn=>37166093810626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(3270591387686765702)
,p_name=>'ADDITIONAL_INFORMATION'
,p_message_text=>'Additional Information'
,p_version_scn=>37166093810638
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2983690395874912712)
,p_name=>'ADMINISTRATION'
,p_message_text=>'Administration'
,p_version_scn=>37166093810647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1392227191160117552)
,p_name=>'ALREADY_IN_ACL'
,p_message_text=>'User is already in Access Control List'
,p_version_scn=>37166093810658
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1536653195933645761)
,p_name=>'ANY_AUTHENTICATED_USER'
,p_message_text=>'Any Authenticated User'
,p_version_scn=>37166093810668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1537106069573860179)
,p_name=>'AUTHENTICATION_REQUIRED_PAGES'
,p_message_text=>'Login Required Pages'
,p_version_scn=>37166093810676
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1392226173057110756)
,p_name=>'BAU_EMAIL_INSTRUCTIONS'
,p_message_text=>'Enter or copy and paste email addresses separated by commas, semicolons, or new lines. Note that if you copy and paste email addresses from email messages, extraneous text will be filtered out. All email users provided will be added as the selected r'
||'ole. Existing or duplicate email addresses will be ignored.'
,p_version_scn=>37166093810685
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1392225976292109331)
,p_name=>'BAU_STRING_INSTRUCTIONS'
,p_message_text=>'Enter or copy and paste usernames separated by commas, semicolons, or whitespace. All usernames provided will be added as the selected role. Existing or duplicate usernames will be ignored.'
,p_version_scn=>37166093810686
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1392226994179116138)
,p_name=>'DUPLICATE_USER'
,p_message_text=>'Duplicate user in list'
,p_version_scn=>37166093810694
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1517496199557283730)
,p_name=>'EMAIL_USERNAME_FORMAT_MSG'
,p_message_text=>'This application is currently using an <strong>email address</strong> username format (e.g. xyz@xyz.com). <a href="f?p=%0:%1:%2:">Change Username Format</a>'
,p_version_scn=>37166093810704
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(3270591690802766536)
,p_name=>'FEATURES'
,p_message_text=>'Features'
,p_version_scn=>37166093810713
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(3270591893919767474)
,p_name=>'GETTING_STARTED'
,p_message_text=>'Getting Started'
,p_version_scn=>37166093810723
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2983670289987911001)
,p_name=>'HELP'
,p_message_text=>'Help'
,p_version_scn=>37166093810753
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1458462684141984600)
,p_name=>'HELP_ABOUT'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aboutApp">',
'<h2>About this Application</h2>',
'<p>The Team Calendar application gives you a way to list all your events on an easy to use, Web-accessible calendar. The Home page for the Team Calendar displays events in a monthly, weekly or daily format, with embedded links to detailed information'
||' about each event. You can also create customized reports on events.</p>',
'<p>',
'Each event is classified by event type and automatically displayed in an associated color. You can create your own event types or modify existing event type attributes.</p>',
'<p>',
'You can also send emails to other app users with information about upcoming meetings.</p>',
'</div>'))
,p_version_scn=>37166160244049
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1458462293631980175)
,p_name=>'HELP_FEATURES'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<h2>Features</h2><ul>',
'<li>Monthly/Weakly and Daily calendar Views</li>',
'<li>Flexible way to add and changes events</li>',
'<li>Nice Events views</li>',
'<li>Clear Timeline Display </li>',
'<li>Mobile Interface</li>',
'<li>Flexible Access Control (reader, contributor, administrator model)</li>',
'<li>Flexible Notifications</li>',
'</div>'))
,p_version_scn=>37166093810754
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1458462488455982597)
,p_name=>'HELP_GETTING_STARTED'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<h2>Getting Started</h2>',
'<br /><p>1. Set up Timeline</p>',
'<ul>',
'<li>Click the Timeline Tab</li>',
'<li>Click Create Event</li>',
'<li>Click the Create Button and add your events</li>',
'</ul>',
'<br /><p>2. Define Event Types:</p>',
'<ul>',
'<li>Click the Administration icon (gear icon)</li>',
'<li>Edit Event Types</li>',
'</ul>',
'</div>'))
,p_version_scn=>37166093810755
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1458462879181986869)
,p_name=>'HELP_SIDEBAR'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1 class="appNameHeader">',
'    <img src="%0f_spacer.gif" class="appIcon %1" alt="" />',
'    %2',
'</h1>',
'<ul class="vapList">',
'    <li>',
'        <span class="vLabel">App Version</span>',
'        <span class="vValue">%3</span>',
'    </li>',
'    <li>',
'        <span class="vLabel">Pages</span>',
'        <span class="vValue">%4</span>',
'    </li>',
'    <li>',
'        <span class="vLabel">Vendor</span>',
'        <span class="vValue">%5 </span>',
'    </li>',
'</ul>'))
,p_version_scn=>37166093810755
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1458462070783975542)
,p_name=>'HELP_SUPPORT'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<h2>Additional Information</h2>',
'<p>If you have questions, ask them on the <a href="%0" target="_blank">%1</a>.',
'</p>',
'</div>'))
,p_version_scn=>37166093810757
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1392227388357118903)
,p_name=>'INVALID_USERS_NOT_CREATED'
,p_message_text=>'Note that %0 string(s) were invalid usernames.'
,p_version_scn=>37166093810765
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2983674391372911399)
,p_name=>'LOGIN'
,p_message_text=>'Login'
,p_version_scn=>37166093810783
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2983686293450911981)
,p_name=>'LOGOUT'
,p_message_text=>'Logout'
,p_version_scn=>37166093810793
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1392226600218113418)
,p_name=>'MISSING_AT_SIGN'
,p_message_text=>'Missing @ sign'
,p_version_scn=>37166093810805
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1392226369607112361)
,p_name=>'MISSING_DOT'
,p_message_text=>'Missing dot'
,p_version_scn=>37166093810806
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(3218268500089876256)
,p_name=>'MOBILE'
,p_message_text=>'Mobile'
,p_version_scn=>37166093810815
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1537105674749857764)
,p_name=>'PAGES_WITH_CUSTOM_AUTH'
,p_message_text=>'Authorization Protected'
,p_version_scn=>37166093810825
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1537105872161858983)
,p_name=>'PUBLIC_PAGES'
,p_message_text=>'Public Pages'
,p_version_scn=>37166093810830
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1517496395459285630)
,p_name=>'STRING_USERNAME_FORMAT_MSG'
,p_message_text=>'This application is currently using a <strong>non-email address</strong> username format (e.g. JOHNDOE). <a href="f?p=%0:%1:%2:">Change Username Format</a>'
,p_version_scn=>37166093810839
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(1392226797199114777)
,p_name=>'USERNAME_TOO_LONG'
,p_message_text=>'Username too long'
,p_version_scn=>37166093810846
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/timezone
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(3266605070450073265)
,p_shortcut_name=>'TIMEZONE'
,p_shortcut_type=>'FUNCTION_BODY'
,p_shortcut_language=>'PLSQL'
,p_version_scn=>1089051331
,p_shortcut=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>''||''Dates and Times are displayed in the ''||',
'''<a href="f?p=''||:APP_ID||'':timezone:''||:APP_SESSION||''">''||',
'nvl(apex_escape.html(apex_util.get_session_time_zone),''unknown'')||''</a> timezone.</p>'';'))
);
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(8949808133615567890)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1089051331
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(8949801941501567742)
,p_name=>'APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>187976241
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_translated_message
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1440947672286570173)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_display_name=>'Translated Message'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.TRANSLATED_MESSAGE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    c_message     constant varchar2(255) := p_region.attribute_01;',
'    c_add_p_tags  constant varchar2(1) := p_region.attribute_12;',
'',
'    type subs_t is varray(10) of varchar2(4000);',
'    type colnos_t is varray(10) of pls_integer;',
'',
'    c_subs_columns constant subs_t :=',
'        subs_t (',
'            p_region.attribute_02,',
'            p_region.attribute_03,',
'            p_region.attribute_04,',
'            p_region.attribute_05,',
'            p_region.attribute_06,',
'            p_region.attribute_07,',
'            p_region.attribute_08,',
'            p_region.attribute_09,',
'            p_region.attribute_10,',
'            p_region.attribute_11',
'        );',
'',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    l_subs_column_nos colnos_t := colnos_t( null, null, null, null, null, null, null, null, null, null );',
'',
'    l_subs subs_t := subs_t( null, null, null, null, null,',
'                             null, null, null, null, null );',
'    l_label varchar2(50);',
'    l_message clob;',
'begin',
'    if p_region.source is not null then',
'        -- Read the data based on the region source query',
'        l_column_value_list := apex_plugin_util.get_data2 (',
'                                   p_sql_statement  => p_region.source,',
'                                   p_min_columns    => 1,',
'                                   p_max_columns    => null,',
'                                   p_component_name => p_region.name );',
'',
'        -- Get the actual column# for faster access and also verify that the data type',
'        -- of the column matches with what we are looking for',
'        for i in 0..9 loop',
'            l_label := ''Substitution Column ''',
'                        ||to_char(i)||'' (%''||to_char(i)||'')'';',
'            l_subs_column_nos(i+1) := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => l_label,',
'                                        p_column_alias      => c_subs_columns(i+1),',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => false,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'        end loop;',
'',
'        -- Set the column values of the first row so that apex_plugin_util.replace_substitutions',
'        -- can do substitutions for columns contained in the region source query.',
'        apex_plugin_util.set_component_values (',
'            p_column_value_list => l_column_value_list,',
'            p_row_num           => 1 );',
'',
'        -- get the substitution values',
'        for i in 0..9 loop',
'            if l_subs_column_nos(i+1) is not null then',
'                l_subs(i+1) := apex_plugin_util.escape (',
'                                apex_plugin_util.get_value_as_varchar2 (',
'                                    p_data_type => l_column_value_list(l_subs_column_nos(i+1)).data_type,',
'                                    p_value     => l_column_value_list(l_subs_column_nos(i+1)).value_list(1) ),',
'                                p_region.escape_output );',
'            end if;',
'        end loop;',
'    end if;',
'',
'    l_message := apex_application.do_substitutions(',
'        apex_lang.message( p_name => c_message,',
'                           p0     => l_subs(1),',
'                           p1     => l_subs(2),',
'                           p2     => l_subs(3),',
'                           p3     => l_subs(4),',
'                           p4     => l_subs(5),',
'                           p5     => l_subs(6),',
'                           p6     => l_subs(7),',
'                           p7     => l_subs(8),',
'                           p8     => l_subs(9),',
'                           p9     => l_subs(10)',
'                      )',
'        );',
'    if c_add_p_tags = ''Y'' and instr( l_message, ''<p'' ) = 0 then',
'        l_message := ''<p>''||l_message||''</p>'';',
'    end if;',
'    sys.htp.p(l_message);',
'    return null;',
'end;'))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL:ESCAPE_OUTPUT'
,p_substitute_attributes=>true
,p_reference_id=>1367551240532222793
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This region plug-in is used to allow text messages to readily be translated into different languages. Up to nine values can be substituted into the text message.</p>',
'<p>The text message, with appropriate substitution variables, must be defined as a system message.</p>'))
,p_version_identifier=>'5.0.1'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887601060116736710)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Text Message'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Enter the name of the Text Message (from shared components) to be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887601496450736710)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Substitution Column 0 (%0)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%0</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887601875346736711)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Substitution Column 1 (%1)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%1</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887602295933736713)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Substitution Column 2 (%2)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%2</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887602702188736714)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'attribute_05'
,p_prompt=>'Substitution Column 3 (%3)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%3</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887603138395736715)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'attribute_06'
,p_prompt=>'Substitution Column 4 (%4)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%4</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887603477050736715)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'attribute_07'
,p_prompt=>'Substitution Column 5 (%5)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%5</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887603899548736715)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'attribute_08'
,p_prompt=>'Substitution Column 6 (%6)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%6</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887604299473736716)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'attribute_09'
,p_prompt=>'Substitution Column 7 (%7)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%7</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887604731500736716)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'attribute_10'
,p_prompt=>'Substitution Column 8 (%8)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%8</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887605151276736716)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'attribute_11'
,p_prompt=>'Substitution Column 9 (%9)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which is used to replace any <strong>%9</strong> values in the displayed message.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(3887605511792736717)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'attribute_12'
,p_prompt=>'Add Paragraph Tags'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select whether paragraph tags are added around the text message.</p>',
'<p>Note: If the message already starts with a paragraph tag, no changes are made.</p>'))
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(3887609157800736736)
,p_plugin_id=>wwv_flow_imp.id(1440947672286570173)
,p_name=>'SOURCE_SQL'
,p_is_required=>false
,p_sql_min_column_count=>1
,p_examples=>'This SQL is optional. If the message you are translating has substitutions built in (%0 through %9), select the values you wish to replace them with within Attributes.'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_acl_status
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1863139978697094708)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.ACL_STATUS'
,p_display_name=>'ACL Status'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.ACL_STATUS'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function acl_status (   p_region              in apex_plugin.t_region,',
'                        p_plugin              in apex_plugin.t_plugin,',
'                        p_is_printer_friendly in boolean ) return apex_plugin.t_region_render_result is',
'    l_retval         apex_plugin.t_region_render_result;',
'    --',
'    c_config_page constant varchar2(30)   := p_region.attribute_01;',
'    c_acl_page    constant varchar2(30)   := p_region.attribute_02;',
'    c_admin_alias constant varchar2(255)  := p_region.attribute_03;',
'    c_cont_alias  constant varchar2(255)  := p_region.attribute_04;',
'    c_read_alias  constant varchar2(255)  := p_region.attribute_05;',
'    c_scope_pref  constant varchar2(4000) := p_region.attribute_06;',
'    c_acl_status  constant varchar2(4000) := p_region.attribute_07;',
'    --',
'    l_app_id            varchar2(255) := :APP_ID;',
'    l_session_id        varchar2(255) := :APP_SESSION;',
'    -- TODO: Make this handle generic ACL levels.',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    l_admin_column_number pls_integer;',
'    l_admin_count         number := null;',
'    l_cont_column_number  pls_integer;',
'    l_cont_count          number := null;',
'    l_read_column_number  pls_integer;',
'    l_read_count          number := null;',
'    --',
'    l_scope             varchar2(255);',
'    l_acl_mode          varchar2(255);',
'    l_acl_enabled       varchar2(1) := ''N'';',
'begin',
'    l_column_value_list := apex_plugin_util.get_data2(',
'        p_sql_statement  => p_region.source,',
'        p_min_columns    => 3,',
'        p_max_columns    => null,',
'        p_component_name => p_region.name',
'    );',
'',
'    l_admin_column_number := apex_plugin_util.get_column_no (',
'        p_attribute_label   => ''ADMINCOUNT'',',
'        p_column_alias      => c_admin_alias,',
'        p_column_value_list => l_column_value_list,',
'        p_is_required       => true,',
'        p_data_type         => apex_plugin_util.c_data_type_number',
'    );',
'    l_cont_column_number := apex_plugin_util.get_column_no (',
'        p_attribute_label   => ''CONTCOUNT'',',
'        p_column_alias      => c_cont_alias,',
'        p_column_value_list => l_column_value_list,',
'        p_is_required       => true,',
'        p_data_type         => apex_plugin_util.c_data_type_number',
'    );',
'    l_read_column_number := apex_plugin_util.get_column_no (',
'        p_attribute_label   => ''READCOUNT'',',
'        p_column_alias      => c_read_alias,',
'        p_column_value_list => l_column_value_list,',
'        p_is_required       => true,',
'        p_data_type         => apex_plugin_util.c_data_type_number',
'    );',
'',
'    l_scope := apex_plugin_util.get_plsql_expression_result( p_plsql_expression => c_scope_pref );',
'    l_acl_enabled := apex_plugin_util.get_plsql_expression_result( p_plsql_expression => c_acl_status );',
'',
'    for l_row_number in 1 .. l_column_value_list(1).value_list.count loop',
'        l_admin_count := l_column_value_list(l_admin_column_number).value_list(l_row_number).number_value;',
'        l_cont_count  := l_column_value_list(l_cont_column_number).value_list(l_row_number).number_value;',
'        l_read_count  := l_column_value_list(l_read_column_number).value_list(l_row_number).number_value;',
'    end loop;',
'',
'    if l_acl_enabled = ''N'' then',
'        l_acl_mode := ''Disabled'';',
'    else',
'        l_acl_mode := ''Enabled'';',
'    end if;',
'',
'    sys.htp.p(''<div class="t-ConfigPanel">'');',
'    sys.htp.p(''  <div class="t-ConfigPanel-about">'');',
'        if l_acl_mode = ''Disabled'' then',
'           sys.htp.p(apex_lang.message(''ACL_DISABLED''));',
'        else',
'           if l_scope = ''ACL_ONLY'' then sys.htp.p(apex_lang.message(''ACL_ENABLED'')); end if;',
'           if l_scope = ''PUBLIC_CONTRIBUTE'' then sys.htp.p(apex_lang.message(''ACL_PUBLIC_CONTRIBUTE'')); end if;',
'           if l_scope = ''PUBLIC_READONLY'' then sys.htp.p(apex_lang.message(''ACL_PUBLIC_READONLY'')); end if;',
'        end if;',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''  <div class="t-ConfigPanel-body">'');',
'    sys.htp.p(''    <div class="t-ConfigPanel-main">'');',
'    sys.htp.p(''      <span class="t-ConfigPanel-icon a-Icon'');',
'      if l_acl_mode = ''Enabled'' then',
'        sys.htp.prn(''is-enabled'');',
'      else',
'        sys.htp.prn(''is-disabled'');',
'      end if;',
'    sys.htp.p(''"></span>'');',
'    sys.htp.p(''      <span class="t-ConfigPanel-setting">Access Control</span>'');',
'        if l_acl_mode = ''Disabled'' then',
'            sys.htp.p(''      <span class="t-ConfigPanel-status">Disabled</span>'');',
'            sys.htp.p(''      <span class="t-ConfigPanel-actions">'');',
'            sys.htp.p(''        <button class="t-Button t-Button--small" onclick="openModal(''''confirmEnableACL'''');" type="button">Enable Access Control</button>'');',
'            sys.htp.p(''      </span>'');',
'        else',
'            sys.htp.p(''      <span class="t-ConfigPanel-status">Enabled</span>'');',
'            sys.htp.p(''      <span class="t-ConfigPanel-actions">'');',
'            sys.htp.p(''        <button class="t-Button t-Button--small" onclick="apex.navigation.redirect(''''''||apex_util.prepare_url(''f?p=''||l_app_id||'':''||c_config_page||'':''||l_session_id)||'''''');" type="button">Configure</button>'');',
'            sys.htp.p(''      </span>'');',
'        end if;',
'    sys.htp.p(''      </span>'');',
'    sys.htp.p(''    </div>'');',
'    sys.htp.p(''    <div class="t-ConfigPanel-list">'');',
'    sys.htp.p(''      <ul class="t-ConfigPanel-attrs">'');',
'    sys.htp.p(''        <li class="t-ConfigPanel-attr">'');',
'    sys.htp.p(''          <a href="''||apex_util.prepare_url(''f?p=''||l_app_id||'':''||c_acl_page||'':''||l_session_id|| '':::''||c_acl_page||'',RIR:IREQ_ACCESS_LEVEL_ID:Administrator'')||''" class="t-ConfigPanel-attrLink">'');',
'    sys.htp.p(''            <span class="t-ConfigPanel-attrLabel">Administrators</span>'');',
'    sys.htp.p(''            <span class="t-ConfigPanel-attrValue">'');',
'        if l_acl_mode = ''Disabled'' then',
'            sys.htp.p(apex_escape.html(apex_lang.message(''ANY_AUTHENTICATED_USER'')));',
'        else',
'            sys.htp.p(to_char(l_admin_count,''999G999G990''));',
'        end if;',
'    sys.htp.p(''            </span>'');',
'    sys.htp.p(''          </a>'');',
'    sys.htp.p(''        </li>'');',
'',
'    sys.htp.p(''        <li class="t-ConfigPanel-attr">'');',
'    sys.htp.p(''          <a href="''||apex_util.prepare_url(''f?p=''||l_app_id||'':''||c_acl_page||'':''||l_session_id||'':::''||c_acl_page||'',RIR:IREQ_ACCESS_LEVEL_ID:Contributor'')||''" class="t-ConfigPanel-attrLink">'');',
'    sys.htp.p(''            <span class="t-ConfigPanel-attrLabel">Contributors</span>'');',
'    sys.htp.p(''            <span class="t-ConfigPanel-attrValue">'');',
'        if l_acl_mode = ''Disabled'' then ',
'            sys.htp.p(apex_escape.html(apex_lang.message(''ANY_AUTHENTICATED_USER'')));',
'        elsif l_scope = ''ACL_ONLY'' or l_scope = ''PUBLIC_READONLY'' then',
'            sys.htp.p(to_char(nvl(l_cont_count,0),''999G999G990''));',
'        else',
'            sys.htp.p(apex_escape.html(apex_lang.message(''ANY_AUTHENTICATED_USER'')));',
'        end if;',
'    sys.htp.p(''            </span>'');',
'    sys.htp.p(''          </a>'');',
'    sys.htp.p(''        </li>'');',
'',
'    sys.htp.p(''        <li class="t-ConfigPanel-attr">'');',
'    sys.htp.p(''          <a href="''||apex_util.prepare_url(''f?p=''||l_app_id||'':''||c_acl_page||'':''||l_session_id||'':::''||c_acl_page||'',RIR:IREQ_ACCESS_LEVEL_ID:Reader'')||''" class="t-ConfigPanel-attrLink">'');',
'    sys.htp.p(''            <span class="t-ConfigPanel-attrLabel">Readers</span>'');',
'    sys.htp.p(''            <span class="t-ConfigPanel-attrValue">'');',
'    sys.htp.p(  case',
'                    when l_acl_mode = ''Disabled'' then ',
'                        apex_escape.html(apex_lang.message(''ANY_AUTHENTICATED_USER''))',
'                    when l_scope = ''ACL_ONLY'' then',
'                        to_char(nvl(l_read_count,0),''999G999G990'')',
'                    when l_scope = ''PUBLIC_READONLY'' or l_scope = ''PUBLIC_CONTRIBUTE'' then',
'                        apex_escape.html(apex_lang.message(''ANY_AUTHENTICATED_USER''))',
'                    else',
'                        to_char(nvl(l_read_count,0),''999G999G990'')',
'                end );',
'    sys.htp.p(''            </span>'');',
'    sys.htp.p(''          </a>'');',
'    sys.htp.p(''        </li>'');',
'',
'    sys.htp.p(''      </ul>'');',
'    sys.htp.p(''    </div>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</div>'');',
'',
'    return l_retval;    ',
'end;'))
,p_api_version=>1
,p_render_function=>'acl_status'
,p_standard_attributes=>'SOURCE_SQL'
,p_substitute_attributes=>true
,p_reference_id=>1420925848444088670
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>ACL Status is designed for those applications that use the built-in Application Express authentication Access Control List (ACL), to control access to the application and features. The plug-in displays the current ACL status together with a count '
||'of Administrators, Contributors, and Readers.</p>',
'<p>This plug-in is suitable for adding to the main Administration page to provide an overview of user security settings.</p>'))
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4102305538280520038)
,p_plugin_id=>wwv_flow_imp.id(1863139978697094708)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Configuration Page'
,p_attribute_type=>'PAGE NUMBER'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Enter the application page number used to maintain the ACL settings.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4102305926914520038)
,p_plugin_id=>wwv_flow_imp.id(1863139978697094708)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'ACL Page'
,p_attribute_type=>'PAGE NUMBER'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Enter the application page number used to maintain users and their access level.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4102306346600520039)
,p_plugin_id=>wwv_flow_imp.id(1863139978697094708)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Administrator Count Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the count of Administrators.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4102306713873520039)
,p_plugin_id=>wwv_flow_imp.id(1863139978697094708)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Contributor Count Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the count of Contributors.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4102307078105520039)
,p_plugin_id=>wwv_flow_imp.id(1863139978697094708)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'attribute_05'
,p_prompt=>'Reader Count Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the count of Readers.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4102307468055520039)
,p_plugin_id=>wwv_flow_imp.id(1863139978697094708)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'attribute_06'
,p_prompt=>'Scope Preference Value'
,p_attribute_type=>'PLSQL EXPRESSION'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>'eba_plugin_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'')'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter a function which returns the appropriate scope for the ACL.',
'Allowable values are:</p>',
'<dl>',
'  <dt>ACL_ONLY</dt><dd>Rights are determined by ACL access levels. Public users cannot access the application.</dd>',
'  <dt>PUBLIC_CONTRIBUTE</dt><dd>Public users can contribute, but cannot access Administrative tasks.</dd>',
'  <dt>PUBLIC_READONLY</dt><dd>Public users can access the application, but cannot update records.</dd>',
'</dl>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4102307898476520040)
,p_plugin_id=>wwv_flow_imp.id(1863139978697094708)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'attribute_07'
,p_prompt=>'ACL Enabled Preference'
,p_attribute_type=>'PLSQL EXPRESSION'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>'eba_plugin_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'')'
,p_help_text=>'<p>Enter a function which returns if ACL is currently enabled or disabled.</p>'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(4102308857944520041)
,p_plugin_id=>wwv_flow_imp.id(1863139978697094708)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>3
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) reader_count',
',      sum(case when access_level_id = 2 then 1 else 0 end) contributor_count',
',      sum(case when access_level_id = 3 then 1 else 0 end) admin_count',
'from eba_plugin_users'))
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_acl_warning
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1863142976328094732)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.ACL_WARNING'
,p_display_name=>'ACL Warning'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.ACL_WARNING'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (   p_region              in apex_plugin.t_region,',
'                        p_plugin              in apex_plugin.t_plugin,',
'                        p_is_printer_friendly in boolean ) return apex_plugin.t_region_render_result is',
'    l_retval         apex_plugin.t_region_render_result;',
'    --',
'    c_admin_page  constant varchar2(512)   := p_region.attribute_01;',
'begin',
'    -- This plugin displays a warning message if the ACL is disabled. To use:',
'    --    1) Add this plugin region to the top of the application home page.',
'    --    2) Set the template to Alert region, with the Warning template option.',
'    --    3) Add a PL/SQL expression condition to the region, following this pattern:',
'    --        eba_XXX_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''N''',
'',
'    sys.htp.p(''Access control for this application is currently disabled. ''',
'        ||''All users are currently Administrators. Navigate to <a href="''',
'        ||apex_util.prepare_url(c_admin_page)||''">application administration</a> ''',
'        ||''to enable access control.'');',
'',
'    return l_retval;    ',
'end;'))
,p_api_version=>1
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_reference_id=>1830928929089695217
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>ACL Warning is designed for those applications that use the built-in Application Express authentication Access Control List (ACL), to control access to the application and features. The plug-in displays a warning when ACL is disabled.</p>',
'<p>This plug-in is suitable for adding to the Home page to provide warnings when ACL is not enabled, allowing every user to act as an Administrator.</p>'))
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2277535494332930125)
,p_plugin_id=>wwv_flow_imp.id(1863142976328094732)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Administration Page Link'
,p_attribute_type=>'LINK'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks the associated link.</p>'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_auth_administration
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1863143678790094738)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.AUTH_ADMINISTRATION'
,p_display_name=>'Authorization Administration'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.AUTH_ADMINISTRATION'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function auth_admin (   p_region              in apex_plugin.t_region,',
'                        p_plugin              in apex_plugin.t_plugin,',
'                        p_is_printer_friendly in boolean ) return apex_plugin.t_region_render_result is',
'    l_retval         apex_plugin.t_region_render_result;',
'    --',
'    c_page_report_page constant number        := p_region.attribute_01;',
'    c_public_pages_msg constant varchar2(255) := apex_escape.html(p_region.attribute_02);',
'    c_auth_pages_msg   constant varchar2(255) := apex_escape.html(p_region.attribute_03);',
'    c_custom_auth_msg  constant varchar2(255) := apex_escape.html(p_region.attribute_04);',
'',
'    l_app_session     varchar2(255) := :APP_SESSION;',
'    l_app_id          number := :APP_ID;',
'    l_cnt             number := 0;',
'    l_auth_scheme     number := 0;',
'    l_auth_required   number := 0;',
'    l_auth_scheme_name     varchar2(255);',
'begin',
'    for c1 in ( select count(*) c,',
'                    sum(decode(authorization_scheme,null,0,1)) auth_scheme,',
'                    sum(decode(page_requires_authentication,''Yes'',1,0)) auth_required',
'                from apex_application_pages',
'                where application_id =  l_app_id',
'                    and page_function != ''Global Page'' ) loop',
'        l_cnt := c1.c;',
'        l_auth_scheme := c1.auth_scheme;',
'        l_auth_required := c1.auth_required;',
'    end loop;',
'',
'    for c1 in ( select authentication_scheme ',
'                from apex_applications ',
'                where application_id = l_app_id ) loop',
'        l_auth_scheme_name := c1.authentication_scheme;',
'    end loop;',
'',
'    sys.htp.p(''<div class="container">'');',
'    sys.htp.p(''<div class="row">'');',
'    sys.htp.p(''<div class="col col-12 ">'');',
'    sys.htp.p(''<div class="t-ConfigPanel">'');',
'    sys.htp.p(''<div class="t-ConfigPanel-body">'');',
'    sys.htp.p(''<div class="t-ConfigPanel-main">'');',
'    sys.htp.p(''<span class="t-ConfigPanel-icon a-Icon auth-scheme"></span>'');',
'    sys.htp.p(''<span class="t-ConfigPanel-setting">Authentication Scheme</span>'');',
'    sys.htp.p(''<span class="t-ConfigPanel-status">''||apex_escape.html(l_auth_scheme_name)||''</span>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''<div class="t-ConfigPanel-list">'');',
'    sys.htp.p(''<ul class="t-ConfigPanel-attrs">'');',
'    sys.htp.p(''<li class="t-ConfigPanel-attr">'');',
'    sys.htp.p(''<a href="''',
'        ||case when c_page_report_page is not null then',
'                apex_util.prepare_url(''f?p=''||l_app_id||'':''||c_page_report_page||'':''||l_app_session',
'                                     ||'':::''||c_page_report_page||'',RIR:IREQ_REQUIRES_AUTH:No'')',
'            else',
'                ''#''',
'        end',
'        ||''" class="t-ConfigPanel-attrLink">'');',
'    sys.htp.p(''<span class="t-ConfigPanel-attrLabel">''||c_public_pages_msg||''</span>'');',
'    sys.htp.p(''<span class="t-ConfigPanel-attrValue">''||to_char((l_cnt - l_auth_required),''999G999G990'')',
'        ||''</span>'');',
'    sys.htp.p(''</a>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-ConfigPanel-attr">'');',
'    sys.htp.p(''<a href="''',
'        ||case when c_page_report_page is not null then',
'                apex_util.prepare_url(''f?p=''||l_app_id||'':''||c_page_report_page||'':''||l_app_session',
'                                     ||'':::''||c_page_report_page||'',RIR:IREQ_REQUIRES_AUTH:Yes'')',
'            else',
'                ''#''',
'        end',
'        ||''" class="t-ConfigPanel-attrLink">'');',
'    sys.htp.p(''<span class="t-ConfigPanel-attrLabel">''||c_auth_pages_msg||''</span>'');',
'    sys.htp.p(''<span class="t-ConfigPanel-attrValue">''||to_char(l_auth_required,''999G999G990'')||',
'      ''</span>'');',
'    sys.htp.p(''</a>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-ConfigPanel-attr">'');',
'    sys.htp.p(''<a href="''',
'        ||case when c_page_report_page is not null then',
'                apex_util.prepare_url(''f?p=''||l_app_id||'':''||c_page_report_page||'':''||l_app_session',
'                                     ||'':::''||c_page_report_page||'',RIR:IRNEQ_AUTHORIZATION_SCHEME:No Scheme Applied'')',
'            else',
'                ''#''',
'        end',
'        ||''" class="t-ConfigPanel-attrLink">'');',
'    sys.htp.p(''<span class="t-ConfigPanel-attrLabel">''||c_custom_auth_msg||''</span>'');',
'    sys.htp.p(''<span class="t-ConfigPanel-attrValue">''||to_char(l_auth_scheme,''999G999G990'')||',
'          ''</span>'');',
'    sys.htp.p(''</a>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''</ul>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'    --',
'    return l_retval;    ',
'end auth_admin;'))
,p_api_version=>1
,p_render_function=>'auth_admin'
,p_substitute_attributes=>true
,p_reference_id=>1436051286839742672
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Authorization Administration displays the current authentication scheme together with a count of public pages, pages requiring authentication, and pages with an authorization defined.</p>',
'<p>This plug-in is suitable for adding to the main Administration page to provide an overview of high level security settings.</p>'))
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2476320765090910904)
,p_plugin_id=>wwv_flow_imp.id(1863143678790094738)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Page Report Page'
,p_attribute_type=>'PAGE NUMBER'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Enter or select the page number which has a report listing the pages within the application and the respective role required to access that page.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2476321216431910904)
,p_plugin_id=>wwv_flow_imp.id(1863143678790094738)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Public Pages Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Public Pages'
,p_is_translatable=>true
,p_help_text=>'Enter the label displayed for pages with no authorization defined.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2476321634436910904)
,p_plugin_id=>wwv_flow_imp.id(1863143678790094738)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Authenticated Pages Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Login Required Pages'
,p_is_translatable=>true
,p_help_text=>'Enter the label displayed for pages that require authentication.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2476321994491910905)
,p_plugin_id=>wwv_flow_imp.id(1863143678790094738)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Authorized Pages Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Authorization Protected'
,p_is_translatable=>true
,p_help_text=>'Enter the label displayed for pages where a specific authorization is defined.'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_timelinestatuslist
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1973742431244798956)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_display_name=>'Timeline and Status List'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.TIMELINESTATUSLIST'),'#IMAGE_PREFIX#plugins/com.oracle.apex.timelinestatuslist/1.2/')
,p_javascript_file_urls=>'#PLUGIN_FILES#timelinestatuslist#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render_list_calendar( p_region in apex_plugin.t_region ) is',
'    c_group_col          constant varchar2(255) := p_region.attribute_01;',
'    c_color_col          constant varchar2(255) := p_region.attribute_02;',
'    c_title_col          constant varchar2(255) := p_region.attribute_03;',
'    c_link_col           constant varchar2(255) := p_region.attribute_04;',
'    c_row1_attr1_val_col constant varchar2(255) := p_region.attribute_05;',
'    c_row1_attr2_val_col constant varchar2(255) := p_region.attribute_06;',
'    c_row2_attr1_val_col constant varchar2(255) := p_region.attribute_07;',
'    c_row2_attr2_val_col constant varchar2(255) := p_region.attribute_08;',
'    c_description_1_col  constant varchar2(255) := p_region.attribute_09;',
'    c_description_2_col  constant varchar2(255) := p_region.attribute_10;',
'    c_description_3_col  constant varchar2(255) := p_region.attribute_11;',
'    c_description_4_col  constant varchar2(255) := p_region.attribute_15;',
'    c_group_type         constant varchar2(255) := p_region.attribute_12;',
'    c_status_col         constant varchar2(255) := p_region.attribute_13;',
'    c_color_label_col    constant varchar2(255) := p_region.attribute_14;',
'',
'    l_group_col_no          pls_integer;',
'    l_color_col_no          pls_integer;',
'    l_title_col_no          pls_integer;',
'    l_link_col_no           pls_integer;',
'    l_row1_attr1_val_col_no pls_integer;',
'    l_row1_attr2_val_col_no pls_integer;',
'    l_row2_attr1_val_col_no pls_integer;',
'    l_row2_attr2_val_col_no pls_integer;',
'    l_description_1_col_no  pls_integer;',
'    l_description_2_col_no  pls_integer;',
'    l_description_3_col_no  pls_integer;',
'    l_description_4_col_no  pls_integer;',
'    l_status_col_no         pls_integer;',
'    l_color_label_col_no    pls_integer;',
'',
'    l_date           timestamp with local time zone;',
'    l_last_day       varchar2(8);',
'    l_group          varchar2(4000);',
'    l_color          varchar2(4000);',
'    l_color_label    varchar2(4000);',
'    l_title          varchar2(4000);',
'    l_link           varchar2(4000);',
'    l_row1_attr1_val varchar2(4000);',
'    l_row1_attr1_lbl varchar2(4000);',
'    l_row1_attr2_val varchar2(4000);',
'    l_row1_attr2_lbl varchar2(4000);',
'    l_row2_attr1_val varchar2(4000);',
'    l_row2_attr1_lbl varchar2(4000);',
'    l_row2_attr2_val varchar2(4000);',
'    l_row2_attr2_lbl varchar2(4000);',
'    l_description_1  varchar2(4000);',
'    l_description_2  varchar2(4000);',
'    l_description_3  varchar2(4000);',
'    l_description_4  varchar2(4000);',
'    l_status         varchar2(4000);',
'',
'    --',
'    l_no_data_found     varchar2(32767) := p_region.no_data_found_message;',
'    l_num_rows          pls_integer     := p_region.fetched_rows;',
'    --',
'    l_column_value_list    apex_plugin_util.t_column_value_list2;',
'    l_region_source        varchar2(32767) := p_region.source;',
'',
'    --',
'    l_last_group  varchar2(255) := ''x'';',
'',
'    l_found boolean;',
'    l_count pls_integer := 0;',
'',
'    type vc2_aat is table of varchar2(32767) index by varchar2(255);',
'    l_colors vc2_aat;',
'    l_color_idx varchar2(255);',
'',
'begin',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => l_region_source,',
'                               p_min_columns    => 3,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name,',
'                               p_max_rows       => null );',
'',
'    -- Get the actual column number for the fields we want.',
'    l_group_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Group column'',',
'                        p_column_alias      => c_group_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => null -- might be date, timestamp, etc.',
'                    );',
'',
'    l_color_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Color column'',',
'                        p_column_alias      => c_color_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_color_label_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Color Label column'',',
'                        p_column_alias      => c_color_label_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_status_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Status column'',',
'                        p_column_alias      => c_status_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_title_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Title column'',',
'                        p_column_alias      => c_title_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_link_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Link column'',',
'                        p_column_alias      => c_link_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr1_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''First Attribute Value column'',',
'                        p_column_alias      => c_row1_attr1_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr2_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Second Attribute Value column'',',
'                        p_column_alias      => c_row1_attr2_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr1_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Third Attribute Value column'',',
'                        p_column_alias      => c_row2_attr1_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr2_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Fourth Attribute Value column'',',
'                        p_column_alias      => c_row2_attr2_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_1_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''First Description column'',',
'                        p_column_alias      => c_description_1_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_2_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Second Description column'',',
'                        p_column_alias      => c_description_2_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_3_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Third Description column (allows HTML)'',',
'                        p_column_alias      => c_description_3_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_4_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Fourth Description column (allows HTML)'',',
'                        p_column_alias      => c_description_4_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    -- Loop through the data',
'    if c_group_type = ''D'' then',
'        sys.htp.p(''<div class="t-StatusList t-StatusList--dates">'');',
'    else',
'        sys.htp.p(''<div class="t-StatusList t-StatusList--bullets">'');',
'    end if;',
'',
'    for l_row_num in 1..l_column_value_list(1).value_list.count loop',
'        wwv_flow_plugin_util.set_component_values (',
'            p_column_value_list => l_column_value_list,',
'            p_row_num           => l_row_num );',
'',
'        l_found := true;',
'',
'        if l_group_col_no is not null then',
'            if c_group_type = ''D'' then',
'                if l_column_value_list(l_group_col_no).value_list(l_row_num).date_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).date_value;',
'                elsif l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_value;',
'                elsif l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_tz_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_tz_value;',
'                elsif l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_ltz_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_ltz_value;',
'                else',
'                    -- Couldn''t get a usable date value; ignore this row.',
'                    l_found := false;',
'                end if;',
'            else',
'                l_group := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_group_col_no).data_type,',
'                                p_value     => l_column_value_list(l_group_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'        end if;',
'        if l_found = true and l_count < nvl(l_num_rows,l_count) then',
'            l_count := l_count + 1;',
'            if l_color_col_no is not null then',
'                l_color := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_color_col_no).data_type,',
'                                p_value     => l_column_value_list(l_color_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_color_label_col_no is not null then',
'                l_color_label := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_color_label_col_no).data_type,',
'                                p_value     => l_column_value_list(l_color_label_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_status_col_no is not null then',
'                l_status := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_status_col_no).data_type,',
'                                p_value     => l_column_value_list(l_status_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_title_col_no is not null then',
'                l_title := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_title_col_no).data_type,',
'                                p_value     => l_column_value_list(l_title_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_link_col_no is not null then',
'                l_link := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_link_col_no).data_type,',
'                                p_value     => l_column_value_list(l_link_col_no).value_list(l_row_num) ),',
'                            false );',
'            end if;',
'',
'            if l_row1_attr1_val_col_no is not null then',
'                l_row1_attr1_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row1_attr1_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row1_attr1_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row1_attr1_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row1_attr1_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_row1_attr2_val_col_no is not null then',
'                l_row1_attr2_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row1_attr2_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row1_attr2_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row1_attr2_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row1_attr2_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_row2_attr1_val_col_no is not null then',
'                l_row2_attr1_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row2_attr1_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row2_attr1_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row2_attr1_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row2_attr1_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_row2_attr2_val_col_no is not null then',
'                l_row2_attr2_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row2_attr2_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row2_attr2_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row2_attr2_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row2_attr2_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_description_1_col_no is not null then',
'                l_description_1 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_1_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_1_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output ),0,2000);',
'            end if;',
'',
'            if l_description_2_col_no is not null then',
'                l_description_2 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_2_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_2_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output ),0,2000);',
'            end if;',
'',
'            if l_description_3_col_no is not null then',
'                l_description_3 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_3_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_3_col_no).value_list(l_row_num) ),',
'                            false ),0,2000);',
'            end if;',
'',
'            if l_description_4_col_no is not null then',
'                l_description_4 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_4_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_4_col_no).value_list(l_row_num) ),',
'                            false ),0,2000);',
'            end if;',
'',
'            -- Start of the actual rendering code.',
'            if c_group_type = ''D'' then',
'                if l_last_group != to_char(l_date,''YYYYMM'') then',
'                    l_last_group := to_char(l_date,''YYYYMM'');',
'',
'                    if l_count > 1 then',
'                        -- Not the first row; close the previous group.',
'                        sys.htp.p(''</ul></div>'');',
'                    end if;',
'',
'                    sys.htp.p(''<div class="t-StatusList-block">'');',
'                    sys.htp.p(''<div class="t-StatusList-blockHeader"><span class="t-StatusList-headerTextPrimary">''||trim(to_char(l_date,''Month''))||',
'                        ''</span><span class="t-StatusList-headerTextAlt">''||to_char(l_date,''YYYY'')||''</span></div>'');',
'                    sys.htp.p(''<ul class="t-StatusList-list">'');',
'                end if;',
'            else',
'                if l_last_group != l_group then',
'                    l_last_group := l_group;',
'                    if l_count > 1 then',
'                        -- Not the first row; close the previous group.',
'                        sys.htp.p(''</ul></div>'');',
'                    end if;',
'',
'                    sys.htp.p(''<div class="t-StatusList-block" aria-labelledby="tl_''||trim(l_group)||''">'');',
'                    sys.htp.p(''<div class="t-StatusList-blockHeader" id="tl_''||trim(l_group)||''">''',
'                        ||''<span class="t-StatusList-headerTextPrimary">''||trim(l_group)||''</span></div>'');',
'                    sys.htp.p(''<ul class="t-StatusList-list">'');',
'                end if;',
'            end if;',
'',
'            if l_color_col_no is not null then',
'                -- Limit it down to the colors we support.',
'                l_color := lower(l_color);',
'                if l_color = ''red'' then',
'                    l_color := ''is-danger'';',
'                elsif l_color = ''black'' then',
'                    l_color := ''is-complete'';',
'                elsif l_color = ''blue'' then',
'                    l_color := ''is-info'';',
'                elsif l_color = ''yellow'' then',
'                    l_color := ''is-warning'';',
'                elsif l_color = ''green'' then',
'                    l_color := ''is-success'';',
'                end if;',
'',
'                l_colors(l_color) := l_color_label;',
'            end if;',
'',
'            if c_group_type = ''D'' then',
'                sys.htp.p(''<li class="t-StatusList-item ''||l_color||''" aria-label="''',
'                    ||to_char(l_date,''Month fmDD, YYYY'')||''" aria-describedby="tl_''||to_char(l_date,''DD_MON_YYYY'')||''">''',
'                    ||''<div class="t-StatusList-itemMarker">'');',
'',
'                if l_last_day is null or to_char(l_date,''YYYYMMDD'') != l_last_day',
'                then',
'                    sys.htp.p(''<span class="t-StatusList-marker" role="presentation">''',
'                        ||to_char(l_date,''fmDD'')||''</span>'');',
'                end if;',
'',
'                sys.htp.p(''</div>'');',
'',
'                l_last_day := to_char(l_date, ''YYYYMMDD'');',
'',
'                sys.htp.p(''<div class="t-StatusList-itemBody" id="tl_''||to_char(l_date,''DD_MON_YYYY'')||''_''||l_count||''_''|| p_region.static_id ||''">'');',
'            else',
'                sys.htp.p(''<li class="t-StatusList-item ''||l_color||''" aria-label="''',
'                    ||trim(l_title)||''" aria-describedby="tl_''||trim(l_title)||''">''',
'                    ||''<div class="t-StatusList-itemMarker">''',
'                    ||''<span class="t-StatusList-marker" role="presentation">''',
'                    ||trim(l_title)||''</span></div>'');',
'',
'                sys.htp.p(''<div class="t-StatusList-itemBody" id="tl_''||trim(l_title)||''_''||l_count||''">'');',
'            end if;',
'',
'            sys.htp.p(''<h3 class="t-StatusList-itemTitle">''',
'                ||case when l_link is null then l_title',
'                    else ''<a href="''||apex_util.prepare_url(l_link)||''">''||l_title||''</a>''',
'                    end',
'                ||''</h3>'');',
'',
'            if l_row1_attr1_lbl is not null or l_row1_attr1_val is not null',
'                    or l_row1_attr2_lbl is not null or l_row1_attr2_val is not null then',
'                sys.htp.prn(''<div class="t-StatusList-itemAttrs">'');',
'',
'                if l_status is not null then',
'                    sys.htp.p(''<span class="t-Badge t-Badge--basic t-Badge--xsmall ''',
'                        ||l_color||''">''||l_status||''</span>'');',
'                end if;',
'',
'                if l_row1_attr1_lbl is not null and l_row1_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row1_attr1_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row1_attr1_val||''</span></span>'');',
'                elsif l_row1_attr1_lbl is null and l_row1_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row1_attr1_val||''</span></span>'');',
'                elsif l_row1_attr1_lbl is not null and l_row1_attr1_val is null then',
'                    sys.htp.prn(''<span><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr1.',
'                    null;',
'                end if;',
'',
'                if l_row1_attr2_lbl is not null and l_row1_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row1_attr2_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row1_attr2_val||''</span></span>'');',
'                elsif l_row1_attr2_lbl is null and l_row1_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row1_attr2_val||''</span></span>'');',
'                elsif l_row1_attr2_lbl is not null and l_row1_attr2_val is null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr2.',
'                    null;',
'                end if;',
'                -- sys.htp.prn(''</div>'');',
'            end if;',
'',
'            if l_row2_attr1_lbl is not null or l_row2_attr1_val is not null',
'                    or l_row2_attr2_lbl is not null or l_row2_attr2_val is not null then',
'                -- sys.htp.prn(''<p>'');',
'                if l_row2_attr1_lbl is not null and l_row2_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row2_attr1_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row2_attr1_val||''</span></span>'');',
'                elsif l_row2_attr1_lbl is null and l_row2_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row2_attr1_val||''</span></span>'');',
'                elsif l_row2_attr1_lbl is not null and l_row2_attr1_val is null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr3.',
'                    null;',
'                end if;',
'',
'                if l_row2_attr2_lbl is not null and l_row2_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row2_attr2_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row2_attr2_val||''</span></span>'');',
'                elsif l_row2_attr2_lbl is null and l_row2_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row2_attr2_val||''</span></span>'');',
'                elsif l_row2_attr2_lbl is not null and l_row2_attr2_val is null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr4.',
'                    null;',
'                end if;',
'                sys.htp.prn(''</div>'');',
'            end if;',
'',
'            if l_description_1 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_1||''</p>'');',
'            end if;',
'',
'            if l_description_2 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_2||''</p>'');',
'            end if;',
'',
'            if l_description_3 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_3||''</p>'');',
'            end if;',
'',
'            if l_description_4 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_4||''</p>'');',
'            end if;',
'',
'            sys.htp.prn(''</div></li>'');',
'        end if;',
'    end loop;',
'    if l_count > 0 then',
'        -- Close the HTML.',
'        sys.htp.p(''</ul></div>'');',
'',
'        -- Print Legend',
'        if l_color_label_col_no is not null then',
'            sys.htp.p(''<div class="t-StatusList-legend" style="padding: 8px; border-top: 1px solid rgba(0,0,0,.05); font-size: 11px;">'');',
'            sys.htp.p(''  <strong>Status Color Coding:</strong>'');',
'            l_color_idx := l_colors.first;',
'            while l_color_idx is not null loop',
'                if l_colors(l_color_idx) is not null then',
'                    sys.htp.p(''  <span class="t-Badge t-Badge--basic t-Badge--small ''||apex_escape.html(p_string => l_color_idx)||''">''||apex_escape.html(p_string => l_colors(l_color_idx))||''</span>'');',
'                end if;',
'                l_color_idx := l_colors.next( l_color_idx );',
'            end loop;',
'            sys.htp.p(''</div>'');',
'        end if;',
'    else',
'        sys.htp.p(''<span class="nodatafound">''||l_no_data_found||''</span>'');',
'    end if;',
'    sys.htp.p(''</div>'');',
'end render_list_calendar;',
'',
'function render ( p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin, p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    sys.htp.p(''<div id="'' || p_region.static_id || ''_inner">'');',
'    render_list_calendar( p_region );',
'    sys.htp.p(''</div>'');',
'    ',
'    /* ',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function( apex, util, server, $ ){',
'  window.com_oracle_apex_timeline_status_list = function( regionId, details ) {',
'    function _clear() {',
'      _inner$.empty();',
'    }',
'    function _render( markup ) {',
'      _inner$.html( markup );',
'    }',
'    function _debug( error ) {',
'            if ( error.status >= 200 && error.status < 300 ) {',
'                _render( error.responseText );',
'            } else {',
'                debugger;',
'            }',
'    }',
'    function _refresh() {',
'      server.plugin( details.ajaxIdentifier, { pageItems : details.pageItems }, {',
'        refreshObject : _region$,',
'        clear : _clear,',
'        success : _render,',
'        error : _debug,',
'        loadingIndicator : _inner$,',
'        loadingIndicatorPosition : "append"',
'      });',
'    }',
'',
'    var _region$ = $( "#" + regionId );',
'        var _inner$ = $( "#" + details.innerRegionId );',
'    _region$.on( "apexrefresh", _refresh );',
'  }',
'})( apex, apex.util, apex.server, apex.jQuery );''',
'    );',
'    */',
'    ',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function(){ var a = com_oracle_apex_timeline_status_list('' ||',
'            apex_javascript.add_value(p_region.static_id) ||',
'            ''{'' ||',
'                apex_javascript.add_attribute(''innerRegionId'',  p_region.static_id || ''_inner'' ) ||',
'                apex_javascript.add_attribute(''pageItems'',      apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                apex_javascript.add_attribute(''ajaxIdentifier'', apex_plugin.get_ajax_identifier, false, false) ||',
'            ''});})()'' );',
'    return null;',
'end render;',
'',
'function ajax (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin )',
'    return apex_plugin.t_region_ajax_result is',
'begin',
'    render_list_calendar( p_region );',
'    return null;',
'end ajax;'))
,p_api_version=>1
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:FETCHED_ROWS:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT:COLUMNS:COLUMN_HEADING'
,p_substitute_attributes=>true
,p_reference_id=>9646339904178755041
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Timeline and Status lists are useful for displaying a region with calendar dates and summary information. </p>',
'<p>This plug-in is suitable for adding to Master / Detail pages to show important summary information with dates.</p>'))
,p_version_identifier=>'5.1'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170903670319981169)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Group By Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the column the report will be grouped by.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170904006266981169)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>120
,p_static_id=>'attribute_02'
,p_prompt=>'Color Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the color for the list.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170904393062981170)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Title Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the title for each grouping.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170904821796981170)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Link Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the link for each record.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170905245944981170)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'attribute_05'
,p_prompt=>'First Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the first value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170905678365981170)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'attribute_06'
,p_prompt=>'Second Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the second value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170905988554981171)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'attribute_07'
,p_prompt=>'Third Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the third value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170906479171981171)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'attribute_08'
,p_prompt=>'Fourth Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the fourth value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170906825443981171)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'attribute_09'
,p_prompt=>'Primary Description'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the primary description to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170907202903981176)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'attribute_10'
,p_prompt=>'Secondary Description'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the secondary description to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170907682323981176)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'attribute_11'
,p_prompt=>'Additional Description (with HTML)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds an additional description to be displayed in the report, which allows HTML content.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170908000100981177)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>5
,p_static_id=>'attribute_12'
,p_prompt=>'Display As'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'D'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the region should be displayed as a timeline, based on a given date, or a list.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(170908435896981177)
,p_plugin_attribute_id=>wwv_flow_imp.id(170908000100981177)
,p_display_sequence=>10
,p_display_value=>'Timeline'
,p_return_value=>'D'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(170908902213981177)
,p_plugin_attribute_id=>wwv_flow_imp.id(170908000100981177)
,p_display_sequence=>20
,p_display_value=>'Status List'
,p_return_value=>'L'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170909438405981177)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>20
,p_static_id=>'attribute_13'
,p_prompt=>'Status Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the status to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170909804707981178)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'attribute_14'
,p_prompt=>'Color Label'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_show_in_wizard=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(170904006266981169)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170910282337981178)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>115
,p_static_id=>'attribute_15'
,p_prompt=>'Second Additional Description (with HTML)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds an additional description to be displayed in the report, which allows HTML content.'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(170911527917981179)
,p_plugin_id=>wwv_flow_imp.id(1973742431244798956)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>3
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_tag_cloud
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(10074172349203869160)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.TAG_CLOUD'
,p_display_name=>'Tag Cloud'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.TAG_CLOUD'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- Constants for the columns of our region source query',
'    c_tag_col   constant pls_integer := 1;',
'    c_count_col constant pls_integer := 2;',
'',
'    -- attributes of the plug-in',
'    l_target_url           varchar2(4000)  := p_region.attribute_01;',
'    l_max_display_tags     number          := p_region.attribute_02;',
'    l_show_count           boolean         := nvl(p_region.attribute_03,''Y'') = ''Y'';',
'    l_no_data_found     varchar2(32767) := p_region.no_data_found_message;',
'',
'    l_valid_data_type_list wwv_flow_global.vc_arr2;',
'    l_column_value_list    apex_plugin_util.t_column_value_list2;',
'    l_printed_records    number := 0;',
'    l_available_records  number := 20;',
'    l_max                number;',
'    l_min                number;',
'    l_total              number := 0;',
'    l_cnts               number;',
'    l_tag                varchar2(4000);',
'',
'    l_class_size         number;',
'    l_class              varchar2(30);',
'',
'begin',
'    -- don''t need to load css file, styles are contained within theme_42',
'    ',
'    -- apex_css.add_file (',
'    --     p_name      => ''tag_cloud'',',
'    --     p_directory => p_plugin.file_prefix,',
'    --     p_version   => null );',
'',
'',
'    -- define the valid column data types for the region query',
'    l_valid_data_type_list(c_tag_col)   := apex_plugin_util.c_data_type_varchar2;',
'    l_valid_data_type_list(c_count_col) := apex_plugin_util.c_data_type_number;',
'',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => 2,',
'                               p_data_type_list => l_valid_data_type_list,',
'                               p_component_name => p_region.name );',
'',
'   l_available_records := l_column_value_list(c_tag_col).value_list.count;',
'',
'   -----------------------------------------------',
'   -- Determine total count and maximum tag counts',
'   --',
'   l_max := 0;',
'   l_min := 1000;',
'   FOR i in 1.. l_column_value_list(c_count_col).value_list.count loop',
'      l_cnts := l_column_value_list(c_count_col).value_list(i).number_value;',
'      l_total := l_total + l_cnts;',
'      if l_cnts > l_max then',
'         l_max := l_cnts;',
'      end if;',
'      if l_cnts < l_min then',
'         l_min := l_cnts;',
'      end if;',
'   end loop;',
'   if l_max = 0 then l_max := 1; end if;',
'',
'',
'   l_class_size := round((l_max-l_min)/6);',
'',
'   ------------------------',
'   -- Generate tag cloud --',
'   --',
'   ',
'   sys.htp.prn(''<ul class="a-TagCloud">'');',
'',
'   for i in 1.. l_column_value_list(c_tag_col).value_list.count loop',
'       l_printed_records := l_printed_records + 1;',
'       l_tag := apex_escape.html(l_column_value_list(c_tag_col).value_list(i).varchar2_value);',
'       l_cnts := l_column_value_list(c_count_col).value_list(i).number_value;',
'       if l_cnts < l_min + l_class_size then',
'          l_class := ''size1'';',
'       elsif l_cnts < l_min + (l_class_size*2) then',
'          l_class := ''size2'';',
'       elsif l_cnts < l_min + (l_class_size*3) then',
'          l_class := ''size3'';',
'       elsif l_cnts < l_min + (l_class_size*4) then',
'          l_class := ''size4'';',
'       elsif l_cnts < l_min + (l_class_size*5) then',
'          l_class := ''size5'';',
'       else l_class := ''size6'';',
'       end if;      ',
'       ',
'        sys.htp.prn(''<li class="a-TagCloud-item">''',
'            ||apex_plugin_util.get_link(',
'                p_url  => replace(l_target_url,''#TAG#'',l_tag),',
'                p_text => l_tag',
'                            ||case when l_show_count then',
'                                '' <span class="a-TagCloud-count">''||l_cnts||''</span>''',
'                            end,',
'                p_escape_text => false,',
'                p_attributes => ''class="a-TagCloud-link a-TagCloud-link--'' ||l_class||''"'')',
'            ||''</li>'');',
'',
'       if  l_printed_records > l_max_display_tags then',
'           exit;',
'       end if;',
'   end loop;',
'',
'   sys.htp.prn(''</ul>'');',
'   if l_printed_records = 0 then',
'       sys.htp.p(''<span class="nodatafound">'' || l_no_data_found || ''</span>'');',
'   end if;',
'',
'   return null;',
'end render;'))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL:NO_DATA_FOUND_MESSAGE'
,p_substitute_attributes=>true
,p_reference_id=>7838196871864100925
,p_subscribe_plugin_settings=>true
,p_help_text=>'<p>Use this region type plug-in to render a tag cloud. The developer supplies a query returning the tag name and count. </p>'
,p_version_identifier=>'5.0.1'
,p_files_version=>4
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(684251724911627158)
,p_plugin_id=>wwv_flow_imp.id(10074172349203869160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>'f?p=&APP_ID.:69:&APP_SESSION.::::P69_SEARCH:#TAG#'
,p_help_text=>'Enter a target page to be called when the user clicks a tag. Use the #TAG# substitution for the tag that is clicked.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(684252109844627158)
,p_plugin_id=>wwv_flow_imp.id(10074172349203869160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Maximum Tags'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>4
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>'Enter the maximum number of tags to display.'
,p_attribute_comment=>'Enter the maximum number of tags to display in the region.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(684252541803627158)
,p_plugin_id=>wwv_flow_imp.id(10074172349203869160)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Show Count'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether to show the tag count next to the tag.'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(684253527816627160)
,p_plugin_id=>wwv_flow_imp.id(10074172349203869160)
,p_name=>'SOURCE_SQL'
,p_is_required=>false
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<strong>Example 1: Render tag cloud with all tags.</strong>',
'<pre>',
'select tag, count(*) cnt ',
'  from your_tag_table',
' group by tag',
' order by 1',
'</pre>',
'</p>',
'',
'<p>',
'<b>Example 2: Render tag cloud with tags specific to a content type.</b>',
'<pre>',
'select tag, count(*) cnt ',
'  from your_tag_table',
' where content_type = ''DOCUMENT''',
' group by tag',
' order by 1',
'</pre>',
'</p>',
''))
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '092E746167436C6F7564207B7D0A092E746167436C6F756420756C207B0A09096C6973742D7374796C653A206E6F6E653B0A09096D617267696E3A20303B0A090970616464696E673A20303B0A09097D0A09092E746167436C6F7564206C69207B0A0909';
wwv_flow_imp.g_varchar2_table(2) := '09646973706C61793A20696E6C696E653B0A0909097D0A0909092E746167436C6F7564206C692061207B0A0909090970616464696E673A2030203570783B0A09090909666F6E743A206E6F726D616C20313270782F3230707820417269616C2C2073616E';
wwv_flow_imp.g_varchar2_table(3) := '732D73657269663B0A09090909636F6C6F723A20233030303B0A09090909746578742D736861646F773A20302031707820302072676261283235352C3235352C3235352C2E3735293B0A090909092D6D6F7A2D626F726465722D7261646975733A203370';
wwv_flow_imp.g_varchar2_table(4) := '783B0A090909092D7765626B69742D626F726465722D7261646975733A203370783B0A09090909626F726465722D7261646975733A203370783B0A09090909626F726465722D72696768743A2031707820736F6C696420234646463B0A09090909626F72';
wwv_flow_imp.g_varchar2_table(5) := '6465722D626F74746F6D3A2031707820736F6C696420234646463B0A09090909746578742D6465636F726174696F6E3A206E6F6E653B0A09090909646973706C61793A20696E6C696E652D626C6F636B3B0A090909096D617267696E3A20302033707820';
wwv_flow_imp.g_varchar2_table(6) := '32707820303B0A090909097D0A090909092E746167436C6F7564206C6920613A686F766572207B0A09090909096261636B67726F756E642D636F6C6F723A20234545453B0A0909090909746578742D6465636F726174696F6E3A206E6F6E653B0A090909';
wwv_flow_imp.g_varchar2_table(7) := '0909626F726465722D626F74746F6D3A2031707820736F6C696420233939393B0A0909090909626F726465722D72696768743A2031707820736F6C696420233939393B0A09090909097D0A09090909092E746167436C6F7564206C6920613A6163746976';
wwv_flow_imp.g_varchar2_table(8) := '65207B0A0909090909096261636B67726F756E642D636F6C6F723A20234444443B0A09090909097D0A0A090909092E746167436C6F7564206C6920612E73697A6531207B666F6E742D73697A653A20313170783B206C696E652D6865696768743A203136';
wwv_flow_imp.g_varchar2_table(9) := '70787D0A090909092E746167436C6F7564206C6920612E73697A6532207B666F6E742D73697A653A20313370783B6C696E652D6865696768743A20323070787D0A090909092E746167436C6F7564206C6920612E73697A6533207B666F6E742D73697A65';
wwv_flow_imp.g_varchar2_table(10) := '3A20313670783B6C696E652D6865696768743A20323470787D0A090909092E746167436C6F7564206C6920612E73697A6534207B666F6E742D73697A653A20313770783B6C696E652D6865696768743A20323870787D0A090909092E746167436C6F7564';
wwv_flow_imp.g_varchar2_table(11) := '206C6920612E73697A6535207B666F6E742D73697A653A20313870783B6C696E652D6865696768743A20333070787D0A090909092E746167436C6F7564206C6920612E73697A6536207B666F6E742D73697A653A20313970783B6C696E652D6865696768';
wwv_flow_imp.g_varchar2_table(12) := '743A20333270787D0A0A090909092E746167436C6F7564206C692061207370616E207B0A0909090909646973706C61793A20696E6C696E652D626C6F636B3B0A09090909096D617267696E2D6C6566743A203370783B0A090909090970616464696E673A';
wwv_flow_imp.g_varchar2_table(13) := '20303B0A0909090909666F6E742D7765696768743A20626F6C643B0A0909090909636F6C6F723A20233939393B0A09090909097D0A09090909092E746167436C6F7564206C6920613A686F766572207370616E207B0A0909090909097D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(684254265978627160)
,p_plugin_id=>wwv_flow_imp.id(10074172349203869160)
,p_file_name=>'tag_cloud.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'0'
,p_alias=>'0'
,p_step_title=>'0'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'&APPLICATION_TITLE. - Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949832234238591801)
,p_javascript_file_urls=>'#APP_IMAGES#gc/apxColor.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Badge.apex-cal-default { background-color: #2578CF; border-color: #2578CF; color: #FFFFFF; }',
'.t-Badge.apex-cal-black { background-color: #303030; border-color: #303030; color: #FFFFFF; }',
'.t-Badge.apex-cal-blue { background-color: #4183D7; border-color: #4183D7; color: #FFFFFF; }',
'.t-Badge.apex-cal-bluesky { background-color: #6BB9F0; border-color: #6BB9F0; color: #404040; }',
'.t-Badge.apex-cal-brown { background-color: #D88935; border-color: #D88935; color: #404040; }',
'.t-Badge.apex-cal-cyan { background-color: #1ABC9C; border-color: #1ABC9C; color: #404040; }',
'.t-Badge.apex-cal-darkblue { background-color: #1F5F97; border-color: #1F5F97; color: #FFFFFF; }',
'.t-Badge.apex-cal-gray { background-color: #A0A0A0; border-color: #A0A0A0; color: #404040; }',
'.t-Badge.apex-cal-green { background-color: #2ECC71; border-color: #2ECC71; color: #404040; }',
'.t-Badge.apex-cal-lime { background-color: #28A346; border-color: #28A346; color: #FFFFFF; }',
'.t-Badge.apex-cal-orange { background-color: #F39C12; border-color: #F39C12; color: #404040; }',
'.t-Badge.apex-cal-red { background-color: #D91E18; border-color: #D91E18; color: #FFFFFF; }',
'.t-Badge.apex-cal-silver { background-color: #BDC3C7; border-color: #BDC3C7; color: #404040; }',
'.t-Badge.apex-cal-white { background-color: #F0F0F0; border-color: #F0F0F0; color: #404040; }',
'.t-Badge.apex-cal-yellow { background-color: #F1C40F; border-color: #F1C40F; color: #404040; }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>About this Application</h2>',
'<p>The Team Calendar application gives you a way to list all your events on an easy to use, Web-accessible calendar. The Home page for the Team Calendar displays events in a monthly, weekly or daily format, with embedded links to detailed information'
||' about each event. You can also create customized reports on events.</p>',
'<p>',
'Each event is classified by event type and automatically displayed in an associated color. You can create your own event types or modify existing event type attributes.</p>',
'<p>',
'You can send emails to individuals or teams with information about upcoming meetings, and you have the ability to create your own teams to match your needs.</p>',
''))
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1225458893464051941)
,p_name=>'Notifications'
,p_display_sequence=>10
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, ',
'       nvl(lower(NOTIFICATION_TYPE),''yellow'') as ALERT_TYPE, ',
'       NOTIFICATION_NAME as ALERT_TITLE, ',
'       NOTIFICATION_DESCRIPTION as ALERT_DESC,',
'       '''' alert_action',
'  from EBA_CA_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)',
' order by nvl(DISPLAY_SEQUENCE,0),NOTIFICATION_NAME'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_CA_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2882902941739462796
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1225459182266051942)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943747791298669267)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943748195017669270)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943748596591669270)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Desc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943754524783674170)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Action'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1556090423873463779)
,p_plug_name=>'Events Calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.event_id ',
', case when et.display_color is not null then',
'    ''apex-cal-''||',
'    (select lower(cp.color_name) from eba_ca_color_prefs cp where cp.bg_color = et.display_color)',
'  end css_class',
', e.event_name ',
', case when e.display_time = ''N'' then',
'    trunc(e.event_date_time)',
'  else ',
'    e.event_date_time',
'  end event_date_time',
', to_char(e.event_date_time,v(''APP_TIME_FORMAT'')) disp_time',
', substr (case when nvl(display_time,''Y'') = ''N'' then',
'            ''[All Day] ''',
'           else',
'             ''['' || ltrim(to_char(e.event_date_time,''HH:MIam''),''0'')',
'             || '' - '' || ltrim(to_char(e.event_date_time + duration/24,''HH:MIam''),''0'')',
'--             || '' ('' || case when e.duration = 0  then ''0 mins''',
'--                             when e.duration = .25 then ''15 mins''',
'--                             when e.duration = .5 then ''30 mins''',
'--                             when e.duration = .75 then ''45 mins''',
'--                             when e.duration = 1 then ''1 hr''',
'--                             when e.duration > 1 then to_char(trunc(e.duration)) || '' hrs''',
'--                               || case when e.duration - trunc(e.duration) = 0  then ''''',
'--                                       when e.duration - trunc(e.duration) = .25 then '' 15 mins''',
'--                                       when e.duration - trunc(e.duration) = .5 then '' 30 mins''',
'--                                       when e.duration - trunc(e.duration) = .75 then '' 45 mins''',
'--                                  end',
'--                        end',
'--             || '')] ''',
'             || ''] ''',
'           end ||',
'           case when :MULTIPLE_CAL_BO = ''Include'' then nvl(c.short_name, ''Default'') ||'': '' end || ',
'           e.event_name,1,255) ||',
'           case when exists (select 1 from EBA_CA_FILES',
'                             where event_id = e.event_id)',
'                then '' (a)''',
'           end disp_col',
'from eba_ca_events e',
',    eba_ca_event_types et',
',    eba_ca_calendars c',
'where e.type_id = et.type_id',
'and   e.calendar_id = c.calendar_id (+)',
'and   (   nvl(:EVENT_TYPES_FILTER,''0'') = ''0'' ',
'       or instr('':''||:EVENT_TYPES_FILTER||'':'', '':''||nvl(e.type_id,''-1'')||'':'') > 0',
'      )',
'and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'       or (    nvl(:CALENDARS_FILTER,''0'') = ''0'' ',
'           and (   e.calendar_id is null',
'                or c.public_view_yn = ''Y''',
'                or exists (select ''x''',
'                           from eba_ca_users u',
'                           where u.username = :APP_USER',
'                           and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                  or (access_level_id = 3 and restricted_to is null)',
'                                 )',
'                          )',
'               ) ',
'          )',
'       or instr(:CALENDARS_FILTER,nvl(e.calendar_id,''-1'')) > 0',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (:CONTACT_EMAIL is null',
'           or instr(upper(e.contact_email), :CONTACT_EMAIL) > 0',
'          )',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(et.internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'order by e.event_date_time'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_required_patch=>wwv_flow_imp.id(1702553619385177411)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'month:list:navigation',
  'create_link', 'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_EVENT_DATE_D:&APEX$NEW_START_DATE.',
  'css_class', 'CSS_CLASS',
  'display_column', 'DISP_COL',
  'drag_and_drop', 'Y',
  'drag_and_drop_plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'declare',
    '    l_recur_event boolean := false;',
    '    l_old_date    timestamp with time zone;',
    'begin',
    '	for c1 in (select s.series_id, start_date, end_date',
    '               from eba_ca_series s, eba_ca_events e',
    '               where s.series_id = e.series_id',
    '               and e.event_id = :APEX$PK_VALUE)',
    '    loop',
    '        l_recur_event := true;',
    '        exit;',
    '    end loop;',
    '',
    '    if not l_recur_event then',
    '        update eba_ca_events',
    '        set event_date_time = to_timestamp(:APEX$NEW_START_DATE,  ''YYYYMMDDHH24MISS'')',
    '        where event_id = :APEX$PK_VALUE;',
    '    end if;',
    'end;')),
  'first_hour', '9',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'EVENT_ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'EVENT_DATE_TIME',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_EVENT_ID,P3_PREV_PAGE:&EVENT_ID.,1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1702544201694087051)
,p_plug_name=>'Events Calendar'
,p_region_name=>'events-calendar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.event_id ',
', case when et.display_color is not null then',
'    ''a-luminance-color apex-cal-''||',
'    (select lower(cp.color_name) from eba_ca_color_prefs cp where cp.bg_color = et.display_color)',
'  end css_class',
', e.event_name ',
', case when e.display_time = ''N'' then',
'    trunc(e.event_date_time)',
'  else e.event_date_time',
'  end event_date_time',
', to_char(e.event_date_time,v(''APP_TIME_FORMAT'')) disp_time',
', decode(nvl(display_time, ''Y''), ''Y'', e.event_date_time + (duration/24)',
'                                    , trunc(e.event_date_time) + 1',
'        ) end_time',
', substr (case when nvl(display_time,''Y'') = ''N'' then',
'             ''[All Day] ''',
'           else',
'             null',
'           end || ',
'           case when :MULTIPLE_CAL_BO = ''Include'' then nvl(c.short_name, ''Default'') ||'': '' end || ',
'           e.event_name,1,255) ||',
'           case when exists (select 1 from EBA_CA_FILES',
'                             where event_id = e.event_id)',
'                then '' (a)''',
'           end disp_col',
'from eba_ca_events e',
',    eba_ca_event_types et',
',    eba_ca_calendars c',
'where e.type_id = et.type_id',
'and   e.calendar_id = c.calendar_id (+)',
'and   (   nvl(:EVENT_TYPES_FILTER,''0'') = ''0'' ',
'       or instr('':''||:EVENT_TYPES_FILTER||'':'', '':''||nvl(e.type_id,''-1'')||'':'') > 0',
'      )',
'and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'       or (    nvl(:CALENDARS_FILTER,''0'') = ''0'' ',
'           and (   e.calendar_id is null',
'                or c.public_view_yn = ''Y''',
'                or exists (select ''x''',
'                           from eba_ca_users u',
'                           where u.username = :APP_USER',
'                           and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                  or (access_level_id = 3 and restricted_to is null)',
'                                 )',
'                          )',
'               ) ',
'          )',
'       or instr(:CALENDARS_FILTER,nvl(e.calendar_id,''-1'')) > 0',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (:CONTACT_EMAIL is null',
'           or instr(upper(e.contact_email), :CONTACT_EMAIL) > 0',
'          )',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(et.internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'order by e.event_date_time',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_required_patch=>-wwv_flow_imp.id(1702553619385177411)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_export', 'ICAL',
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'create_link', 'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_EVENT_DATE_D:&APEX$NEW_START_DATE.',
  'css_class', 'CSS_CLASS',
  'display_column', 'DISP_COL',
  'drag_and_drop', 'Y',
  'drag_and_drop_plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'declare',
    '    l_recur_event boolean := false;',
    '    l_old_date    timestamp with time zone;',
    'begin',
    '	for c1 in (select s.series_id, start_date, end_date',
    '               from eba_ca_series s, eba_ca_events e',
    '               where s.series_id = e.series_id',
    '               and e.event_id = :APEX$PK_VALUE)',
    '    loop',
    '        l_recur_event := true;',
    '        exit;',
    '    end loop;',
    '',
    '    if not l_recur_event then',
    '        update eba_ca_events',
    '        set event_date_time = to_timestamp(:APEX$NEW_START_DATE,  ''YYYYMMDDHH24MISS'')',
    '        where event_id = :APEX$PK_VALUE;',
    '    end if;',
    'end;')),
  'end_date_column', 'END_TIME',
  'first_hour', '8',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'primary_key_column', 'EVENT_ID',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'EVENT_DATE_TIME',
  'time_format', '12',
  'view_edit_link', 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_EVENT_ID,P3_PREV_PAGE:&EVENT_ID.,1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1726273520898509097)
,p_plug_name=>'&APPLICATION_TITLE.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ( select preference_value',
'            from eba_ca_preferences',
'            where preference_name = ''APPLICATION_SUBTITLE''',
'            union all',
'            select ''Create, manage, and share calendar events.''',
'            from dual',
'            where not exists ( select null',
'                               from eba_ca_preferences',
'                               where preference_name = ''APPLICATION_SUBTITLE'')',
'          ) loop',
'    sys.htp.p(''<p>''||apex_escape.html(c1.preference_value)||''</p>'');',
'end loop;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1742597003711168077)
,p_plug_name=>'ACL Warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--defaultIcons:t-Alert--warning:t-Alert--horizontal'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_WARNING'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''N'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'f?p=&APP_ID.:SETTINGS:&SESSION.::&DEBUG.:RP::')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1874796684003207062)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-expanded:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1702548916615087098)
,p_name=>'Calendars'
,p_parent_plug_id=>wwv_flow_imp.id(1874796684003207062)
,p_template=>4072358936313175081
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d',
'  from',
'(',
'select ''Default'' d,',
'       1 ob',
'  from dual',
' where exists (select 1 from eba_ca_events',
'                where calendar_id is null)',
' and   (   nvl(:CALENDARS_FILTER,''0'') = ''0''',
'        or instr(:CALENDARS_FILTER, ''-1'') > 0',
'       )',
'union',
'select short_name ||'' - ''|| calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       2 ob',
'  from eba_ca_calendars c',
'  where (   (     nvl(:CALENDARS_FILTER,''0'') = ''0'' ',
'              and  (   c.public_view_yn = ''Y''',
'                    or exists (select ''x''',
'                               from eba_ca_users u',
'                               where u.username = :APP_USER',
'                               and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                      or (access_level_id = 3 and restricted_to is null)',
'                                     )',
'                               )',
'                   ) ',
'              )',
'           or instr('':''||:CALENDARS_FILTER||'':'','':''||nvl(calendar_id,''-1'')||'':'') > 0',
'          )',
')',
' order by ob, d'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1874795503469207050)
,p_query_column_id=>1
,p_column_alias=>'D'
,p_column_display_sequence=>1
,p_column_heading=>'Calendars'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5576038504607525860)
,p_name=>'Contact Email'
,p_parent_plug_id=>wwv_flow_imp.id(1874796684003207062)
,p_template=>4072358936313175081
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(:CONTACT_EMAIL, ''- All Contacts -'') contact_email',
'from dual'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x'' from',
'eba_ca_events where contact_email is not null;'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1886783990597642958)
,p_query_column_id=>1
,p_column_alias=>'CONTACT_EMAIL'
,p_column_display_sequence=>1
,p_column_heading=>'Contact Email'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7985687663113097851)
,p_name=>'Event Types'
,p_region_name=>'event-types-report'
,p_parent_plug_id=>wwv_flow_imp.id(1874796684003207062)
,p_template=>4072358936313175081
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(a.event_type, '' '') within group (order by a.type_name) event_types',
'from (select type_name,',
'       case when display_color is not null',
'            then ''<span class="a-luminance-color t-Badge t-Badge--basic t-Badge--small apex-cal-''||apex_escape.html(lower(cp.color_name))||''">''|| ',
'                 apex_escape.html(type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) ) || ''</span>''',
'            else ''<span class="a-luminance-color t-Badge t-Badge--basic t-Badge--small" style="background-color:'' || apex_escape.html(cp.BG_COLOR) || '';">''||  ',
'                 apex_escape.html(type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) ) || ''</span>''',
'            end event_type',
'from eba_ca_event_types et',
',    eba_ca_color_prefs cp',
'where et.color_pref_id = cp.id',
'and   (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'and   (   nvl(:EVENT_TYPES_FILTER,''0'') = ''0'' ',
'       or instr('':''||:EVENT_TYPES_FILTER||'':'','':''||nvl(type_id,''-1'')||'':'') > 0',
'      )',
') a',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_CA_EVENT_TYPES'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1874799016658207085)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPES'
,p_column_display_sequence=>1
,p_column_heading=>'Event Types'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3266605181185076376)
,p_plug_name=>'Timezone'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' "TIMEZONE"',
'',
' '))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'Y',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265804878069144385)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1726273520898509097)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1702548287497087092)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1874796684003207062)
,p_button_name=>'FILTER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Update Filters'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-wrench'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1177491323129824278)
,p_branch_action=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(33200767805605427)
,p_computation_sequence=>10
,p_computation_item=>'EVENT_TYPES_FILTER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'nvl(apex_util.get_preference ( ',
'              p_preference => ''EVENT_TYPES_FILTER'', ',
'              p_user       => :APP_USER ),0)'))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3265705990424889439)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(1893491184821065255)
,p_computation_sequence=>30
,p_computation_item=>'CONTACT_EMAIL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
,p_compute_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x''',
'from eba_ca_events',
'where contact_email is not null'))
,p_compute_when_type=>'NOT_EXISTS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1725627517270624786)
,p_name=>'Refresh Calendar for Create'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3265804878069144385)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725627555197624787)
,p_event_id=>wwv_flow_imp.id(1725627517270624786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1702544201694087051)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1702548500059087094)
,p_event_id=>wwv_flow_imp.id(1725627517270624786)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1556090423873463779)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725627983320624791)
,p_event_id=>wwv_flow_imp.id(1725627517270624786)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Event added.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1874795927486207054)
,p_name=>'Refresh Calendar for Filter'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1702548287497087092)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874796025277207055)
,p_event_id=>wwv_flow_imp.id(1874795927486207054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1556090423873463779)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874796077974207056)
,p_event_id=>wwv_flow_imp.id(1874795927486207054)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1702544201694087051)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874796369676207059)
,p_event_id=>wwv_flow_imp.id(1874795927486207054)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7985687663113097851)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874796269528207058)
,p_event_id=>wwv_flow_imp.id(1874795927486207054)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1702548916615087098)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874799168954207087)
,p_event_id=>wwv_flow_imp.id(1874795927486207054)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5576038504607525860)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874796198425207057)
,p_event_id=>wwv_flow_imp.id(1874795927486207054)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess(''Filters applied.'');',
''))
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Search'
,p_alias=>'SEARCH'
,p_step_title=>'&APPLICATION_TITLE. - Search'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949832234238591801)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'By default this page shows all upcoming events. From this page you can edit any existing event by clicking the <strong>Edit</strong> icon (pencil) next to the event. Click the <strong>Add Event</strong> button to add a new event. Click the <strong>De'
||'lete Multiple Events</strong> button to delete multiple events.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1237048284231799793)
,p_name=>'Notifications'
,p_display_sequence=>10
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, ',
'       nvl(lower(NOTIFICATION_TYPE),''yellow'') as ALERT_TYPE,',
'       NOTIFICATION_NAME alert_title,',
'       NOTIFICATION_DESCRIPTION alert_desc,',
'       '''' alert_action',
'  from EBA_CA_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)',
' order by nvl(DISPLAY_SEQUENCE,0),NOTIFICATION_NAME'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2882902941739462796
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1237048470593799869)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943771287499690257)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943771666055690257)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943772095738690258)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Desc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943772551490690258)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Action'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1785847625602090050)
,p_plug_name=>'breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3266605981662085909)
,p_plug_name=>'Timezone'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' "TIMEZONE"',
'',
' '))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'Y',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3267120789046509580)
,p_plug_name=>'hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8422115389460410632)
,p_plug_name=>'Events'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EVENT_ID',
',      e.event_name',
',      case when et.display_color is not null then ',
'         ''<span style="white-space:nowrap;">'' ',
'         || apex_escape.html(et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null)) || ''</span>''',
'       else ',
'         ''<span style="white-space:nowrap;">'' ',
'         || apex_escape.html(et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null)) || ''</span>''',
'       end event_type',
',      e.EVENT_DATE_TIME event_date',
',      case when e.display_time = ''Y'' then ',
'          e.EVENT_DATE_TIME ',
'       else ',
'         null',
'       end event_start_time',
',      e.DURATION',
',      case when e.duration = 0  then ''0 mins''',
'            when e.duration = .25 then ''15 mins''',
'            when e.duration = .5 then ''30 mins''',
'            when e.duration = .75 then ''45 mins''',
'            when e.duration = 1 then ''1 hr''',
'            when e.duration > 1 then to_char(trunc(e.duration)) || '' hrs''',
'              || case when e.duration - trunc(e.duration) = 0  then ''''',
'                      when e.duration - trunc(e.duration) = .25 then '' 15 mins''',
'                      when e.duration - trunc(e.duration) = .5 then '' 30 mins''',
'                      when e.duration - trunc(e.duration) = .75 then '' 45 mins''',
'                 end',
'            end disp_duration',
',      e.EVENT_DESC',
',      e.CONTACT_PERSON',
',      e.location',
',      case when e.link_url_1 is not null or',
'                 e.link_url_2 is not null or',
'                 e.link_url_3 is not null ',
'            then ''Y''',
'            else null',
'            end links',
',      decode(decode(e.series_id, null, null, ''Y''),''Y'',''Yes'',''N'',''No'',decode(e.series_id, null, null, ''Y'')) recur_flag',
',      eba_ca_api.get_timeframes(e.event_id) timeframes',
',      e.CREATED_ON',
',      lower(e.CREATED_BY) created_by',
',      e.LAST_UPDATED_ON',
',      lower(e.LAST_UPDATED_BY) last_updated_by',
',      e.tags',
',      decode(e.calendar_id, null, ''Default''',
'              , c.short_name || '' - '' || c.calendar_name ',
'                || decode(c.public_view_yn, ''Y'', null, '' (Private)'')',
'             ) calendar',
'from eba_ca_events e',
',    eba_ca_event_types et',
',    eba_ca_calendars c',
'where e.type_id = et.type_id',
'and   e.calendar_id = c.calendar_id (+)',
'and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'       or (   e.calendar_id is null',
'           or (   c.public_view_yn = ''Y''',
'               or exists (select ''x''',
'                          from eba_ca_users u',
'                          where u.username = :APP_USER',
'                          and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                 or (access_level_id = 3 and restricted_to is null)',
'                                )',
'                         )',
'              )',
'          )',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(et.internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'and   (   :P2_TIMEFRAME is null ',
'       or (    trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                 >= (select start_date ',
'                     from EBA_ca_timeframes',
'                     where :P2_TIMEFRAME = tf_id',
'                    ) ',
'           and trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                 <= (select end_date ',
'                     from EBA_ca_timeframes',
'                     where :P2_TIMEFRAME = tf_id',
'                    )',
'          )',
'      )'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8422115588449410634)
,p_name=>'EBA_CA_EVENTS'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_EVENT_ID,P3_PREV_PAGE:#EVENT_ID#,2'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'aria-label="Edit #EVENT_NAME#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>7750611519607594047
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(8422115783257410643)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(8422115689837410637)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422115895706410644)
,p_db_column_name=>'EVENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Event ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422116478021410649)
,p_db_column_name=>'EVENT_TYPE'
,p_display_order=>2
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'N'
,p_column_label=>'Event Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422115994194410648)
,p_db_column_name=>'EVENT_NAME'
,p_display_order=>3
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'B'
,p_column_label=>'Event Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_help_text=>'Name of the event.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422116093701410649)
,p_db_column_name=>'EVENT_DESC'
,p_display_order=>8
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'H'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_help_text=>'Description of the event.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422116174136410649)
,p_db_column_name=>'CONTACT_PERSON'
,p_display_order=>9
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'I'
,p_column_label=>'Contact Person'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_help_text=>'Person to contact for more information.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422116585841410649)
,p_db_column_name=>'RECUR_FLAG'
,p_display_order=>10
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'R'
,p_column_label=>'Recurring'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422116265934410649)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>11
,p_group_id=>wwv_flow_imp.id(8422115689837410637)
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who created the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422116393740410649)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>12
,p_group_id=>wwv_flow_imp.id(8422115689837410637)
,p_column_identifier=>'M'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8530404473430584476)
,p_db_column_name=>'LOCATION'
,p_display_order=>18
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'X'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7978626843859733266)
,p_db_column_name=>'LINKS'
,p_display_order=>21
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'AA'
,p_column_label=>'Links'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043856972310513575)
,p_db_column_name=>'DISP_DURATION'
,p_display_order=>24
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'AD'
,p_column_label=>'Duration'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8048769170274947831)
,p_db_column_name=>'EVENT_DATE'
,p_display_order=>25
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'AE'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8048769261062947831)
,p_db_column_name=>'EVENT_START_TIME'
,p_display_order=>26
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'AF'
,p_column_label=>'Start Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'&APP_TIME_FORMAT.'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8048769360600947831)
,p_db_column_name=>'TIMEFRAMES'
,p_display_order=>27
,p_group_id=>wwv_flow_imp.id(8422115783257410643)
,p_column_identifier=>'AG'
,p_column_label=>'Timeframes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(8048774563741974302)
,p_rpt_show_filter_lov=>'2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8048769455502947832)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>28
,p_group_id=>wwv_flow_imp.id(8422115689837410637)
,p_column_identifier=>'AH'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8048769554257947832)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>29
,p_group_id=>wwv_flow_imp.id(8422115689837410637)
,p_column_identifier=>'AI'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265789096871932207)
,p_db_column_name=>'TAGS'
,p_display_order=>30
,p_column_identifier=>'AJ'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3313277088734540685)
,p_db_column_name=>'DURATION'
,p_display_order=>31
,p_column_identifier=>'AK'
,p_column_label=>'Duration'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1874797083941207066)
,p_db_column_name=>'CALENDAR'
,p_display_order=>41
,p_column_identifier=>'AL'
,p_column_label=>'Calendar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8422117196769410650)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4487536'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EVENT_NAME:EVENT_TYPE:CALENDAR:EVENT_DATE:EVENT_START_TIME:DISP_DURATION:CONTACT_PERSON:LOCATION:TAGS:RECUR_FLAG:'
,p_sort_column_1=>'EVENT_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'EVENT_START_TIME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'EVENT_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1886815331486920293)
,p_report_id=>wwv_flow_imp.id(8422117196769410650)
,p_name=>'Only future events'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'  AE >= decode(AK,''All Day'', trunc(sysdate), sysdate - (AK/24))'
,p_condition_sql=>'  "EVENT_DATE" >= decode("DURATION",''All Day'', trunc(sysdate), sysdate - ("DURATION"/24))'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265701369168873882)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1785847625602090050)
,p_button_name=>'DELETE_MULTIPLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight:t-Button--pillStart'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete Multiple Events'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13::'
,p_button_cattributes=>'style="font-weight:bold"'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265700995703872080)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1785847625602090050)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(869495090787167353)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8422115389460410632)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3265705786268888250)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726627104956366672)
,p_name=>'Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726628030314366682)
,p_event_id=>wwv_flow_imp.id(1726627104956366672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8422115389460410632)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726627519612366678)
,p_event_id=>wwv_flow_imp.id(1726627104956366672)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Event Details - &P3_EVENT_NAME.'
,p_alias=>'EVENT-DETAILS-P3-EVENT-NAME'
,p_step_title=>'Event Details - &P3_EVENT_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949832234238591801)
,p_step_template=>1998361449248688088
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This is the event details page. Click the <strong>Cancel</strong> button to leave this page. Click the <strong>iCalendar</strong> button to save this event as an .ics file. Click the <strong>Print</strong> button to print this page. Click the <strong'
||'>Edit Event</strong> button to edit this event. Click the "Add Link" list item in the list on the right to add a link. Click the "Add Attachment" list item in the list on the right to upload a file attachment. If your app administrator has enabled th'
||'e "Show Updates" build option for this application, you will see an "Add Update" list item in the list on the right that you can click to add a comment to the event.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1726665421535636869)
,p_name=>'Details'
,p_template=>4501440665235496320
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select    event_name,',
'          row_key,',
'          calendar_id,',
'          type_id,',
'          event_date_time,',
'          to_char(event_date_time,''HH:MI PM'') as start_time,',
'          to_char(event_date_time + duration/24,''HH:MI PM'') as end_time,',
'          duration,',
'          event_desc,',
'          contact_person,',
'          contact_email,',
'          location,',
'          created_on,',
'          created_by,',
'          last_updated_on,',
'          last_updated_by,',
'          case when series_id is null then ''No'' else ''Yes'' end as recurring_event,',
'          tags,',
'          (select recur_freq from eba_ca_series where series_id = e.series_id) as freq,',
'          (select start_date from eba_ca_series where series_id = e.series_id) as start_date,',
'          (select end_date from eba_ca_series where series_id = e.series_id) as end_date',
'     from EBA_ca_events e',
'   where event_id = :P3_EVENT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_EVENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726665471241636870)
,p_query_column_id=>1
,p_column_alias=>'EVENT_NAME'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726667615390636891)
,p_query_column_id=>2
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>12
,p_column_heading=>'Unique ID'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3160412103562205775)
,p_query_column_id=>3
,p_column_alias=>'CALENDAR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Calendar'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and calendar_id is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(1866676699908727641)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726665651446636871)
,p_query_column_id=>4
,p_column_alias=>'TYPE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Event Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(8949808742838567911)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726665682691636872)
,p_query_column_id=>5
,p_column_alias=>'EVENT_DATE_TIME'
,p_column_display_sequence=>4
,p_column_heading=>'Event Date'
,p_column_format=>'DD-MON-YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3160411832108205772)
,p_query_column_id=>6
,p_column_alias=>'START_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Start Time'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3160411893031205773)
,p_query_column_id=>7
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>6
,p_column_heading=>'End Time'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726665827915636873)
,p_query_column_id=>8
,p_column_alias=>'DURATION'
,p_column_display_sequence=>7
,p_column_heading=>'Duration'
,p_column_html_expression=>'#DURATION# hour(s)'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726665926442636874)
,p_query_column_id=>9
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>11
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and event_desc is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726666151890636876)
,p_query_column_id=>10
,p_column_alias=>'CONTACT_PERSON'
,p_column_display_sequence=>8
,p_column_heading=>'Contact person'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and contact_person is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726666170148636877)
,p_query_column_id=>11
,p_column_alias=>'CONTACT_EMAIL'
,p_column_display_sequence=>9
,p_column_heading=>'Contact email'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and contact_email is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726666255726636878)
,p_query_column_id=>12
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Location'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and location is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726667073907636886)
,p_query_column_id=>13
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>13
,p_column_heading=>'Created'
,p_column_format=>'SINCE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726667225872636887)
,p_query_column_id=>14
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>14
,p_column_heading=>'Created by'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726667354588636888)
,p_query_column_id=>15
,p_column_alias=>'LAST_UPDATED_ON'
,p_column_display_sequence=>15
,p_column_heading=>'Last Updated'
,p_column_format=>'SINCE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726667441170636889)
,p_query_column_id=>16
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>16
,p_column_heading=>'Last Updated By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3160412223200205776)
,p_query_column_id=>17
,p_column_alias=>'RECURRING_EVENT'
,p_column_display_sequence=>18
,p_column_heading=>'Recurring Event'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1726667517483636890)
,p_query_column_id=>18
,p_column_alias=>'TAGS'
,p_column_display_sequence=>17
,p_column_heading=>'Tags'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and tags is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3160412336941205777)
,p_query_column_id=>19
,p_column_alias=>'FREQ'
,p_column_display_sequence=>19
,p_column_heading=>'Frequency'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and series_id is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(9168549725535120172)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3160412409297205778)
,p_query_column_id=>20
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Start Date'
,p_column_format=>'&APP_DATE_FORMAT.'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and series_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3160412510216205779)
,p_query_column_id=>21
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>21
,p_column_heading=>'End Date'
,p_column_format=>'&APP_DATE_FORMAT.'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and series_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1874797845702207073)
,p_plug_name=>'No Edit Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>'<p>You do not have rights to edit this event.</p>'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P3_UPDATEABLE'
,p_plug_display_when_cond2=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1940689697398353859)
,p_plug_name=>'Event Actions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-LinksList--showIcons:t-LinksList--actions'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>130
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_imp.id(2204848584569895071)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>4072361143931175087
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P3_UPDATEABLE'
,p_plug_display_when_cond2=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1950376528771779311)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265598499084191788)
,p_plug_name=>'Add Update'
,p_region_name=>'ADDNOTEM'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400:t-Form--stretchInputs'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3265601886186207012)
,p_name=>'Updates'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        '''' class, --use grayComment for gray look',
'        ''Note'' note_type,',
'        replace(sys.dbms_lob.substr(note,2000,1),chr(10),''<br />'') comment_text,',
'        '''' attribute_1,',
'        '''' attribute_2,',
'        '''' attribute_3,',
'        '''' attribute_4,',
'        lower(created_by) user_name,',
'        apex_util.get_since(created) comment_date,',
'        upper(',
'          decode(instr(replace(created_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(created_by,1,2),',
'                 substr(created_by,1,1)||substr(created_by,instr(replace(created_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        ''Edit'' actions,',
'        created,',
'        id note_id',
'from EBA_CA_NOTES ',
'where   event_id = :P3_EVENT_ID',
'union all',
'select',
'        ''grayComment'' class, --use grayComment for gray look',
'        ''Insert'' note_type,',
'        initcap(replace(replace(COLUMN_NAME,''_ID'',null),''_'','' '')) comment_text,',
'        null attribute_1,',
'        '' "''||new_value||''" inserted'' attribute_2,',
'        '' '' attribute_3,',
'        '' '' attribute_4,',
'        lower(CHANGED_BY) user_name,',
'        apex_util.get_since(CHANGE_DATE) comment_date,',
'        upper(',
'          decode(instr(replace(changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(changed_by,1,2),',
'                 substr(changed_by,1,1)||substr(changed_by,instr(replace(changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        null actions,',
'        CHANGE_DATE,',
'        null note_id',
'from EBA_CA_HISTORY f',
'where component_id = :P3_EVENT_ID',
'and OLD_VALUE is null',
'union all',
'select',
'        ''grayComment'' class, --use grayComment for gray look',
'        ''Update'' note_type,',
'        initcap(replace(replace(COLUMN_NAME,''_ID'',null),''_'','' '')) comment_text,',
'        '' changed from "''||OLD_VALUE||''"'' attribute_1,',
'        '' to "''||new_value||''"'' attribute_2,',
'        '' '' attribute_3,',
'        '' '' attribute_4,',
'        lower(CHANGED_BY) user_name,',
'        apex_util.get_since(CHANGE_DATE) comment_date,',
'        upper(',
'          decode(instr(replace(changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(changed_by,1,2),',
'                 substr(changed_by,1,1)||substr(changed_by,instr(replace(changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        null actions,',
'        CHANGE_DATE,',
'        null note_id',
'from EBA_CA_HISTORY f',
'where component_id = :P3_EVENT_ID',
'and OLD_VALUE is not null',
'order by 11 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2613168815517880001
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' '
,p_query_no_data_found=>'No updates found'
,p_query_row_count_max=>50
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(1688256117016091328)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265602172998207021)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265602280686207021)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089005851463765)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'Comment Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265602471627207021)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute 1'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265602591305207021)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute 2'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265602697196207021)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 3'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265602794046207021)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 4'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089095862463766)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089218780463767)
,p_query_column_id=>9
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Comment Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089358673463769)
,p_query_column_id=>10
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>13
,p_column_heading=>'User Icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089320384463768)
,p_query_column_id=>11
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>12
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_ID:#NOTE_ID#'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265603201310207021)
,p_query_column_id=>12
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3266442493813446088)
,p_query_column_id=>13
,p_column_alias=>'NOTE_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Note Id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3265682290669757130)
,p_name=>'Attachments'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    ''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P32_FILE_BLOB'',id)||''">''||apex_escape.html(filename)||''</a>'' filename,',
'    file_mimetype,',
'    file_charset,',
'    apex_util.filesize_mask(dbms_lob.getlength(file_blob)) f_len,',
'    substr(file_comments,1,50)||decode(greatest(length(file_comments),50),50,'''',''...'') FILE_COMMENTS,',
'    case when instr(upper(FILENAME),''.PPT'') > 0or instr(upper(FILENAME),''.PPTX'') > 0 then',
'        ''fa fa fa-file-powerpoint-o''',
'    when instr(upper(FILENAME),''.XLS'') > 0 or instr(upper(FILENAME),''.XLSX'') > 0 then',
'        ''fa fa fa-file-excel-o''',
'    when instr(upper(FILENAME),''.DOC'') > 0 or instr(upper(FILENAME),''.DOCX'') > 0 then',
'        ''fa fa fa-file-word-o''',
'    when instr(upper(FILENAME),''.PDF'') > 0 then',
'        ''fa fa fa-file-pdf-o''',
'    when instr(upper(FILENAME),''.GIF'') > 0 or',
'         instr(upper(FILENAME),''.PNG'') > 0 or',
'         instr(upper(FILENAME),''.TIFF'') > 0 or',
'         instr(upper(FILENAME),''.JPG'') > 0 then',
'        ''fa fa fa-file-image-o''',
'    else',
'        ''fa fa fa-file-o''',
'    end file_type,',
'    case when instr(upper(FILENAME),''.PPT'') > 0or instr(upper(FILENAME),''.PPTX'') > 0 then',
'        ''MS Powerpoint File''',
'    when instr(upper(FILENAME),''.XLS'') > 0 or instr(upper(FILENAME),''.XLSX'') > 0 then',
'        ''MS Excel File''',
'    when instr(upper(FILENAME),''.DOC'') > 0 or instr(upper(FILENAME),''.DOCX'') > 0 then',
'        ''MS Word File''',
'    when instr(upper(FILENAME),''.PDF'') > 0 then',
'        ''Adobe PDF File''',
'    when instr(upper(FILENAME),''.GIF'') > 0 or',
'         instr(upper(FILENAME),''.PNG'') > 0 or',
'         instr(upper(FILENAME),''.TIFF'') > 0 or',
'         instr(upper(FILENAME),''.JPG'') > 0 then',
'        ''Image File''',
'    else',
'        ''Text File''',
'    end file_type_title,',
'    created,',
'    lower(created_by) created_by',
'from EBA_CA_FILES f',
'where event_id = :P3_EVENT_ID',
'order by created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>5000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No attachments found'
,p_query_row_count_max=>5000
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265682599067757134)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265682673544757134)
,p_query_column_id=>2
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265682798770757134)
,p_query_column_id=>3
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265682896457757134)
,p_query_column_id=>4
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265682991217757134)
,p_query_column_id=>5
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>7
,p_column_heading=>'Size'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265683097418757135)
,p_query_column_id=>6
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>8
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265683197142757135)
,p_query_column_id=>7
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Type'
,p_column_html_expression=>'<span class="#FILE_TYPE#" title="#FILE_TYPE_TITLE#"></span>'
,p_column_alignment=>'CENTER'
,p_report_column_width=>15
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2317058968765906556)
,p_query_column_id=>8
,p_column_alias=>'FILE_TYPE_TITLE'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265683272315757139)
,p_query_column_id=>9
,p_column_alias=>'CREATED'
,p_column_display_sequence=>10
,p_column_heading=>'Date Added'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265683393859757139)
,p_query_column_id=>10
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Added By'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265741273455584799)
,p_plug_name=>'Add Attachment'
,p_region_name=>'add_file_modal'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_04'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265749386371720983)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265774078115822722)
,p_plug_name=>'Edit Links'
,p_region_name=>'edit_link_modal'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7978604450945649139)
,p_name=>'Links'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(link_name_1,link_url_1) name,',
'    link_url_1 url,',
'    last_updated_on updated, lower(last_updated_by) updated_by',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_1 is not null',
'union',
'select nvl(link_name_2,link_url_2) name,',
'    link_url_2 url,',
'    last_updated_on updated, lower(last_updated_by) updated_by',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_2 is not null',
'union',
'select nvl(link_name_3,link_url_3) name,',
'    link_url_3 url,',
'    last_updated_on updated, lower(last_updated_by) updated_by',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_3 is not null',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No links found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7978604758712649150)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7978604859706649153)
,p_query_column_id=>2
,p_column_alias=>'URL'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_column_html_expression=>'<a href="#URL#" target="_window" alt="click to open link" title="click to open link">#NAME#</a>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265792381943975168)
,p_query_column_id=>3
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>4
,p_column_heading=>'Date Updated'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3265792493549975169)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8422128665274422996)
,p_plug_name=>'Event'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265757798969734082)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3265749386371720983)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Print'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'javascript: window.print();'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265606198353238836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3265598499084191788)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265742983330625473)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3265741273455584799)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8422128880139422998)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3265749386371720983)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&P3_PREV_PAGE.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265777875822831458)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3265774078115822722)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265606369739238836)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3265598499084191788)
,p_button_name=>'ADD_NOTE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Update'
,p_button_position=>'CREATE'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265743200645630530)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3265741273455584799)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265778188635835181)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3265774078115822722)
,p_button_name=>'EDIT_LINK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265605692682227812)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3265601886186207012)
,p_button_name=>'POP_ADD_NOTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Note'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_EVENT_ID:&P3_EVENT_ID.'
,p_button_condition=>'P3_UPDATEABLE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265689087345841272)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3265682290669757130)
,p_button_name=>'POPATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP,32:P32_EVENT_ID:&P3_EVENT_ID.'
,p_button_condition=>'P3_UPDATEABLE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265592774187137273)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3265749386371720983)
,p_button_name=>'EDIT_EVENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Event'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_EVENT_ID:&P3_EVENT_ID.'
,p_button_condition=>'P3_UPDATEABLE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265689298080844425)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3265682290669757130)
,p_button_name=>'VIEW_ATTACHMENTS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Attachments'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.:::31:P31_ID:&P3_EVENT_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265697190031861030)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3265601886186207012)
,p_button_name=>'GOUPDATES'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Updates'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.:::34:P34_ID:&P3_EVENT_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265709581252924710)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(7978604450945649139)
,p_button_name=>'POP_EDIT_LINKS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Edit Links'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openModal(''edit_link_modal'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_1 is not null',
'union',
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_2 is not null',
'union',
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_3 is not null'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2204863041157973960)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(7978604450945649139)
,p_button_name=>'POP_ADD_LINKS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Links'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openModal(''edit_link_modal'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_1 is not null',
'union',
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_2 is not null',
'union',
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_3 is not null'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3266697278458854430)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3265749386371720983)
,p_button_name=>'icalendar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'iCalendar'
,p_button_position=>'HELP'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3265744679352662143)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 06-APR-2012 10:58 by CBCHO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(534198562586096726)
,p_name=>'P3_PREV_PAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8422128665274422996)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1874797741555207072)
,p_name=>'P3_UPDATEABLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8422128665274422996)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265606999177248627)
,p_name=>'P3_NOTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3265598499084191788)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Text'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265741980643605787)
,p_name=>'P3_FILE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3265741273455584799)
,p_prompt=>'File'
,p_post_element_text=>'<p><em>Attachments must be under 15M in size.</em></p>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'INLINE',
  'storage_type', 'WWV_FLOW_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265742200383611476)
,p_name=>'P3_FILE_TAGS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3265741273455584799)
,p_prompt=>'Tags'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265742486662617014)
,p_name=>'P3_FILE_COMMENTS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3265741273455584799)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265774294750822722)
,p_name=>'P3_LINK_NAME_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3265774078115822722)
,p_prompt=>'Name 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of 1st link.  If not provided, the URL will be displayed.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265774774094822723)
,p_name=>'P3_LINK_URL_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3265774078115822722)
,p_prompt=>'URL 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'URL for 1st link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265775288687822724)
,p_name=>'P3_LINK_NAME_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3265774078115822722)
,p_prompt=>'Name 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of 2nd link.  If not provided, the URL will be displayed.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265775772301822724)
,p_name=>'P3_LINK_URL_2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3265774078115822722)
,p_prompt=>'URL 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'URL for 2nd link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265776271140822725)
,p_name=>'P3_LINK_NAME_3'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3265774078115822722)
,p_prompt=>'Name 3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of 3rd link.  If not provided, the URL will be displayed.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265776790125822725)
,p_name=>'P3_LINK_URL_3'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3265774078115822722)
,p_prompt=>'URL 3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'URL for 3rd link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8422130571995423000)
,p_name=>'P3_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8422128665274422996)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8422132269693423002)
,p_name=>'P3_EVENT_NAME'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8422128665274422996)
,p_prompt=>'Event Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of the event.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3265707688955907986)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'3'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1225241012109214923)
,p_validation_name=>'URL 1 Must start with http'
,p_validation_sequence=>10
,p_validation=>'substr(:P3_LINK_URL_1, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_associated_item=>wwv_flow_imp.id(3265774774094822723)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1225241102525214924)
,p_validation_name=>'URL2 Must start with http'
,p_validation_sequence=>20
,p_validation=>'substr(:P3_LINK_URL_2, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_associated_item=>wwv_flow_imp.id(3265775772301822724)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1225241218638214925)
,p_validation_name=>'URL 3 must start with http'
,p_validation_sequence=>30
,p_validation=>'substr(:P3_LINK_URL_3, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_associated_item=>wwv_flow_imp.id(3265776790125822725)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726140905284265592)
,p_name=>'Refresh Updates'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726141308209265599)
,p_event_id=>wwv_flow_imp.id(1726140905284265592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265601886186207012)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726141850982265601)
,p_event_id=>wwv_flow_imp.id(1726140905284265592)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3160411315036205767)
,p_name=>'Refresh Links'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3160411426263205768)
,p_event_id=>wwv_flow_imp.id(3160411315036205767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7978604450945649139)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3160411468151205769)
,p_event_id=>wwv_flow_imp.id(3160411315036205767)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1725626632079624777)
,p_name=>'Refresh Attachments'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725626738533624778)
,p_event_id=>wwv_flow_imp.id(1725626632079624777)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265682290669757130)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725626761317624779)
,p_event_id=>wwv_flow_imp.id(1725626632079624777)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265785076823879067)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'edit links'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_ca_events',
'set LINK_NAME_1 = :P3_LINK_NAME_1,                   ',
'    LINK_URL_1 = :P3_LINK_URL_1,                ',
'    LINK_NAME_2 = :P3_LINK_NAME_2,                    ',
'    LINK_URL_2 = :P3_LINK_URL_2,                     ',
'    LINK_NAME_3 = :P3_LINK_NAME_3,                   ',
'    LINK_URL_3 = :P3_LINK_URL_3',
'where event_id = :P3_EVENT_ID;',
'',
':P3_LINK_NAME_1 := null;',
':P3_LINK_URL_1 := null;',
':P3_LINK_NAME_2 := null;',
':P3_LINK_URL_2 := null;',
':P3_LINK_NAME_3 := null;',
':P3_LINK_URL_3 := null;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to update the links'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3265778188635835181)
,p_process_success_message=>'Links updated'
,p_internal_uid=>3236353891415706059
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3266806369872925730)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download iCalendar file'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_dtstamp varchar2(255) := null;',
'    l_dtstart varchar2(255) := null;',
'    l_dtend   varchar2(255) := null;',
'    l_utc     timestamp with time zone := systimestamp at time zone ''UTC'';',
'',
'',
'begin',
'',
'--',
'-- Initialization',
'-- (think about changing the filename below, but be sure that the name is properly encoded,',
'-- similar to what is in wwv_flow_utilities.encode_filename)',
'--',
'sys.htp.init;',
'sys.owa_util.mime_header(''text/calendar'', FALSE, ''utf-8'');',
'sys.htp.p(''Content-Disposition: attachment;  filename="iCalendarFile.ics"'');',
'sys.owa_util.http_header_close;',
'',
'',
'for c1 in (',
'   select event_id id,',
'          event_name,',
'          type_id,',
'          event_date_time,',
'          duration,',
'          event_desc,',
'          contact_person,',
'          contact_email,',
'          location,',
'          series_id,',
'          created_on, ',
'          created_by, ',
'          last_updated_on, ',
'          last_updated_by',
'     from EBA_ca_events',
'   where event_id = :P3_EVENT_ID )',
'loop',
'',
'l_dtstamp := to_char(l_utc,''RRRRMMDD'')||''T''||',
'   to_char(l_utc,''HH24MISS'')||''Z'';',
'',
'l_dtstart := to_char(c1.event_date_time at time zone ''UTC'',''RRRRMMDD'')||''T''||',
'   to_char(c1.event_date_time at time zone ''UTC'',''HH24MISS'')||''Z'';',
'',
'-- add duration, duration column is in hours needs to be added to start time',
'l_dtend := to_char((c1.event_date_time at time zone ''UTC'' + numtodsinterval(c1.duration, ''hour'')),''RRRRMMDD'')||''T''||',
'   to_char((c1.event_date_time at time zone ''UTC'' + numtodsinterval(c1.duration, ''hour'')),''HH24MISS'')||''Z'';',
'',
'sys.htp.p(''BEGIN:VCALENDAR'');',
'sys.htp.p(''VERSION:2.0'');',
'sys.htp.p(''PRODID:-//hacksw/handcal//NONSGML v1.0//EN'');',
'sys.htp.p(''BEGIN:VEVENT'');',
'sys.htp.p(''UID:''||c1.id);',
'sys.htp.p(''DTSTAMP:''||l_dtstamp);',
'sys.htp.p(''ORGANIZER;CN=''||apex_escape.html(c1.contact_person)||'':MAILTO:''||apex_escape.html(c1.contact_email));',
'sys.htp.p(''DTSTART:''||l_dtstart);',
'sys.htp.p(''DTEND:''||l_dtend);',
'sys.htp.p(''SUMMARY:''||apex_escape.html(c1.event_name));',
'sys.htp.p(''END:VEVENT'');',
'sys.htp.p(''END:VCALENDAR'');',
'',
'exit;',
'end loop;',
'',
'',
'',
'',
'--',
'-- Tell the APEX engine to stop',
'--',
'apex_application.stop_apex_engine;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3266697278458854430)
,p_internal_uid=>3237375184464752722
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8422148295179450098)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin  ',
'  for c1 in (select calendar_id, event_name',
'             from EBA_ca_events',
'             where event_id = :P3_EVENT_ID ',
'            ) loop',
'',
'    :P3_EVENT_NAME         := c1.event_name;',
'',
'    -- Determine if event updateable',
'    if c1.calendar_id is null then',
'      :P3_UPDATEABLE := ''Y'';',
'    elsif :MULTIPLE_CAL_BO = ''Exclude'' then',
'      :P3_UPDATEABLE := ''Y'';',
'    else',
'      for c2 in (select restricted_to',
'                 ,      access_level_id',
'                 from eba_ca_users',
'                 where username = :APP_USER',
'                ) loop',
'        if c2.restricted_to is null then',
'          if c2.access_level_id = 3 then',
'            :P3_UPDATEABLE := ''Y'';',
'          else',
'            :P3_UPDATEABLE := ''N'';',
'          end if;',
'        elsif instr(c2.restricted_to, c1.calendar_id) > 0 then',
'          :P3_UPDATEABLE := ''Y'';',
'        else',
'          :P3_UPDATEABLE := ''N'';',
'        end if;',
'      end loop;',
'    end if;',
'',
'  end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'failed to load data'
,p_process_when=>'P3_EVENT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>8392717109771277090
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Notifications'
,p_alias=>'NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Notifications'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>Notifications are displayed on the application home page on top of the screen. Use application notifications to communicate with users of this application. Notifications are managed by application administrators but viewable by all users.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265516285494468349)
,p_plug_name=>'Notifications'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    row_version_number,',
'    notification_name,',
'    notification_description,',
'    notification_type,',
'    display_sequence,',
'    display_from,',
'    display_until,',
'    created_by,',
'    created,',
'    updated_by,',
'    updated',
'from eba_ca_notifications'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3265516488148468349)
,p_name=>'Notifications'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No notifications found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>2594012419306651762
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265516585635468352)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265516698470468353)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Row Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265516794947468353)
,p_db_column_name=>'NOTIFICATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Notification'
,p_column_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP,25:P25_ID:#ID#'
,p_column_linktext=>'#NOTIFICATION_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265516883029468353)
,p_db_column_name=>'NOTIFICATION_DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265516978567468354)
,p_db_column_name=>'NOTIFICATION_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265517098768468354)
,p_db_column_name=>'DISPLAY_SEQUENCE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Display Sequence'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265517191309468354)
,p_db_column_name=>'DISPLAY_FROM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Display From'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Day DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265517285175468354)
,p_db_column_name=>'DISPLAY_UNTIL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Display Until'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Day DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265517386754468354)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265517470805468354)
,p_db_column_name=>'CREATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265517590108468354)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265517692028468354)
,p_db_column_name=>'UPDATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3265517779319468355)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25940138'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DISPLAY_SEQUENCE:NOTIFICATION_NAME:NOTIFICATION_TYPE:DISPLAY_FROM:DISPLAY_UNTIL:CREATED:'
,p_sort_column_1=>'DISPLAY_SEQUENCE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1488247387707975409)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3265516285494468349)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265517983037468356)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3265516285494468349)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Notification'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP,25::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726654559976617898)
,p_name=>'Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726654995074617930)
,p_event_id=>wwv_flow_imp.id(1726654559976617898)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265516285494468349)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726655464144617930)
,p_event_id=>wwv_flow_imp.id(1726654559976617898)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138024023102137993)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3265517983037468356)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138024108065137994)
,p_event_id=>wwv_flow_imp.id(138024023102137993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265516285494468349)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138024158519137995)
,p_name=>'Refresh on Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3265516285494468349)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138024349813137996)
,p_event_id=>wwv_flow_imp.id(138024158519137995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265516285494468349)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Filter Options'
,p_alias=>'FILTER-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Filter Options'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17448230768504990851)
,p_plug_name=>'Filter Options'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17792736648766301507)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1866531919727586369)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17792736648766301507)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1893491296487065256)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17792736648766301507)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reset All'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1866532199834586371)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17792736648766301507)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Set'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866532894803586384)
,p_name=>'P5_CAL_ALL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17448230768504990851)
,p_prompt=>'Calendars'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:All;0'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
,p_help_text=>'Use to limit the results to events from the Calendars selected.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866533326478586392)
,p_name=>'P5_CALENDARS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17448230768504990851)
,p_prompt=>'Calendars'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'CALENDARS WITH DEFAULT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select ''Default'' d,',
'       -1 r,',
'       1 ob',
'  from dual',
' where exists (select 1 from eba_ca_events',
'                where calendar_id is null)',
'union',
'select short_name ||'' - ''|| calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       calendar_id r,',
'       2 ob',
'  from eba_ca_calendars c',
'  where public_view_yn = ''Y''',
'  or    exists (select ''x''',
'                from eba_ca_users u',
'                where u.username = :APP_USER',
'                and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                       or (access_level_id = 3 and restricted_to is null)',
'                      )',
'               ) ',
')',
' order by ob, d'))
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
,p_help_text=>'Use to restrict to events from one or more calendars.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866533700047586393)
,p_name=>'P5_ET_ALL'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_imp.id(17448230768504990851)
,p_prompt=>'Event Types'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:All;0'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Use to limit the results to events with the Event Types selected.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866534086864586393)
,p_name=>'P5_EVENT_TYPES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17448230768504990851)
,p_prompt=>'Event Types'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EVENT TYPES FOR MAIN CAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
' order by type_name'))
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866642034345194711)
,p_name=>'P5_CONTACT_EMAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17448230768504990851)
,p_prompt=>'Contact Email'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CONTACTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(replace(decode(instr(username, ''@''), 0, username, substr(username, 1, instr(username, ''@'') - 1)), ''.'', '' ''))  d, upper(username) r',
'from eba_ca_users u',
'where exists (select ''x''',
'              from eba_ca_events e',
'              where instr(upper(e.contact_email), u.username) > 0',
'             )',
'order by 1',
''))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x'' from',
'eba_ca_events where contact_email is not null;'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
,p_help_text=>'Use to limit the results to events where the Contact Email matches the email listed in the Access Control List (under Administration).'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1866536528843586426)
,p_name=>'when calendars All'
,p_event_sequence=>5
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_CAL_ALL'
,p_condition_element=>'P5_CAL_ALL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1866536989611586429)
,p_event_id=>wwv_flow_imp.id(1866536528843586426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_CALENDARS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1866537397518586430)
,p_name=>'when cal other than all'
,p_event_sequence=>7
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_CALENDARS'
,p_condition_element=>'P5_CALENDARS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1866537856780586430)
,p_event_id=>wwv_flow_imp.id(1866537397518586430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_CAL_ALL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1866538259212586430)
,p_name=>'when event_types All'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_ET_ALL'
,p_condition_element=>'P5_ET_ALL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1866538818012586431)
,p_event_id=>wwv_flow_imp.id(1866538259212586430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_EVENT_TYPES'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1866539165180586431)
,p_name=>'when event type other than all'
,p_event_sequence=>12
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_EVENT_TYPES'
,p_condition_element=>'P5_EVENT_TYPES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1866539735791586431)
,p_event_id=>wwv_flow_imp.id(1866539165180586431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ET_ALL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1866540123735586432)
,p_name=>'close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1866531919727586369)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1866540557067586433)
,p_event_id=>wwv_flow_imp.id(1866540123735586432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1893491441785065257)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P5_EVENT_TYPES := null;',
':P5_CALENDARS := null;',
':P5_CONTACT_EMAIL := null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1893491296487065256)
,p_process_success_message=>'All filters reset'
,p_internal_uid=>1864060256376892249
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1866534484776586423)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set event type pref'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_PREFERENCE(        ',
'   p_preference => ''EVENT_TYPES_FILTER'',',
'   p_value      => nvl(:P5_EVENT_TYPES,''0''),      ',
'   p_user       => :APP_USER);',
'   ',
':EVENT_TYPES_FILTER := nvl(:P5_EVENT_TYPES,''0'');'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Filters failed to be set.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Filters set.'
,p_internal_uid=>1837103299368413415
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1866534859748586424)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set calendar pref'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_PREFERENCE(        ',
'   p_preference => ''CALENDARS_FILTER'',',
'   p_value      => nvl(:P5_CALENDARS,''0''),      ',
'   p_user       => :APP_USER);',
'   ',
':CALENDARS_FILTER := nvl(:P5_CALENDARS,''0'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1837103674340413416
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1702548574125087095)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set contact email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_PREFERENCE(        ',
'   p_preference => ''CONTACT_EMAIL'',',
'   p_value      => nvl(:P5_CONTACT_EMAIL,''0''),      ',
'   p_user       => :APP_USER);',
'   ',
':CONTACT_EMAIL := :P5_CONTACT_EMAIL;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Filters failed to be set.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Filters set.'
,p_internal_uid=>1673117388716914087
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1866535291611586424)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1837104106203413416
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1866536094273586425)
,p_process_sequence=>12
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load event types'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_pref varchar2(4000);',
'begin',
'',
'l_pref := apex_util.get_preference (',
'              p_preference => ''EVENT_TYPES_FILTER'',',
'              p_user       => :APP_USER );',
'',
'if l_pref is null or l_pref = ''0'' then',
'   :P5_ET_ALL := ''0'';',
'else',
'   :P5_EVENT_TYPES := l_pref;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>1837104908865413417
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1866535660391586424)
,p_process_sequence=>22
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load cals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_pref varchar2(4000);',
'begin',
'',
'l_pref := apex_util.get_preference (',
'              p_preference => ''CALENDARS_FILTER'',',
'              p_user       => :APP_USER );',
'',
'if l_pref is null or l_pref = ''0'' then',
'   :P5_CAL_ALL := ''0'';',
'else',
'   :P5_CALENDARS := l_pref;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>1837104474983413416
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(816370855838692379)
,p_process_sequence=>32
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load contact_email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_pref varchar2(4000);',
'begin',
'',
'l_pref := apex_util.get_preference (',
'              p_preference => ''CONTACT_EMAIL'',',
'              p_user       => :APP_USER );',
'',
'if l_pref is null or l_pref = ''0'' then',
'   :P5_CONTACT_EMAIL := null;',
'else',
'   :P5_CONTACT_EMAIL := l_pref;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>786939670430519371
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Event Types'
,p_alias=>'EVENT-TYPES'
,p_page_mode=>'MODAL'
,p_step_title=>'Event Types'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'Event Types allow you to categorize events.  You can choose to associate a display color with an event type.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8949816824776567949)
,p_plug_name=>'Event Types'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type_id,',
'       (select color_name from EBA_CA_color_prefs p where p.id = et.color_pref_id) color_preference,',
'       case when display_color is not null',
'            then ''<span style="white-space:nowrap;">'' || ',
'                 apex_escape.html(type_name) || ''</span>''',
'            else ''<span style="white-space:nowrap;">'' ||',
'                 apex_escape.html(type_name) || ''</span>''',
'            end type_name,',
'       type_name type_name_disp,',
'       display_color,',
'       border_color,',
'       (select count(*) from EBA_CA_EVENTS e',
'         where e.type_id = et.type_id) cnt_events,',
'       CREATED_ON,',
'       decode(nvl(internal_yn, ''N''), ''N'', ''External'', ''Internal Only'') internal_yn,',
'       LOWER(CREATED_BY) CREATED_BY,',
'       nvl(last_updated_on, created_on) LAST_UPDATED_ON,',
'       LOWER(LAST_UPDATED_BY) LAST_UPDATED_BY,',
'       type_name as type_name_raw',
'  from EBA_CA_EVENT_TYPES et'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8949816938316567949)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No event types found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_TYPE_ID:#TYPE_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #TYPE_NAME_RAW#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>8278312869474751362
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(9159601846531649935)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(9159602318612651272)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8949817044994567950)
,p_db_column_name=>'TYPE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Type Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8949817139152567950)
,p_db_column_name=>'TYPE_NAME'
,p_display_order=>2
,p_group_id=>wwv_flow_imp.id(9159601846531649935)
,p_column_identifier=>'B'
,p_column_label=>'Event Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_help_text=>'Type of event.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8949942219797070106)
,p_db_column_name=>'DISPLAY_COLOR'
,p_display_order=>3
,p_group_id=>wwv_flow_imp.id(9159601846531649935)
,p_column_identifier=>'G'
,p_column_label=>'Display Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1568140645914565295)
,p_db_column_name=>'INTERNAL_YN'
,p_display_order=>13
,p_column_identifier=>'N'
,p_column_label=>'External / Internal '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8949817337251567950)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>23
,p_group_id=>wwv_flow_imp.id(9159602318612651272)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who created the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8949817530945567951)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>33
,p_group_id=>wwv_flow_imp.id(9159602318612651272)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043842044735454647)
,p_db_column_name=>'TYPE_NAME_DISP'
,p_display_order=>43
,p_group_id=>wwv_flow_imp.id(9159601846531649935)
,p_column_identifier=>'H'
,p_column_label=>'Event Type for Sorting'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7444185327077099240)
,p_db_column_name=>'CNT_EVENTS'
,p_display_order=>53
,p_group_id=>wwv_flow_imp.id(9159601846531649935)
,p_column_identifier=>'I'
,p_column_label=>'Number of Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7444185448033099242)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>63
,p_group_id=>wwv_flow_imp.id(9159602318612651272)
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7444185532995099242)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>73
,p_group_id=>wwv_flow_imp.id(9159602318612651272)
,p_column_identifier=>'K'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265583800712059830)
,p_db_column_name=>'BORDER_COLOR'
,p_display_order=>83
,p_column_identifier=>'L'
,p_column_label=>'Border Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3266866782938273115)
,p_db_column_name=>'COLOR_PREFERENCE'
,p_display_order=>93
,p_column_identifier=>'M'
,p_column_label=>'Color Preference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199611373214022639)
,p_db_column_name=>'TYPE_NAME_RAW'
,p_display_order=>103
,p_column_identifier=>'O'
,p_column_label=>'Type Name Raw'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8949946937589084686)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1588307'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TYPE_NAME:COLOR_PREFERENCE:INTERNAL_YN:CNT_EVENTS:LAST_UPDATED_ON::TYPE_NAME_RAW'
,p_sort_column_1=>'LAST_UPDATED_ON'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'TYPE_NAME_DISP'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9168396743329434744)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'3772805'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TYPE_NAME:COLOR_PREFERENCE:INTERNAL_YN:CNT_EVENTS:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY:'
,p_sort_column_1=>'TYPE_NAME_DISP'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265583879026062976)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8949816824776567949)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8949820236963567962)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8949816824776567949)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event Type'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726640785541521715)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726641177381521716)
,p_event_id=>wwv_flow_imp.id(1726640785541521715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8949816824776567949)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726641691469521716)
,p_event_id=>wwv_flow_imp.id(1726640785541521715)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138024433697137997)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8949820236963567962)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138024467795137998)
,p_event_id=>wwv_flow_imp.id(138024433697137997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8949816824776567949)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138024619483137999)
,p_name=>'Refresh on Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8949816824776567949)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138571383780307550)
,p_event_id=>wwv_flow_imp.id(138024619483137999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8949816824776567949)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Event Type Details'
,p_alias=>'EVENT-TYPE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Event Type Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1725628086700624792)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265566784736026802)
,p_plug_name=>'Recommended Colors'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />Blue',
'<br />Border:     #C1CFE6',
'<br />Background: #E6ECF3',
'<br />',
'<br />Red',
'<br />Border:     #F1B8BA',
'<br />Background: #FAE1E2',
'<br />',
'<br />Yellow',
'<br />Border:     #E7EDB9',
'<br />Background: #F5F8E2',
'<br />',
'<br />Green',
'<br />Border:     #C2E1C8',
'<br />Background: #E5F3E8',
'<br />',
'<br />Teal',
'<br />Border:     #B1ECEB',
'<br />Background: #DEF7F7',
'<br />',
'<br />Purple',
'<br />Border:     #C0B7EC',
'<br />Background: #E4E1F7'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3303823780653191130)
,p_plug_name=>'hidden'
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8949818127008567952)
,p_plug_name=>'Event Type Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8949818230510567954)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1725628086700624792)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8949818325688567954)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1725628086700624792)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P8_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8949818434346567954)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1725628086700624792)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8949818542810567954)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1725628086700624792)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event Type'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1568140699003565296)
,p_name=>'P8_INTERNAL_YN'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8949818127008567952)
,p_use_cache_before_default=>'NO'
,p_prompt=>'External / Internal'
,p_source=>'INTERNAL_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:External;N,Internal Only;Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265566388760018488)
,p_name=>'P8_BORDER_COLOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3303823780653191130)
,p_use_cache_before_default=>'NO'
,p_source=>'BORDER_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'Events are typically displayed in black.  You can override that color by assigning a display color by event type.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3266867597267286731)
,p_name=>'P8_COLOR_PREF_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8949818127008567952)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Color Preference'
,p_source=>'COLOR_PREF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COLOR PREFERENCE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select color_name, id ',
'from EBA_CA_color_prefs ',
'order by display_sequence, id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Color Preference -'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949818728344567957)
,p_name=>'P8_TYPE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8949818127008567952)
,p_use_cache_before_default=>'NO'
,p_source=>'TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949818822783567959)
,p_name=>'P8_TYPE_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8949818127008567952)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Event Type'
,p_source=>'TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>48
,p_cMaxlength=>60
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949943840575076078)
,p_name=>'P8_DISPLAY_COLOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3303823780653191130)
,p_use_cache_before_default=>'NO'
,p_source=>'DISPLAY_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'Events are typically displayed in black.  You can override that color by assigning a display color by event type.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8036362667128243518)
,p_validation_name=>'P8_EVENT_TYPE unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_event_types',
' where lower(:P8_TYPE_NAME) = lower(type_name)',
'   and (:P8_TYPE_ID != type_id or :P8_TYPE_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Type already exists.'
,p_associated_item=>wwv_flow_imp.id(8949818822783567959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8043839075856435245)
,p_validation_name=>'no related events before delete'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_events',
' where :P8_TYPE_ID = type_id'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Cannot delete Event Type - it is related to Events.'
,p_when_button_pressed=>wwv_flow_imp.id(8949818325688567954)
,p_associated_item=>wwv_flow_imp.id(8949818822783567959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1725628177392624793)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8949818230510567954)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725628280753624794)
,p_event_id=>wwv_flow_imp.id(1725628177392624793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8949820017300567961)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_EVENT_TYPES'
,p_attribute_02=>'EBA_CA_EVENT_TYPES'
,p_attribute_03=>'P8_TYPE_ID'
,p_attribute_04=>'TYPE_ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>8920388831892394953
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3303825481093248033)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set colors'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'select ',
'   BG_COLOR,',
'   TEXT_COLOR',
'from EBA_CA_COLOR_PREFS',
'where id = :P8_COLOR_PREF_ID) loop',
':P8_DISPLAY_COLOR := c1.TEXT_COLOR;',
':P8_BORDER_COLOR := c1.BG_COLOR;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3274394295685075025
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8949820118568567962)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_EVENT_TYPES'
,p_attribute_02=>'EBA_CA_EVENT_TYPES'
,p_attribute_03=>'P8_TYPE_ID'
,p_attribute_04=>'TYPE_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CA_EVENT_TYPES.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>8920388933160394954
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1725628415897624795)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1696197230489451787
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Activity Calendar'
,p_alias=>'ACTIVITY-CALENDAR'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'This is a monthly calendar of application activity, reporting distinct users and their total page views by day. Click the <strong><</strong> button to go to the previous month and the <strong>></strong> button to go forward a month. Switch between th'
||'e calendar view to the list view by clicking the <strong>list</strong> button.'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1949302845200152670)
,p_plug_name=>'Activity Calendar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>21
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID)||'' - ''||trim(to_char(count(*),''999G999G999G990''))   "Page Events",',
'trunc(time_stamp) the_day',
'from apex_activity_log l',
'where flow_id = :app_id ',
'and userid is not null ',
'and userid != ''nobody''',
'group by trunc(time_stamp), lower(USERID)'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'display_column', 'Page Events',
  'drag_and_drop', 'N',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'THE_DAY')).to_clob
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Event Details'
,p_alias=>'EVENT-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Event Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326552201174164147)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var groupCal = groupCal || {};',
'',
'groupCal.defaultDuration = 1;'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368700663348877)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1725627142782624782)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7978558965510454758)
,p_plug_name=>'Links'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8949822717776567971)
,p_plug_name=>'Event'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8950362135613566600)
,p_plug_name=>'Audit Information'
,p_parent_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P10_EVENT_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9168467117842862574)
,p_plug_name=>'Recurrence'
,p_parent_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8532383288139886335)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(1725627142782624782)
,p_button_name=>'DELETE2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_EVENT_ID is not null and',
':P10_SERIES_ID is not null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8949822830169567972)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1725627142782624782)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8949822924849567972)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1725627142782624782)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_EVENT_ID is not null and',
':P10_SERIES_ID is null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8949823027523567972)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1725627142782624782)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8949823137868567972)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1725627142782624782)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Event'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8530439581813710908)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P10_RECUR = ''Y'' and :REQUEST in (''SAVE'',''DELETE2'')'
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 08-SEP-2010 20:10 by SBKENNED'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8530441572987746266)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(8949822924849567972)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 08-SEP-2010 20:10 by SBKENNED'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(618096495069497617)
,p_branch_name=>'Go To Home if setting event to recur'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(8949823027523567972)
,p_branch_sequence=>30
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P10_RECUR = ''N'' and :P10_RECUR_FLAG = ''Y'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8949823246273567973)
,p_branch_name=>'Go To Page &LAST_VIEW.'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':REQUEST not in (''DELETE'',''DELETE2'')'
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1702548408057087093)
,p_name=>'P10_CALENDAR_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Calendar'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CALENDARS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select short_name || '' - '' || calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d',
', calendar_id r',
'from eba_ca_calendars c',
'where public_view_yn = ''Y''',
'or    exists (select ''x''',
'              from eba_ca_users u',
'              where u.username = :APP_USER',
'              and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                     or (access_level_id = 3 and restricted_to is null)',
'                    )',
'             ) ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Default Calendar -'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'Name of the event.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1888616509999461338)
,p_name=>'P10_NEW_COLOR_PREF_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Color Preference'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COLOR PREFERENCE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select color_name, id ',
'from EBA_CA_color_prefs ',
'order by display_sequence, id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Color Preference -'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1888616827578464331)
,p_name=>'P10_NEW_INTERNAL_YN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_use_cache_before_default=>'NO'
,p_prompt=>'External / Internal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:External;N,Internal Only;Y'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265615494048426865)
,p_name=>'P10_TAGS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Tags'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_ca_tags_type_sum',
' where content_type = ''EVENT''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'initial_fetch', 'FIRST_ROWSET')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3266704987818932839)
,p_name=>'P10_CONTACT_EMAIL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Contact Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Person to contact for more information.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7412069520336174558)
,p_name=>'P10_SUPPRESS_TIME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'All day event?'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'CHECKBOX'
,p_lov=>'.'||wwv_flow_imp.id(9168577419751250965)||'.'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'If you do not want the start time to display on the Monthly report, check Suppress Time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7978523671472361847)
,p_name=>'P10_LINK_NAME_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(7978558965510454758)
,p_prompt=>'Name 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of 1st link.  If not provided, the URL will be displayed.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7978525249093364810)
,p_name=>'P10_LINK_URL_1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(7978558965510454758)
,p_prompt=>'URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_protection_level=>'S'
,p_help_text=>'URL for 1st link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7978534551087384339)
,p_name=>'P10_LINK_NAME_2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(7978558965510454758)
,p_prompt=>'2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of 2nd link.  If not provided, the URL will be displayed.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7978535059745386853)
,p_name=>'P10_LINK_URL_2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(7978558965510454758)
,p_prompt=>'2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_protection_level=>'S'
,p_help_text=>'URL for 2nd link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7978542847671411740)
,p_name=>'P10_LINK_NAME_3'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(7978558965510454758)
,p_prompt=>'3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of 3rd link.  If not provided, the URL will be displayed.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7978543454943413778)
,p_name=>'P10_LINK_URL_3'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(7978558965510454758)
,p_prompt=>'3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_protection_level=>'S'
,p_help_text=>'URL for 3rd link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8406782668677045070)
,p_name=>'P10_SERIES_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(9168467117842862574)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8530400588029561358)
,p_name=>'P10_LOCATION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Location of the event.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8530441187747741052)
,p_name=>'P10_RECUR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(9168467117842862574)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8791495222107309579)
,p_name=>'P10_EVENT_DATE_D'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Select the event date.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8825574706751217540)
,p_name=>'P10_NEW_EVENT_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'New Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>48
,p_cMaxlength=>60
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'If desired type is not in the select list, you can enter an event type here and it will be created.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949823338095567974)
,p_name=>'P10_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949823429455567975)
,p_name=>'P10_EVENT_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of the event.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949823623185567975)
,p_name=>'P10_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_item_default=>'nvl(:P1_EVENT_TYPE,:P12_EVENT_TYPE)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EVENT TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select 1 ob, ''- New Event Type -'' d, -1 r',
'  from dual',
'union all',
'select 2 ob, type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', '' (External)''), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
')',
'order by ob, d'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Type -'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Type of event.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949823824085567975)
,p_name=>'P10_EVENT_DATE_TIME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949824829378567976)
,p_name=>'P10_EVENT_DESC'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Description of the event.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949825025474567977)
,p_name=>'P10_CONTACT_PERSON'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Contact Person'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Person to contact for more information.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949825240616567977)
,p_name=>'P10_CREATED_ON'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(8950362135613566600)
,p_prompt=>'Created:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was created.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949825539714567977)
,p_name=>'P10_CREATED_BY'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(8950362135613566600)
,p_prompt=>'Created By:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who created the record.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949825735356567977)
,p_name=>'P10_LAST_UPDATED_ON'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(8950362135613566600)
,p_prompt=>'Last Updated:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was last updated.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949826048251567977)
,p_name=>'P10_LAST_UPDATED_BY'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(8950362135613566600)
,p_prompt=>'Last Updated By:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who last updated the record.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9161186432641093349)
,p_name=>'P10_EVENT_START_TIME_D'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Start Time'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'START TIME SELECTOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),v(''APP_TIME_FORMAT'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),v(''APP_TIME_FORMAT'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i',
''))
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Start time of the event.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9161187141645095972)
,p_name=>'P10_DURATION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'End Time'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(to_date(to_char(trunc(sysdate),''&APP_DATE_FORMAT.'')||:P10_EVENT_START_TIME_D,',
'                       ''&APP_DATE_FORMAT.''||''&APP_TIME_FORMAT.'') + ((i-1)/(24*4)),',
'               ''&APP_TIME_FORMAT.'') ||',
'       '' ('' ||',
'      case when i = 1 then ''0 mins''',
'            when i = 2 then ''15 mins''',
'            when i = 3 then ''30 mins''',
'            when i = 4 then ''45 mins''',
'            when i = 5 then ''1 hr''',
'            when i > 5 then to_char(trunc((i-1)/4)) || '' hrs'' ||',
'              case when i - trunc((i-1)/4)*4 = 1 then ''''',
'                   when i - trunc((i-1)/4)*4 = 2 then '' 15 mins''',
'                   when i - trunc((i-1)/4)*4 = 3 then '' 30 mins''',
'                   when i - trunc((i-1)/4)*4 = 4 then '' 45 mins''',
'               end',
'             end',
'       || '')'' d,',
'       (i-1)/4 r',
'  from wwv_flow_dual100',
' where i < 50',
'order by i',
''))
,p_lov_cascade_parent_items=>'P10_EVENT_START_TIME_D'
,p_ajax_items_to_submit=>'P10_DURATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'End time of the event.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9168551541466124786)
,p_name=>'P10_RECUR_FREQ'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(9168467117842862574)
,p_prompt=>'Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RECUR FREQUENCY'
,p_lov=>'.'||wwv_flow_imp.id(9168549725535120172)||'.'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'Select recurrence frequency.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9168553333285131923)
,p_name=>'P10_RECUR_END_DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(9168467117842862574)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case when :P10_EVENT_ID is null',
'     then sysdate+7',
'     else to_date(:P10_EVENT_DATE_D,''&APP_DATE_FORMAT.'')+7',
'     end'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Date on which the recurrence will end.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9168569136411208485)
,p_name=>'P10_RECUR_FLAG'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(8949822717776567971)
,p_prompt=>'Recurs?'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'CHECKBOX'
,p_lov=>'.'||wwv_flow_imp.id(9168577419751250965)||'.'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'Identifies if event recurs.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3802263825760794277)
,p_computation_sequence=>10
,p_computation_item=>'P10_EVENT_DATE_D'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'to_char(to_date(:P10_EVENT_DATE_D,''&APP_DATE_TIME_FORMAT.''),''&APP_NLS_DATE_FORMAT.'')'
,p_compute_when=>'P10_EVENT_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(8023048764933158782)
,p_computation_sequence=>10
,p_computation_item=>'P10_EVENT_START_TIME_D'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(to_date(to_char(current_timestamp,''&APP_TIME_FORMAT.''),''&APP_TIME_FORMAT.''),''HH'')+1/24,''&APP_TIME_FORMAT.'') from dual',
''))
,p_compute_when=>'P10_EVENT_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(8421859794664787752)
,p_computation_sequence=>20
,p_computation_item=>'P10_DURATION'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
,p_compute_when=>'P10_EVENT_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1521808774870441028)
,p_validation_name=>'P10_NEW_EVENT_TYPE Not Null'
,p_validation_sequence=>10
,p_validation=>'P10_NEW_EVENT_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P10_TYPE_ID'
,p_validation_condition2=>'-1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(8825574706751217540)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1874799872550207094)
,p_validation_name=>'P10_NEW_COLOR_PREF_ID Not Null'
,p_validation_sequence=>30
,p_validation=>'P10_NEW_COLOR_PREF_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P10_TYPE_ID'
,p_validation_condition2=>'-1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(1888616509999461338)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1874800047108207095)
,p_validation_name=>'P10_NEW_INTERNAL_YN Not Null'
,p_validation_sequence=>40
,p_validation=>'P10_NEW_INTERNAL_YN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P10_TYPE_ID'
,p_validation_condition2=>'-1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(1888616827578464331)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9168616741110399019)
,p_validation_name=>'P10_RECUR_END_DATE not null'
,p_validation_sequence=>50
,p_validation=>'P10_RECUR_END_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Recur End Date must be supplied.'
,p_validation_condition=>'P10_RECUR_FLAG'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(9168553333285131923)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9168615324010384642)
,p_validation_name=>'recur end date > event date'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'to_date(:P10_RECUR_END_DATE,''&APP_DATE_FORMAT.'') >=',
'to_date(:P10_EVENT_DATE_D,''&APP_DATE_FORMAT.'')'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Recur End Date must be after Event Date'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_RECUR_END_DATE is not null and ',
':P10_RECUR_FLAG is not null'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(9168553333285131923)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(303252241767103112)
,p_validation_name=>'Valid Characters in Tag'
,p_validation_sequence=>70
,p_validation=>'not regexp_like( :P10_TAGS, ''[:;#\/\\\?\&]'' )'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Tags may not contain the following characters: : ; \ / ? &'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3265615494048426865)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(494493845774805220)
,p_validation_name=>'URL 1 must start with http'
,p_validation_sequence=>80
,p_validation=>'substr(:P10_LINK_URL_1, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_validation_condition=>'P10_LINK_URL_1'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(7978525249093364810)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(494493920291805221)
,p_validation_name=>'URL 2 must start with http'
,p_validation_sequence=>90
,p_validation=>'substr(:P10_LINK_URL_2, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_validation_condition=>'P10_LINK_URL_2'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(7978535059745386853)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(494494065495805222)
,p_validation_name=>'URL 3 must start with http'
,p_validation_sequence=>100
,p_validation=>'substr(:P10_LINK_URL_3, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_validation_condition=>'P10_LINK_URL_3'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(7978543454943413778)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8421870570947818699)
,p_name=>'save duration'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_DURATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8421870887205818704)
,p_event_id=>wwv_flow_imp.id(8421870570947818699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var duration = $v("P10_DURATION");',
'',
'if ( duration > 0 ) {',
'   groupCal.defaultDuration = duration;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8422027866043063297)
,p_name=>'reset duration after refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_DURATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8422028183989063298)
,p_event_id=>wwv_flow_imp.id(8422027866043063297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_DURATION'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'groupCal.defaultDuration'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9168584128886263080)
,p_name=>'display recurrence region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_RECUR_FLAG'
,p_condition_element=>'P10_RECUR_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9168584425506263082)
,p_event_id=>wwv_flow_imp.id(9168584128886263080)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9168467117842862574)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9168584616479263083)
,p_event_id=>wwv_flow_imp.id(9168584128886263080)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9168467117842862574)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8825604212179360979)
,p_name=>'show/hide new event type'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_TYPE_ID'
,p_condition_element=>'P10_TYPE_ID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'-1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8825604505614360986)
,p_event_id=>wwv_flow_imp.id(8825604212179360979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_NEW_EVENT_TYPE,P10_NEW_COLOR_PREF_ID,P10_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8825604708007360991)
,p_event_id=>wwv_flow_imp.id(8825604212179360979)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_NEW_EVENT_TYPE,P10_NEW_COLOR_PREF_ID,P10_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8022974454515928680)
,p_name=>'redefault recur end date'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_EVENT_DATE_D'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P10_EVENT_ID is null or :P10_RECUR_FLAG is null) and regexp_like(:P10_EVENT_DATE_D,''^[:digit:]+\-[:alpha:]+\-[:digit:]+$'')'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8022974769373928685)
,p_event_id=>wwv_flow_imp.id(8022974454515928680)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_RECUR_END_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'to_date(:P10_EVENT_DATE_D,''&APP_DATE_FORMAT.'')+7'
,p_attribute_07=>'P10_EVENT_DATE_D'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3313267496204681817)
,p_name=>'Hide time if All Day event'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_SUPPRESS_TIME'
,p_condition_element=>'P10_SUPPRESS_TIME'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3313267774304681819)
,p_event_id=>wwv_flow_imp.id(3313267496204681817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_EVENT_START_TIME_D,P10_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3313267981596681820)
,p_event_id=>wwv_flow_imp.id(3313267496204681817)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_EVENT_START_TIME_D,P10_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1725627186441624783)
,p_name=>'Cancel Dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8949822830169567972)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725627326129624784)
,p_event_id=>wwv_flow_imp.id(1725627186441624783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8791645793504736552)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select event_name,',
'          calendar_id,',
'          type_id,',
'          event_date_time,',
'          duration,',
'          event_desc,',
'          contact_person,',
'          case when display_time = ''Y'' then null',
'               when display_time = ''N'' then ''Y''',
'               end suppress_time,',
'          location,',
'          link_name_1, link_url_1, link_name_2, link_url_2, link_name_3, link_url_3,',
'          series_id,',
'          created_on, ',
'          created_by, ',
'          last_updated_on, ',
'          last_updated_by, ',
'          tags,',
'          contact_email',
'     from EBA_ca_events',
'   where event_id = :P10_EVENT_ID )',
'loop',
'   :P10_EVENT_NAME         := c1.event_name;	',
'   :P10_CALENDAR_ID        := c1.calendar_id;',
'   :P10_TYPE_ID	           := c1.type_id;	',
'   :P10_EVENT_DATE_TIME	   := to_char(c1.event_date_time,''&APP_DATE_FORMAT.&APP_TIME_FORMAT.'');		',
'   :P10_EVENT_DATE_D	   := to_char(c1.event_date_time,''&APP_DATE_FORMAT.'');	',
'   :P10_EVENT_START_TIME_D := to_char(c1.event_date_time,''&APP_TIME_FORMAT.'');	',
'   :P10_DURATION           := c1.duration;	',
'   :P10_EVENT_DESC	   := c1.event_desc;	',
'   :P10_CONTACT_PERSON	   := c1.contact_person;',
'   if c1.contact_email is null and ',
'      instr(c1.contact_person,''@'') > 0 and ',
'      instr(c1.contact_person,''.'') > 0 then',
'      :P10_CONTACT_EMAIL      := c1.contact_person;',
'   else',
'      :P10_CONTACT_EMAIL      := c1.contact_email;',
'   end if;',
'   ',
'   :P10_SUPPRESS_TIME      := c1.suppress_time;',
'   :P10_LOCATION           := c1.location;',
'   :P10_LINK_NAME_1        := c1.link_name_1;',
'   :P10_LINK_URL_1         := c1.link_url_1;',
'   :P10_LINK_NAME_2        := c1.link_name_2;',
'   :P10_LINK_URL_2         := c1.link_url_2;',
'   :P10_LINK_NAME_3        := c1.link_name_3;',
'   :P10_LINK_URL_3         := c1.link_url_3;',
'   :P10_TAGS               := c1.tags;',
'   :P10_SERIES_ID          := c1.series_id;	',
'',
'   :P10_CREATED_ON	   := apex_util.get_since(c1.created_on);	',
'   :P10_CREATED_BY	   := c1.created_by;	',
'   :P10_LAST_UPDATED_ON	   := apex_util.get_since(c1.last_updated_on);	',
'   :P10_LAST_UPDATED_BY	   := c1.last_updated_by;	',
'',
'   if c1.series_id is not null then',
'      for c2 in (',
'         select recur_freq,',
'                end_date',
'           from EBA_ca_series',
'         where series_id = c1.series_id )',
'      loop',
'         :P10_RECUR_FLAG	:= ''Y'';',
'         :P10_RECUR_FREQ	:= c2.recur_freq;	',
'         :P10_RECUR_END_DATE	:= to_char(c2.end_date,''&APP_DATE_FORMAT.'');	',
'      end loop;',
'      :P10_RECUR := ''Y'';',
'   else',
'      :P10_RECUR := ''N'';',
'   end if;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'failed to load data'
,p_process_when=>'P10_EVENT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>8762214608096563544
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9172452442391967070)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_type_id         number;',
'   l_new_event_type  varchar2(60);',
'   l_display_time    varchar2(1);',
'   l_duration        number := :P10_DURATION;',
'begin',
'',
'if :P10_TYPE_ID = ''-1'' then',
'   l_type_id        := null;',
'   l_new_event_type := :P10_NEW_EVENT_TYPE;',
'else',
'   l_type_id        := :P10_TYPE_ID;',
'   l_new_event_type := null;',
'end if;',
'',
'if :P10_SUPPRESS_TIME = ''Y'' then',
'   l_display_time := ''N'';',
'   l_duration := 24;',
'else',
'   l_display_time := ''Y'';',
'end if;',
'',
'EBA_ca_api.create_event (',
'   p_event_name      => :P10_EVENT_NAME,',
'   p_calendar_id     => :P10_CALENDAR_ID,',
'   p_type_id         => l_type_id,',
'   p_new_event_type  => l_new_event_type,',
'   p_new_color_pref_id => :P10_NEW_COLOR_PREF_ID,',
'   p_new_internal_yn   => :P10_NEW_INTERNAL_YN,',
'   p_event_date_time => to_date(:P10_EVENT_DATE_D||:P10_EVENT_START_TIME_D,',
'                               ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''),',
'   p_duration        => l_duration,',
'   p_event_desc      => :P10_EVENT_DESC,',
'   p_contact_person  => :P10_CONTACT_PERSON,',
'   p_contact_email   => :P10_CONTACT_EMAIL,',
'   p_display_time    => l_display_time,',
'   p_location        => :P10_LOCATION,',
'   p_link_name_1     => :P10_LINK_NAME_1,',
'   p_link_url_1      => :P10_LINK_URL_1,',
'   p_link_name_2     => :P10_LINK_NAME_2,',
'   p_link_url_2      => :P10_LINK_URL_2,',
'   p_link_name_3     => :P10_LINK_NAME_3,',
'   p_link_url_3      => :P10_LINK_URL_3,',
'   p_tags            => :P10_TAGS,',
'   --',
'   p_recur_flag      => :P10_RECUR_FLAG,',
'   p_recur_freq      => :P10_RECUR_FREQ,',
'   p_recur_end_date  => to_date(:P10_RECUR_END_DATE||:P10_EVENT_START_TIME_D,',
'                               ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.'') );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error creating event.'
,p_process_when_button_id=>wwv_flow_imp.id(8949823137868567972)
,p_process_success_message=>'Event created.'
,p_internal_uid=>9143021256983794062
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8530439688047712760)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_type_id         number;',
'   l_new_event_type  varchar2(60);',
'   l_display_time    varchar2(1);',
'   l_duration        number := :P10_DURATION;',
'begin',
'',
'if :P10_SUPPRESS_TIME = ''Y'' then',
'   l_display_time := ''N'';',
'   l_duration := 24;',
'else',
'   l_display_time := ''Y'';',
'end if;',
'',
'for c1 in (',
'   select series_id, to_char(event_date_time,''&APP_DATE_FORMAT.'') event_date',
'     from EBA_ca_events',
'    where event_id = :P10_EVENT_ID )',
'loop',
'   -- simple update or adding recurrence',
'   if c1.series_id is null then',
'',
'      if :P10_TYPE_ID = ''-1'' then',
'         l_type_id        := null;',
'         l_new_event_type := :P10_NEW_EVENT_TYPE;',
'      else',
'         l_type_id        := :P10_TYPE_ID;',
'         l_new_event_type := null;',
'      end if;',
'',
'      EBA_ca_api.update_event (',
'         p_event_id        => :P10_EVENT_ID,',
'         p_event_name      => :P10_EVENT_NAME,',
'         p_calendar_id     => :P10_CALENDAR_ID,',
'         p_type_id         => l_type_id,',
'         p_new_event_type  => l_new_event_type,',
'         p_new_color_pref_id  => :P10_NEW_COLOR_PREF_ID,',
'         p_new_internal_yn    => :P10_NEW_INTERNAL_YN,',
'         p_event_date_time => to_date(:P10_EVENT_DATE_D||:P10_EVENT_START_TIME_D,',
'                                     ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''),',
'         p_duration        => l_duration,',
'         p_event_desc      => :P10_EVENT_DESC,',
'         p_contact_person  => :P10_CONTACT_PERSON,',
'         p_contact_email   => :P10_CONTACT_EMAIL,',
'         p_display_time    => l_display_time,',
'         p_location        => :P10_LOCATION,',
'         p_link_name_1     => :P10_LINK_NAME_1,',
'         p_link_url_1      => :P10_LINK_URL_1,',
'         p_link_name_2     => :P10_LINK_NAME_2,',
'         p_link_url_2      => :P10_LINK_URL_2,',
'         p_link_name_3     => :P10_LINK_NAME_3,',
'         p_link_url_3      => :P10_LINK_URL_3,',
'         p_tags            => :P10_TAGS,',
'         --',
'         p_recur_flag      => :P10_RECUR_FLAG,',
'         p_recur_freq      => :P10_RECUR_FREQ,',
'         p_recur_end_date  => to_date(:P10_RECUR_END_DATE||:P10_EVENT_START_TIME_D,',
'                                     ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''), ',
'         --',
'         p_update_request => ''S'' );',
'',
'   else',
'      -- removing recurrence',
'      if c1.series_id is not null and :P10_RECUR_FLAG is null then',
'         :P10_RECUR := ''Y'';',
'         :P11_REQUEST_TYPE := ''AFO'';',
'      else',
'         if :P10_EVENT_DATE_D != c1.event_date then ',
'            :P10_RECUR := ''Y'';',
'            :P11_REQUEST_TYPE := ''FO'';',
'         else',
'            for c2 in (',
'               select recur_freq, end_date',
'                 from EBA_ca_series',
'                where series_id = c1.series_id )',
'            loop',
'               if c2.recur_freq != :P10_RECUR_FREQ or',
'                  to_char(c2.end_date,''&APP_DATE_FORMAT.'') != :P10_RECUR_END_DATE then',
'                  :P10_RECUR := ''Y'';',
'                  :P11_REQUEST_TYPE := ''AF'';',
'               else',
'                  :P10_RECUR := ''Y'';',
'                  :P11_REQUEST_TYPE := ''AFO'';',
'               end if;',
'            end loop;',
'         end if;',
'      end if;',
'   end if;',
'end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error updating event.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8949823027523567972)
,p_process_success_message=>'Event updated.'
,p_internal_uid=>8501008502639539752
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8530442085108749756)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Simple Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EBA_ca_api.delete_event (',
'   p_event_id       => :P10_EVENT_ID );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error deleting event.'
,p_process_when_button_id=>wwv_flow_imp.id(8949822924849567972)
,p_process_success_message=>'Event deleted.'
,p_internal_uid=>8501010899700576748
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8532384583075894361)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Recur Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_RECUR        := ''Y'';',
':P11_REQUEST_TYPE := ''D'';'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(8532383288139886335)
,p_internal_uid=>8502953397667721353
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1725627415184624785)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>1696196229776451777
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Update or Delete Affects'
,p_alias=>'UPDATE-OR-DELETE-AFFECTS'
,p_step_title=>'Update or Delete Affects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368700663348877)
,p_protection_level=>'C'
,p_help_text=>'You will only see this page when you''re updating a recurring event. Choose whether or not the changes you made on the previous page applies to all events, future events, or only the initial event. Click the <strong>Apply Changes</strong> button to sa'
||'ve your changes. Click the <strong>Cancel</strong> button toleave this page and not make any changes to your event(s).'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7418252646888090880)
,p_plug_name=>'Update Event(s)'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P11_REQUEST_TYPE'
,p_plug_display_when_cond2=>'D'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8530413478056638507)
,p_plug_name=>'Scope'
,p_parent_plug_id=>wwv_flow_imp.id(7418252646888090880)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P11_REQUEST_TYPE'
,p_plug_display_when_cond2=>'D'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8532376265021860787)
,p_name=>'Associated Events'
,p_parent_plug_id=>wwv_flow_imp.id(7418252646888090880)
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(EVENT_DATE_TIME,''&APP_DATE_FORMAT.'') ||',
'          case when event_id = :P10_EVENT_ID',
'               then '' *''',
'               end event_date,',
'       event_name,',
'       to_char(EVENT_DATE_TIME,''&APP_TIME_FORMAT.'') || '' - '' ||',
'       to_char(to_date(to_char(EVENT_DATE_TIME,',
'                       ''&APP_DATE_FORMAT.''||''&APP_TIME_FORMAT.''),',
'               ''&APP_DATE_FORMAT.''||''&APP_TIME_FORMAT.'')',
'                +(duration/24),''&APP_TIME_FORMAT.'') ||',
'       '' ('' ||',
'       case when duration = .5 then ''30 mins''',
'            when duration = 1 then ''1 hr''',
'            when duration > 1 then to_char(duration) || '' hrs''',
'            end ||',
'       '')'' event_time',
'  from EBA_CA_EVENTS',
' where series_id = :P10_SERIES_ID',
' order by EVENT_DATE_TIME'))
,p_footer=>'* selected event'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No associated events found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8532376575835860796)
,p_query_column_id=>1
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8532376686192860799)
,p_query_column_id=>2
,p_column_alias=>'EVENT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8532376779199860799)
,p_query_column_id=>3
,p_column_alias=>'EVENT_TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Time'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7418262620138102121)
,p_plug_name=>'Remove Event(s)'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P11_REQUEST_TYPE'
,p_plug_display_when_cond2=>'D'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8530420676469638514)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8530414087866638508)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8530420676469638514)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8530414275783638509)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8530420676469638514)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_button_condition=>'P11_REQUEST_TYPE'
,p_button_condition2=>'D'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8530414674414638509)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8530420676469638514)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_button_condition=>'P11_REQUEST_TYPE'
,p_button_condition2=>'D'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8530424687422638529)
,p_branch_name=>'Go To Home'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(8530414275783638509)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3160412624610205780)
,p_branch_name=>'Go Home'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(8530414674414638509)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8530413693965638507)
,p_name=>'P11_UPD_REQUEST'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8530413478056638507)
,p_prompt=>'Updates Affect:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UPD_REQUEST_AFO'
,p_lov=>'.'||wwv_flow_imp.id(9175601920653508973)||'.'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Identify which events you want this update to affect.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8530432688992656274)
,p_name=>'P11_DEL_REQUEST'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7418262620138102121)
,p_item_default=>'A'
,p_prompt=>'Delete Affects:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UPD_REQUEST_AFO'
,p_lov=>'.'||wwv_flow_imp.id(9175601920653508973)||'.'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Identify which events you want this delete to affect.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8530434092586666756)
,p_name=>'P11_REQUEST_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8530413478056638507)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8530422194754638521)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_type_id         number;',
'   l_new_event_type  varchar2(60);',
'   l_display_time    varchar2(1);',
'begin',
'',
'if :P10_TYPE_ID = ''-1'' then',
'   l_type_id        := null;',
'   l_new_event_type := :P10_NEW_EVENT_TYPE;',
'else',
'   l_type_id        := :P10_TYPE_ID;',
'   l_new_event_type := null;',
'end if;',
'',
'if :P10_SUPPRESS_TIME = ''Y'' then',
'   l_display_time := ''N'';',
'else',
'   l_display_time := ''Y'';',
'end if;',
'',
'EBA_ca_api.update_event (',
'   p_event_id        => :P10_EVENT_ID,',
'   p_event_name      => :P10_EVENT_NAME,',
'   p_type_id         => l_type_id,',
'   p_calendar_id     => :P10_CALENDAR_ID,',
'   p_new_event_type  => l_new_event_type,',
'   p_new_color_pref_id  => :P10_NEW_COLOR_PREF_ID,',
'   p_new_internal_yn    => :P10_NEW_INTERNAL_YN,',
'   p_event_date_time => to_date(:P10_EVENT_DATE_D||:P10_EVENT_START_TIME_D,',
'                               ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''),',
'   p_duration        => :P10_DURATION,',
'   p_event_desc      => :P10_EVENT_DESC,',
'   p_contact_person  => :P10_CONTACT_PERSON,',
'   p_contact_email   => :P10_CONTACT_EMAIL,',
'   p_display_time    => l_display_time,',
'   p_location        => :P10_LOCATION,',
'   p_link_name_1     => :P10_LINK_NAME_1,',
'   p_link_url_1      => :P10_LINK_URL_1,',
'   p_link_name_2     => :P10_LINK_NAME_2,',
'   p_link_url_2      => :P10_LINK_URL_2,',
'   p_link_name_3     => :P10_LINK_NAME_3,',
'   p_link_url_3      => :P10_LINK_URL_3,',
'   --',
'   p_recur_flag      => :P10_RECUR_FLAG,',
'   p_recur_freq      => :P10_RECUR_FREQ,',
'   p_recur_end_date  => to_date(:P10_RECUR_END_DATE||:P10_EVENT_START_TIME_D,',
'                               ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''), ',
'   --',
'   p_update_request => :P11_UPD_REQUEST,',
'   p_tags           => :P10_TAGS );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error updating Event(s).'
,p_process_when_button_id=>wwv_flow_imp.id(8530414275783638509)
,p_process_success_message=>'Event(s) updated.'
,p_internal_uid=>8500991009346465513
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8530422396997638521)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EBA_ca_api.delete_event (',
'   p_event_id       => :P10_EVENT_ID,',
'   --',
'   p_delete_request => :P11_DEL_REQUEST );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error deleting Event(s).'
,p_process_when_button_id=>wwv_flow_imp.id(8530414674414638509)
,p_process_success_message=>'Event(s) deleted.'
,p_internal_uid=>8500991211589465513
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Timeline'
,p_alias=>'TIMELINE'
,p_step_title=>'&APPLICATION_TITLE. - Timeline'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949832234238591801)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Badge.apex-cal-default { background-color: #2578CF; border-color: #2578CF; color: #FFFFFF; }',
'.t-Badge.apex-cal-black { background-color: #303030; border-color: #303030; color: #FFFFFF; }',
'.t-Badge.apex-cal-blue { background-color: #4183D7; border-color: #4183D7; color: #FFFFFF; }',
'.t-Badge.apex-cal-bluesky { background-color: #6BB9F0; border-color: #6BB9F0; color: #404040; }',
'.t-Badge.apex-cal-brown { background-color: #D88935; border-color: #D88935; color: #404040; }',
'.t-Badge.apex-cal-cyan { background-color: #1ABC9C; border-color: #1ABC9C; color: #404040; }',
'.t-Badge.apex-cal-darkblue { background-color: #1F5F97; border-color: #1F5F97; color: #FFFFFF; }',
'.t-Badge.apex-cal-gray { background-color: #A0A0A0; border-color: #A0A0A0; color: #404040; }',
'.t-Badge.apex-cal-green { background-color: #2ECC71; border-color: #2ECC71; color: #404040; }',
'.t-Badge.apex-cal-lime { background-color: #28A346; border-color: #28A346; color: #FFFFFF; }',
'.t-Badge.apex-cal-orange { background-color: #F39C12; border-color: #F39C12; color: #404040; }',
'.t-Badge.apex-cal-red { background-color: #D91E18; border-color: #D91E18; color: #FFFFFF; }',
'.t-Badge.apex-cal-silver { background-color: #BDC3C7; border-color: #BDC3C7; color: #404040; }',
'.t-Badge.apex-cal-white { background-color: #F0F0F0; border-color: #F0F0F0; color: #404040; }',
'.t-Badge.apex-cal-yellow { background-color: #F1C40F; border-color: #F1C40F; color: #404040; }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This is the timeline of future events page. It shows all upcoming events that match your current filter settings. To change your filter values, click the <strong>Update Filters</strong> button, make your changes and then click the <strong>Set</strong'
||'> button.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1237048887694800746)
,p_name=>'Notifications'
,p_display_sequence=>10
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, ',
'       nvl(lower(NOTIFICATION_TYPE),''yellow'') as ALERT_TYPE, ',
'       NOTIFICATION_NAME alert_title, ',
'       NOTIFICATION_DESCRIPTION alert_desc,',
'       '''' alert_action',
'  from EBA_CA_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)',
' order by nvl(DISPLAY_SEQUENCE,0),NOTIFICATION_NAME'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2882902941739462796
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1237049080807800762)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943760120378682798)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943760488710682798)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943760875137682798)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Desc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1943761269693682798)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Action'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1726273658316509099)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1977695236331027333)
,p_plug_name=>'Timeline of Future Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.event_id id',
',      case when :MULTIPLE_CAL_BO = ''Include'' then nvl(c.short_name, ''Default'') ||'': '' end ||e.event_name ||',
'           case when exists (select 1 from EBA_CA_FILES',
'                             where event_id = e.event_id)',
'                then '' (a)''',
'           end title',
',      ''f?p=''||:app_id||'':3:''||:app_session||'':::3:LAST_VIEW,P3_EVENT_ID:12,''||e.event_id link',
',      case when et.display_color is not null then',
'         ''apex-cal-''||',
'         (select lower(cp.color_name) from eba_ca_color_prefs cp where cp.bg_color = et.display_color)',
'       else ',
'         ''apex-cal-default''',
'       end color_class',
',      et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) event_type',
',      e.event_date_time',
',      case when display_time=''N'' then '''' ',
'            when to_char(e.EVENT_DATE_TIME,''MI'') = ''00'' then ',
'                 ltrim(to_char(e.EVENT_DATE_TIME,''HHam''),''0'')',
'            else ',
'                 ltrim(to_char(e.EVENT_DATE_TIME,''HH:MIam''),''0'')',
'            end ||',
'       case when display_time=''N'' then '''' ',
'            when e.duration = 0  then ''(0 mins)''',
'            when e.duration = .25 then ''(15 mins)''',
'            when e.duration = .5 then ''(30 mins)''',
'            when e.duration = .75 then ''(45 mins)''',
'            when e.duration = 1 then ''(1 hr)''',
'            when e.duration > 1 then to_char(trunc(e.duration)) || '' hrs''',
'              || case when e.duration - trunc(e.duration) = 0  then '')''',
'                      when e.duration - trunc(e.duration) = .25 then '' 15 mins)''',
'                      when e.duration - trunc(e.duration) = .5 then '' 30 mins)''',
'                      when e.duration - trunc(e.duration) = .75 then '' 45 mins)''',
'                 end',
'       end  time',
',      e.EVENT_DESC',
',      e.LOCATION',
',      e.CONTACT_PERSON',
',      e.tags',
',      e.CREATED_BY|| '' - ''||apex_util.get_since(e.created_on) created',
',      e.display_time',
',      e.LINK_NAME_1, e.LINK_NAME_2, e.LINK_NAME_3',
',      e.LINK_URL_1, e.LINK_URL_2, e.LINK_URL_3',
'from eba_ca_events e',
',    eba_ca_event_types et',
',    eba_ca_calendars c',
'where e.EVENT_DATE_TIME >= decode(e.display_time,''N'', trunc(sysdate),cast(sysdate-(e.duration/24) as timestamp))',
'and   e.type_id = et.type_id (+)',
'and   e.calendar_id = c.calendar_id (+)',
'and   (   nvl(:EVENT_TYPES_FILTER,''0'') = ''0'' ',
'       or instr('':''||:EVENT_TYPES_FILTER||'':'', '':''||nvl(e.type_id,''-1'')||'':'') > 0',
'      )',
'and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'       or (    nvl(:CALENDARS_FILTER,''0'') = ''0'' ',
'           and (   e.calendar_id is null',
'                or c.public_view_yn = ''Y''',
'                or exists (select ''x''',
'                           from eba_ca_users u',
'                           where u.username = :APP_USER',
'                           and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                  or (access_level_id = 3 and restricted_to is null)',
'                                 )',
'                          )',
'               ) ',
'          )',
'       or instr(:CALENDARS_FILTER,nvl(e.calendar_id,''-1'')) > 0',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (:CONTACT_EMAIL is null',
'           or instr(upper(e.contact_email), :CONTACT_EMAIL) > 0',
'          )',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(et.internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'order by case when nvl(display_time,''Y'')=''N'' then trunc(e.EVENT_DATE_TIME) else e.EVENT_DATE_TIME end'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>100
,p_plug_query_no_data_found=>'No calendar events found'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'EVENT_DATE_TIME',
  'attribute_02', 'COLOR_CLASS',
  'attribute_03', 'TITLE',
  'attribute_04', 'LINK',
  'attribute_05', 'TIME',
  'attribute_06', 'TAGS',
  'attribute_07', 'LOCATION',
  'attribute_08', 'CONTACT_PERSON',
  'attribute_09', 'EVENT_DESC',
  'attribute_12', 'D',
  'attribute_13', 'EVENT_TYPE',
  'attribute_14', 'EVENT_TYPE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1547365497629669379)
,p_name=>'COLOR_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color class'
,p_display_sequence=>250
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1556090031823463775)
,p_name=>'LINK'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>220
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1556090123046463776)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Created'
,p_display_sequence=>230
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1556090162764463777)
,p_name=>'TIME'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Time'
,p_display_sequence=>240
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977695496030027337)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977695984881027340)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977696974896027344)
,p_name=>'EVENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Event Type'
,p_display_sequence=>40
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977697487993027345)
,p_name=>'EVENT_DATE_TIME'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Event Date Time'
,p_display_sequence=>50
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977699507288027346)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Event Desc'
,p_display_sequence=>90
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977700005306027346)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Location'
,p_display_sequence=>100
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977700513449027347)
,p_name=>'CONTACT_PERSON'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Contact Person'
,p_display_sequence=>110
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977701013428027347)
,p_name=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Tags'
,p_display_sequence=>120
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977702519075027350)
,p_name=>'DISPLAY_TIME'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Display Time'
,p_display_sequence=>150
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977702975725027351)
,p_name=>'LINK_NAME_1'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Name 1'
,p_display_sequence=>160
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977703516293027352)
,p_name=>'LINK_NAME_2'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Name 2'
,p_display_sequence=>170
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977704051325027353)
,p_name=>'LINK_NAME_3'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Name 3'
,p_display_sequence=>180
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977704495079027354)
,p_name=>'LINK_URL_1'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Url 1'
,p_display_sequence=>190
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977705011920027354)
,p_name=>'LINK_URL_2'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Url 2'
,p_display_sequence=>200
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1977705477149027354)
,p_name=>'LINK_URL_3'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Url 3'
,p_display_sequence=>210
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3266605776121084311)
,p_plug_name=>'Timezone'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' "TIMEZONE"',
'',
' '))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'Y',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3721197960710735270)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3548950193322615306)
,p_name=>'Calendars'
,p_parent_plug_id=>wwv_flow_imp.id(3721197960710735270)
,p_template=>4072358936313175081
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d',
'  from',
'(',
'select ''Default'' d,',
'       1 ob',
'  from dual',
' where exists (select 1 from eba_ca_events',
'                where calendar_id is null)',
' and   (   nvl(:CALENDARS_FILTER,''0'') = ''0''',
'        or instr(:CALENDARS_FILTER, ''-1'') > 0',
'       )',
'union',
'select short_name ||'' - ''|| calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       2 ob',
'  from eba_ca_calendars c',
'  where (   (     nvl(:CALENDARS_FILTER,''0'') = ''0'' ',
'              and  (   c.public_view_yn = ''Y''',
'                    or exists (select ''x''',
'                               from eba_ca_users u',
'                               where u.username = :APP_USER',
'                               and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                      or (access_level_id = 3 and restricted_to is null)',
'                                     )',
'                               )',
'                   ) ',
'              )',
'           or instr('':''||:CALENDARS_FILTER||'':'','':''||nvl(calendar_id,''-1'')||'':'') > 0',
'          )',
')',
' order by ob, d'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1878345256329380576)
,p_query_column_id=>1
,p_column_alias=>'D'
,p_column_display_sequence=>1
,p_column_heading=>'Calendars'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3721196900676735259)
,p_name=>'Contact Email'
,p_parent_plug_id=>wwv_flow_imp.id(3721197960710735270)
,p_template=>4072358936313175081
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(:CONTACT_EMAIL, ''- All Contacts -'') contact_email',
'from dual'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x'' from',
'eba_ca_events where contact_email is not null;'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_imp.id(1641094558700216905)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1878344623700380575)
,p_query_column_id=>1
,p_column_alias=>'CONTACT_EMAIL'
,p_column_display_sequence=>1
,p_column_heading=>'Contact Email'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9832088939820626059)
,p_name=>'Event Types'
,p_parent_plug_id=>wwv_flow_imp.id(3721197960710735270)
,p_template=>4072358936313175081
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(a.event_type, '' '') within group (order by a.type_name) event_types',
'from (select type_name,',
'       case when display_color is not null',
'            then ''<span class="t-Badge t-Badge--basic t-Badge--small apex-cal-''||apex_escape.html(lower(cp.color_name))||''">''|| ',
'                 apex_escape.html(type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) ) || ''</span>''',
'            else ''<span class="t-Badge t-Badge--basic t-Badge--small">''|| ',
'                 apex_escape.html(type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) ) || ''</span>''',
'            end event_type',
'from eba_ca_event_types et',
',    eba_ca_color_prefs cp',
'where et.color_pref_id = cp.id',
'and   (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'and   (   nvl(:EVENT_TYPES_FILTER,''0'') = ''0'' ',
'       or instr('':''||:EVENT_TYPES_FILTER||'':'','':''||nvl(type_id,''-1'')||'':'') > 0',
'      )',
') a'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_CA_EVENT_TYPES'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1874799057897207086)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPES'
,p_column_display_sequence=>1
,p_column_heading=>'Event Types'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265804598716140840)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1726273658316509099)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1878349349103393294)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3721197960710735270)
,p_button_name=>'FILTER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Update Filters'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-wrench'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3265801991481091524)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 06-APR-2012 12:09 by MIKE'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3265706197696891568)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'12'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1702544800120087057)
,p_name=>'Refresh Timeline'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_EVENT_TYPE,P12_CONTACT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1702544941563087058)
,p_event_id=>wwv_flow_imp.id(1702544800120087057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1977695236331027333)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726623605210345053)
,p_name=>'Refresh Timeline for Create'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3265804598716140840)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726623979355345061)
,p_event_id=>wwv_flow_imp.id(1726623605210345053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1977695236331027333)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725627881756624790)
,p_event_id=>wwv_flow_imp.id(1726623605210345053)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Event added.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1874799327388207088)
,p_name=>'Refresh Timeline for Filter'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1878349349103393294)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874799540406207090)
,p_event_id=>wwv_flow_imp.id(1874799327388207088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9832088939820626059)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874799637594207091)
,p_event_id=>wwv_flow_imp.id(1874799327388207088)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3548950193322615306)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874799684954207092)
,p_event_id=>wwv_flow_imp.id(1874799327388207088)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3721196900676735259)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874799382593207089)
,p_event_id=>wwv_flow_imp.id(1874799327388207088)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3721197960710735270)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874799844644207093)
,p_event_id=>wwv_flow_imp.id(1874799327388207088)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Filters applied.'');'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Delete Multiple Events'
,p_alias=>'DELETE-MULTIPLE-EVENTS'
,p_step_title=>'Delete Multiple Events'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368700663348877)
,p_protection_level=>'C'
,p_help_text=>'Use the filters on the left to change the events displayed in the list on the right. Once you''ve changed a flter value click the <strong>Go</strong> button to set your filter values. Once you''ve filtered the results down to all of the events you woul'
||'d like to delete, click the <strong>Delete Events Listed Below</strong> button. Click the <strong>Cancel</strong> button to navigate away from this page without deleting any events.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1983516986486411158)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7444195432187131257)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7444201044574131282)
,p_name=>'Events to be Deleted'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EVENT_ID',
',      e.event_name',
',      case when et.display_color is not null then ',
'         ''<span style="white-space:nowrap;">'' ',
'         || apex_escape.html(et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null)) || ''</span>''',
'       else ',
'         ''<span style="white-space:nowrap;">'' ',
'         || apex_escape.html(et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null)) || ''</span>''',
'       end event_type',
',      e.EVENT_DATE_TIME event_date',
',      case when to_char(e.EVENT_DATE_TIME,''MI'') = ''00'' ',
'            then ltrim(to_char(e.EVENT_DATE_TIME,''HHam''),''0'')',
'            else ltrim(to_char(e.EVENT_DATE_TIME,''HH:MIam''),''0'')',
'            end start_time',
',      case when to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''MI'') = ''00''',
'            then ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HHam''),''0'')',
'            else ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HH:MIam''),''0'')',
'            end end_time',
',      case when e.duration = 0  then ''0 mins''',
'            when e.duration = .25 then ''15 mins''',
'            when e.duration = .5 then ''30 mins''',
'            when e.duration = .75 then ''45 mins''',
'            when e.duration = 1 then ''1 hr''',
'            when e.duration > 1 then to_char(trunc(e.duration)) || '' hrs''',
'              || case when e.duration - trunc(e.duration) = 0  then ''''',
'                      when e.duration - trunc(e.duration) = .25 then '' 15 mins''',
'                      when e.duration - trunc(e.duration) = .5 then '' 30 mins''',
'                      when e.duration - trunc(e.duration) = .75 then '' 45 mins''',
'                 end',
'            end duration',
',      e.EVENT_DESC',
',      decode(e.calendar_id, null, ''Default''',
'              , c.short_name || '' - '' || c.calendar_name ',
'                || decode(public_view_yn, ''Y'', null, '' (Private)'')',
'             ) calendar',
'from eba_ca_events e',
',    eba_ca_event_types et',
',    eba_ca_calendars c',
'where e.type_id = et.type_id',
'and   e.calendar_id = c.calendar_id (+)',
'and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'       or (   e.calendar_id is null',
'           or (   c.public_view_yn = ''Y''',
'               or exists (select ''x''',
'                          from eba_ca_users u',
'                          where u.username = :APP_USER',
'                          and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                 or (access_level_id = 3 and restricted_to is null)',
'                                )',
'                         )',
'              )',
'          )',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(et.internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'and   (   :P13_EVENT_TYPE is null ',
'       or e.type_id = :P13_EVENT_TYPE',
'      )',
'and   (   :P13_CALENDAR_ID is null ',
'       or nvl(e.calendar_id, -1) = :P13_CALENDAR_ID',
'      )',
'and   (   :P13_START_DATE is null ',
'       or trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),''&APP_DATE_FORMAT.'')) ',
'            >= to_date(:P13_START_DATE,''&APP_DATE_FORMAT.'') ',
'      )',
'and   (   :P13_END_DATE is null ',
'       or trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),''&APP_DATE_FORMAT.'')) ',
'          <= to_date(:P13_END_DATE,''&APP_DATE_FORMAT.'') ',
'      )',
'and   (  :P13_TIMEFRAME is null ',
'       or (    trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                 >= (select start_date ',
'                     from EBA_ca_timeframes',
'                     where :P13_TIMEFRAME = tf_id',
'                    ) ',
'           and trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                 <= (select end_date ',
'                     from EBA_ca_timeframes',
'                     where :P13_TIMEFRAME = tf_id',
'                    )',
'          )',
'      )',
'order by e.event_date_time, event_name'))
,p_header=>'<p/>'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No events found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7444201338821131292)
,p_query_column_id=>1
,p_column_alias=>'EVENT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Event Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7444201441508131292)
,p_query_column_id=>2
,p_column_alias=>'EVENT_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Event Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7444201533508131292)
,p_query_column_id=>3
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Event Type'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7444201623392131292)
,p_query_column_id=>4
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Event Date'
,p_column_format=>'&APP_DATE_FORMAT.'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7444201747134131293)
,p_query_column_id=>5
,p_column_alias=>'START_TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Timing'
,p_column_html_expression=>'#START_TIME# - #END_TIME# (#DURATION#)'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7444201822989131293)
,p_query_column_id=>6
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>4
,p_column_heading=>'End Time'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7444201945954131293)
,p_query_column_id=>7
,p_column_alias=>'DURATION'
,p_column_display_sequence=>5
,p_column_heading=>'Duration'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7444201245984131290)
,p_query_column_id=>8
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>9
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1874797199118207067)
,p_query_column_id=>9
,p_column_alias=>'CALENDAR'
,p_column_display_sequence=>8
,p_column_heading=>'Calendar'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7444202033715131294)
,p_plug_name=>'Directions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can use this to delete a set of events or to clean out historic events, like for the previous year.',
'</p>',
'<ol>',
'  <li>Use the filter to select the set of events to be deleted.</li>',
'  <li>Click [Delete Events].</li>',
'</ol>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7444331946329369713)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7444195432187131257)
,p_button_name=>'P13_CLEAR'
,p_button_static_id=>'P13_CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_request_source=>'CLEAR'
,p_request_source_type=>'STATIC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3266890179063809977)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1983516986486411158)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7444198337022131275)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1983516986486411158)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete Events Listed Below'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7444197223011131271)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7444195432187131257)
,p_button_name=>'P13_GO'
,p_button_static_id=>'P13_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_button_position=>'HELP'
,p_request_source=>'Go'
,p_request_source_type=>'STATIC'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7444349630230402872)
,p_branch_name=>'Go To Page 13'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(7444198337022131275)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 18-OCT-2010 12:49 by SBKENNED'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7444204430647131335)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(7444331946329369713)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1874797267084207068)
,p_name=>'P13_CALENDAR_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7444195432187131257)
,p_prompt=>'Calendar'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CALENDARS WITH DEFAULT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select ''Default'' d,',
'       -1 r,',
'       1 ob',
'  from dual',
' where exists (select 1 from eba_ca_events',
'                where calendar_id is null)',
'union',
'select short_name ||'' - ''|| calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       calendar_id r,',
'       2 ob',
'  from eba_ca_calendars c',
'  where public_view_yn = ''Y''',
'  or    exists (select ''x''',
'                from eba_ca_users u',
'                where u.username = :APP_USER',
'                and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                       or (access_level_id = 3 and restricted_to is null)',
'                      )',
'               ) ',
')',
' order by ob, d'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
,p_help_text=>'If selected, only events for the selected calendar will be included.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7444195629059131262)
,p_name=>'P13_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7444195432187131257)
,p_prompt=>'From'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>16
,p_cMaxlength=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If entered, Events before this date will not be included.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7444196231961131270)
,p_name=>'P13_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7444195432187131257)
,p_prompt=>'Until'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>16
,p_cMaxlength=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If entered, Events after this date will not be included.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7444196731358131271)
,p_name=>'P13_EVENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7444195432187131257)
,p_prompt=>'Event Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EVENT TYPES FOR MAIN CAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
' order by type_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'If selected, only events of this type will be included.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7444197421006131271)
,p_name=>'P13_TIMEFRAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7444195432187131257)
,p_prompt=>'Timeframe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAMES (SHOWING DATES)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf_name || '' ('' || start_date || '' to '' ||',
'                          end_date || '')'' d, ',
'       tf_id r',
'  from EBA_ca_timeframes',
' order by start_date',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_ca_timeframes'))
,p_display_when_type=>'EXISTS'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select Reporting Timeframe to restrict the report.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7444203933129131328)
,p_name=>'save group id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_GROUP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7444204234947131333)
,p_event_id=>wwv_flow_imp.id(7444203933129131328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P13_GROUP_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7444203745627131318)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Events'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (select e.event_id',
'           from EBA_CA_EVENTS e',
'           ,    EBA_CA_EVENT_TYPES et',
'           ,    eba_ca_calendars c',
'           where e.type_id = et.type_id',
'           and   e.calendar_id = c.calendar_id (+)',
'           and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'                  or (   e.calendar_id is null',
'                      or (   c.public_view_yn = ''Y''',
'                          or exists (select ''x''',
'                                     from eba_ca_users u',
'                                     where u.username = :APP_USER',
'                                     and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                            or (access_level_id = 3 and restricted_to is null)',
'                                           )',
'                                    )',
'                         )',
'                     )',
'                 )',
'           and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'                  or (   nvl(et.internal_yn, ''N'') = ''N''',
'                      or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'                     )',
'                 )',
'           and   (   :P13_EVENT_TYPE is null ',
'                  or e.type_id = :P13_EVENT_TYPE',
'                 )',
'           and   (   :P13_CALENDAR_ID is null ',
'                  or nvl(e.calendar_id, -1) = :P13_CALENDAR_ID',
'                 )',
'           and   (   :P13_START_DATE is null ',
'                  or trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),''&APP_DATE_FORMAT.'')) ',
'                       >= to_date(:P13_START_DATE,''&APP_DATE_FORMAT.'') ',
'                 )',
'           and   (   :P13_END_DATE is null ',
'                  or trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),''&APP_DATE_FORMAT.'')) ',
'                       <= to_date(:P13_END_DATE,''&APP_DATE_FORMAT.'') ',
'                 )',
'           and   (  :P13_TIMEFRAME is null ',
'                  or (    trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                            >= (select start_date ',
'                                from EBA_ca_timeframes',
'                                where :P13_TIMEFRAME = tf_id',
'                               ) ',
'                      and trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                            <= (select end_date ',
'                                from EBA_ca_timeframes',
'                                where :P13_TIMEFRAME = tf_id',
'                               )',
'                     )',
'                 )',
'          ) loop',
'  eba_ca_api.delete_event (  p_event_id       => c1.event_id',
'                           , p_delete_request => ''O'' ',
'                          );',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Event(s) failed to be deleted.'
,p_process_when_button_id=>wwv_flow_imp.id(7444198337022131275)
,p_process_success_message=>'Event(s) deleted.'
,p_internal_uid=>7414772560218958310
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7444349838542405347)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_when=>'Go,CLEAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7414918653134232339
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Help'
,p_alias=>'HELP'
,p_step_title=>'Help'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326545491908142482)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'div#uOneCol div.helpContainer div.helpSide h1.appNameHeader {margin-top: 8px; font-size: 16px; line-height: 24px;}',
'div.helpContainer div.helpSide ul.vapList {',
'padding-top: 8px;}',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This is the main help content for the entire app.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2037047286249735012)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2077628448003823062)
,p_name=>'&APPLICATION_TITLE.'
,p_template=>2674017834225413037
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'t-HeroRegion--featured'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--featured t-HeroRegion--centered'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.version app_version,',
'       to_char(aa.pages,''999G999G990'') pages,',
'       ''Oracle'' vendor',
'from apex_applications aa',
'where aa.application_id = :APP_ID'))
,p_ajax_enabled=>'Y'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2077628533318823063)
,p_query_column_id=>1
,p_column_alias=>'APP_VERSION'
,p_column_display_sequence=>1
,p_column_heading=>'App version'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2077628574750823064)
,p_query_column_id=>2
,p_column_alias=>'PAGES'
,p_column_display_sequence=>2
,p_column_heading=>'Pages'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2077628726077823065)
,p_query_column_id=>3
,p_column_alias=>'VENDOR'
,p_column_display_sequence=>3
,p_column_heading=>'Vendor'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3233393484770676648)
,p_plug_name=>'Help Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1458468498992281567)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_imp.id(3233393484770676648)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'HELP_ABOUT',
  'attribute_12', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1458469069664285638)
,p_plug_name=>'Getting Started'
,p_parent_plug_id=>wwv_flow_imp.id(3233393484770676648)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'HELP_GETTING_STARTED',
  'attribute_12', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1458469684556289943)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_imp.id(3233393484770676648)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'HELP_FEATURES',
  'attribute_12', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1458470088711291167)
,p_plug_name=>'Support'
,p_parent_plug_id=>wwv_flow_imp.id(3233393484770676648)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''https://forums.oracle.com/forums/forum.jspa?forumID=137'' support_link,',
'    ''OTN Forum'' support_text',
'from dual'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'HELP_SUPPORT',
  'attribute_02', 'SUPPORT_LINK',
  'attribute_03', 'SUPPORT_TEXT',
  'attribute_12', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Send Email'
,p_alias=>'SEND-EMAIL'
,p_step_title=>'Send Email'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ol>',
'  <li>Use the filter to select the set of events to be included.</li>',
'  <li>Select the group to send email to and/or enter email addresses separated by commas.</li>',
'  <li>Customize the from, subject and message body.</li>',
'  <li>Click [Send Email].</li>',
'</ol>',
'<p>Emails can be sent to other app users.  The set of events will be appended to the message body.  The ''From'' email address will be carbon-copied on the email.',
'</p>'))
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141503812162394431)
,p_plug_name=>'Email Functionality Disabled'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'This form uses the current end-user''s email address as the "From" email address for the emails it sends. We were unable to derive your email address, therefore this form cannot be used. Please ensure your APEX account has a valid email address define'
||'d or change the app''s authentication method to one that uses email addresses as usernames.'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'not regexp_like(:P15_FROM, ''^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8023516752659499835)
,p_name=>'Events to be Included'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EVENT_ID,',
'       event_name,',
'       et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) event_type,',
'       e.EVENT_DATE_TIME event_date,',
'       case when to_char(e.EVENT_DATE_TIME,''MI'') = ''00'' ',
'            then ltrim(to_char(e.EVENT_DATE_TIME,''HHam''),''0'')',
'            else ltrim(to_char(e.EVENT_DATE_TIME,''HH:MIam''),''0'')',
'            end start_time,',
'       case when to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''MI'') = ''00''',
'            then ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HHam''),''0'')',
'            else ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HH:MIam''),''0'')',
'            end end_time,',
'       case when e.duration = 0  then ''0 mins''',
'            when e.duration = .25 then ''15 mins''',
'            when e.duration = .5 then ''30 mins''',
'            when e.duration = .75 then ''45 mins''',
'            when e.duration = 1 then ''1 hr''',
'            when e.duration > 1 then to_char(trunc(e.duration)) || '' hrs''',
'              || case when e.duration - trunc(e.duration) = 0  then ''''',
'                      when e.duration - trunc(e.duration) = .25 then '' 15 mins''',
'                      when e.duration - trunc(e.duration) = .5 then '' 30 mins''',
'                      when e.duration - trunc(e.duration) = .75 then '' 45 mins''',
'                 end',
'            end duration,',
'       e.EVENT_DESC',
'  from EBA_CA_EVENTS e,',
'       EBA_CA_EVENT_TYPES et',
' where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'        or (   nvl(internal_yn, ''N'') = ''N''',
'            or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'           )',
'       )',
'   and e.type_id = et.type_id (+)',
'   and (:P15_EVENT_TYPE is null or e.type_id = :P15_EVENT_TYPE)',
'   and (:P15_START_DATE is null or ',
'        trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),',
'              ''&APP_DATE_FORMAT.'')) >= to_date(:P15_START_DATE,''&APP_DATE_FORMAT.'') )',
'   and (:P15_END_DATE is null or ',
'        trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),',
'              ''&APP_DATE_FORMAT.'')) <= to_date(:P15_END_DATE,''&APP_DATE_FORMAT.'') )',
'   and (:P15_TIMEFRAME is null or',
'        (trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'            >= (select start_date from EBA_ca_timeframes',
'                 where :P15_TIMEFRAME = tf_id) and',
'         trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'            <= (select end_date from EBA_ca_timeframes',
'                 where :P15_TIMEFRAME = tf_id)))',
' order by e.event_date_time'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No events found.'
,p_query_num_rows_type=>'SEARCH_ENGINE'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8023517060696499837)
,p_query_column_id=>1
,p_column_alias=>'EVENT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Event Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8023517175774499839)
,p_query_column_id=>2
,p_column_alias=>'EVENT_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8023517264155499839)
,p_query_column_id=>3
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8023517364906499839)
,p_query_column_id=>4
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Event Date'
,p_column_format=>'&APP_DATE_FORMAT.'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7418784943929026647)
,p_query_column_id=>5
,p_column_alias=>'START_TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Timing'
,p_column_html_expression=>'#START_TIME# - #END_TIME# (#DURATION#)'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7418785044382026648)
,p_query_column_id=>6
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>4
,p_column_heading=>'End Time'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7418785136615026648)
,p_query_column_id=>7
,p_column_alias=>'DURATION'
,p_column_display_sequence=>5
,p_column_heading=>'Duration'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8023517647664499839)
,p_query_column_id=>8
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>8
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8023525673972514236)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8035427376284006801)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8036284471387677136)
,p_plug_name=>'Email Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_region_attributes=>'style="width: 99%; min-width: 99%"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2444534343289634753)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8036284471387677136)
,p_button_name=>'MEMBERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--primary:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'View Members'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:P20_GROUP_ID:&P15_GROUP_ID.'
,p_button_condition_type=>'NEVER'
,p_button_cattributes=>'style="margin-top:8px;"'
,p_grid_new_row=>'N'
,p_grid_column_span=>5
,p_grid_column=>8
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    1',
'from',
'    (',
'        select g.group_id,',
'               g.group_name name,',
'               count(*) cnt    ',
'          from EBA_ca_email_groups g, ',
'               EBA_ca_email_group_mbrs m',
'         where m.group_id = g.group_id',
'         group by g.group_id, g.group_name',
'    ) v1',
'where',
'    v1.cnt > 0'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7444335530315384061)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8023525673972514236)
,p_button_name=>'P15_CLEAR'
,p_button_static_id=>'P15_CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_request_source=>'CLEAR'
,p_request_source_type=>'STATIC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1900907315656602999)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(8035427376284006801)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8036303349195793725)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8035427376284006801)
,p_button_name=>'SEND_EMAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Email'
,p_button_position=>'CREATE'
,p_button_condition=>'regexp_like(:P15_FROM, ''^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8023570068178569278)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8023525673972514236)
,p_button_name=>'P15_GO'
,p_button_static_id=>'P15_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_button_position=>'HELP'
,p_request_source=>'Go'
,p_request_source_type=>'STATIC'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8023570269548569279)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7444345549015389416)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(7444335530315384061)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 18-OCT-2010 12:47 by SBKENNED'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7429421819630615654)
,p_name=>'P15_FROM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8036284471387677136)
,p_prompt=>'From'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_display_when=>'regexp_like(:P15_FROM, ''^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'')'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Who the email will be sent from.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7435364824559765108)
,p_name=>'P15_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8036284471387677136)
,p_prompt=>'To (emails)'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    a.email as dv,',
'    a.email as rv',
'from',
'    eba_ca_users u,',
'    apex_workspace_apex_users a',
'where',
'    lower(u.username) = lower(a.user_name);'))
,p_cSize=>64
,p_cMaxlength=>4000
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    eba_ca_users u,',
'    apex_workspace_apex_users a',
'where',
'    lower(u.username) = lower(a.user_name);'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Addresses to email.  Multiple addresses can be selected.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'initial_fetch', 'FIRST_ROWSET')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8023522162198510840)
,p_name=>'P15_START_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8023525673972514236)
,p_prompt=>'From'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>16
,p_cMaxlength=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If entered, Events before this date will not be included.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8023563457658556864)
,p_name=>'P15_END_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8023525673972514236)
,p_prompt=>'Until'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>16
,p_cMaxlength=>30
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If entered, Events after this date will not be included.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8023566376358562221)
,p_name=>'P15_EVENT_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8023525673972514236)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EVENT TYPES FOR MAIN CAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
' order by type_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'If selected, only events of this type will be included.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8036285363553684371)
,p_name=>'P15_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8036284471387677136)
,p_prompt=>'To (group)'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL GROUPS WITH CNT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ('' || cnt  || ',
'          case when cnt = 1 then '' member)''',
'               else '' members)'' end d, ',
'       group_id r ',
'  from (',
'select g.group_id,',
'       g.group_name name,',
'       count(*) cnt    ',
'  from EBA_ca_email_groups g, ',
'       EBA_ca_email_group_mbrs m',
' where m.group_id = g.group_id',
' group by g.group_id, g.group_name',
')',
'order by name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Group -'
,p_cHeight=>1
,p_colspan=>7
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'The email group that the email will be sent to.  The can be in addition to email addresses identified in the ''To'' or instead of.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    1',
'from',
'    (',
'        select g.group_id,',
'               g.group_name name,',
'               count(*) cnt    ',
'          from EBA_ca_email_groups g, ',
'               EBA_ca_email_group_mbrs m',
'         where m.group_id = g.group_id',
'         group by g.group_id, g.group_name',
'    ) v1',
'where',
'    v1.cnt > 0'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8036285748100689308)
,p_name=>'P15_SUBJECT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8036284471387677136)
,p_item_default=>'Please review the following events'
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The subject line for the email.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8036289060136711729)
,p_name=>'P15_MSG_BODY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8036284471387677136)
,p_item_default=>'Below is a set of events for your review.  If updates are necessary, please let me know.'
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>90
,p_cHeight=>4
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the body of your email.  A table including the selected events will be included below the text.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8072452469734728043)
,p_name=>'P15_TIMEFRAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8023525673972514236)
,p_prompt=>'Timeframe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAMES (SHOWING DATES)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf_name || '' ('' || start_date || '' to '' ||',
'                          end_date || '')'' d, ',
'       tf_id r',
'  from EBA_ca_timeframes',
' order by start_date',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_ca_timeframes'))
,p_display_when_type=>'EXISTS'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select Reporting Timeframe to restrict the report.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(141503289420394426)
,p_computation_sequence=>10
,p_computation_item=>'P15_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_from_email varchar2(255);',
'begin',
'    -- If the end-user''s username is already an email address use it as the from address',
'    if regexp_like(:APP_USER, ''^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'') then',
'        l_from_email := lower(:APP_USER);',
'    else',
'        -- otherwise populate the from address by querying the apex_workspace_apex_users view (where email is a required value)',
'        select',
'            lower(a.email)',
'        into',
'            l_from_email',
'        from',
'            eba_ca_users u,',
'            apex_workspace_apex_users a',
'        where',
'            lower(u.username) = lower(a.user_name)',
'        and',
'            lower(:APP_USER) = lower(a.user_name);',
'    end if;',
'    return l_from_email;',
'end;'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8036302150103784482)
,p_validation_name=>'P15_GROUP_ID  or TO not null'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P15_GROUP_ID is not null or ',
':P15_TO is not null'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Either a group must be selected or ''To'' must be specified.'
,p_when_button_pressed=>wwv_flow_imp.id(8036303349195793725)
,p_associated_item=>wwv_flow_imp.id(8036285363553684371)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7429450347989671096)
,p_validation_name=>'P15_FROM not null'
,p_validation_sequence=>20
,p_validation=>'P15_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'From must be specified.'
,p_when_button_pressed=>wwv_flow_imp.id(8036303349195793725)
,p_associated_item=>wwv_flow_imp.id(7429421819630615654)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8036302559107787137)
,p_validation_name=>'P15_SUBJECT not null'
,p_validation_sequence=>30
,p_validation=>'P15_SUBJECT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Subject must be specified.'
,p_when_button_pressed=>wwv_flow_imp.id(8036303349195793725)
,p_associated_item=>wwv_flow_imp.id(8036285748100689308)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8036302870535790411)
,p_validation_name=>'P15_MSG_BODY must be specified'
,p_validation_sequence=>40
,p_validation=>'P15_MSG_BODY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Message Body must be specified.'
,p_when_button_pressed=>wwv_flow_imp.id(8036303349195793725)
,p_associated_item=>wwv_flow_imp.id(8036289060136711729)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7435381830409814133)
,p_validation_name=>'From valid email'
,p_validation_sequence=>50
,p_validation=>'P15_FROM'
,p_validation2=>'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid Email format for From.'
,p_validation_condition=>'P15_FROM'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(8036303349195793725)
,p_associated_item=>wwv_flow_imp.id(7429421819630615654)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(141503646485394429)
,p_validation_name=>'Defined "To" users are valid '
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_email_array  apex_t_varchar2;',
'    l_valid_emails apex_t_varchar2;',
'    l_idx          varchar2(20);',
'    l_retval       boolean := true;',
'begin',
'   -- Populate submitted array',
'   l_email_array := apex_string.split(',
'                        p_str => :P15_TO,',
'                        p_sep => '':''',
'                    );',
'',
'    -- Populate Valid Emails string',
'    begin',
'        select',
'            lower(a.email)',
'        bulk collect into',
'            l_valid_emails',
'        from',
'            eba_ca_users u,',
'            apex_workspace_apex_users a',
'        where',
'            lower(u.username) = lower(a.user_name);',
'    exception',
'        when no_data_found then',
'            -- No users have been defined in the app and/or APEX workspace yet',
'            l_retval := false;',
'            return l_retval;',
'    end;',
'',
'    -- Start index at 1',
'    l_idx := l_email_array.first;',
'',
'    -- Loop through emails submitted in form',
'    while (l_idx is not null)',
'    loop',
'        -- Verify that the emails entered by end-user is in the list of emails assigned to APEX workspace users',
'        l_retval := lower(l_email_array(l_idx)) member of l_valid_emails; -- if this returns false it means the end-user somehow entered an invalid email',
'        ',
'        -- Bail from continued looping if last retval assignment was false',
'        if not l_retval then',
'            exit;',
'        end if;',
'',
'        -- If retval was true, move on to the next array value',
'        l_idx := l_email_array.next(l_idx);',
'    end loop;',
'    return l_retval;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please select only email addresses offered in the list.'
,p_validation_condition=>'P15_TO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_imp.id(7435364824559765108)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8042822364326899376)
,p_name=>'save group id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_GROUP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8042822665431899420)
,p_event_id=>wwv_flow_imp.id(8042822364326899376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P15_GROUP_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2444534355221634754)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_GROUP_ID'
,p_condition_element=>'P15_GROUP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2444534511928634755)
,p_event_id=>wwv_flow_imp.id(2444534355221634754)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2444534343289634753)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2444534648539634756)
,p_event_id=>wwv_flow_imp.id(2444534355221634754)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2444534343289634753)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8036306857338833850)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_app_name  varchar2(255)  default ''Team Calendar'';',
'   l_body      clob;',
'   l_email_to  varchar2(32000);',
'   crlf        varchar2(2) := chr(10) || chr(13); ',
'begin',
'',
'   for c1 in (',
'      select logo, logo_type',
'        from apex_applications',
'       where application_id = :APP_ID )',
'   loop',
'      if c1.logo_type = ''Text Logo'' then',
'         l_app_name := replace(substr(c1.logo,6),''&''||''APPLICATION_TITLE.'',:APPLICATION_TITLE);',
'         if lower(substr(l_app_name,1,4)) = ''<img'' then',
'            l_app_name := substr(l_app_name,instr(l_app_name,''>'')+1);',
'         end if;',
'      end if;',
'   end loop;',
'',
'   l_body := ''<div style="margin: 10px">',
'    <h1 style="margin: 0 0 5px 0; padding: 10px; font: bold 18px/32px Arial, sans-serif; color: #EA0000; background-color: #F0F0F0; border-bottom: 2px solid #E6E6E6">''||l_app_name||''</h1>',
'    <p style="margin: 15px 0; font: normal 13px/18px Arial, sans-serif;padding: 0 10px">''||crlf;',
'',
'   dbms_lob.append(l_body, apex_escape.html(:P15_MSG_BODY)||''</p>''||crlf);',
'',
'   dbms_lob.append(l_body,''<p style="margin: 15px 0; font: normal 13px/18px Arial, sans-serif;padding: 0 10px">''||crlf);',
'',
'   dbms_lob.append(l_body,''Please note that all dates and times are shown in ''||:F855_TIMEZONE||',
'                   '' time.  You can access these events in the <a href="''||:HOST_URL||''f?p=''||:APP_ID||'':1">''||l_app_name||''</a> application.</p>''||crlf);',
'',
'   dbms_lob.append(l_body,'' <table style="width: 100%;" cellspacing="0" cellpadding="0" border="0">',
'        <tr>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 10%; padding: 5px 10px">Event Date</th>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 17%; padding: 5px 10px">Time</th>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 28%; padding: 5px 10px">Event Name</th>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 10%; padding: 5px 10px">Type</th>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 35%; padding: 5px 10px">Description</th>',
'        </tr>''||crlf);',
'',
'   for c1 in (',
'      select to_char(e.EVENT_DATE_TIME,:APP_DATE_FORMAT) event_date,',
'             case when to_char(e.EVENT_DATE_TIME,''MI'') = ''00'' ',
'                  then ltrim(to_char(e.EVENT_DATE_TIME,''HHam''),''0'')',
'                 else ltrim(to_char(e.EVENT_DATE_TIME,''HH:MIam''),''0'')',
'                 end || '' - '' ||',
'            case when to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''MI'') = ''00''',
'                 then ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HHam''),''0'')',
'                 else ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HH:MIam''),''0'')',
'                 end || '' ('' ||',
'            case when e.duration = 0  then ''0 mins''',
'                 when e.duration = .5 then ''30 mins''',
'                 when e.duration = 1 then ''1 hr''',
'                 when e.duration > 1 then to_char(e.duration) || '' hrs''',
'                 end || '')'' event_time,',
'             case when et.display_color is not null',
'                  then ''<span style="color:'' || apex_escape.html(et.display_color) || ''; white-space:nowrap; font-weight:bold;">'' || apex_escape.html(e.event_name) || ''</span>''',
'                  else ''<span style="white-space:nowrap; font-weight:bold;">'' || apex_escape.html(e.event_name) || ''</span>''',
'                  end event_name,',
'             nvl(apex_escape.html(et.type_name),''&nbsp;'') event_type,',
'             nvl(apex_escape.html(e.EVENT_DESC),''&nbsp;'') event_desc',
'        from EBA_CA_EVENTS e,',
'             EBA_CA_EVENT_TYPES et',
'       where e.type_id = et.type_id (+)',
'         and (:P15_EVENT_TYPE is null or e.type_id = :P15_EVENT_TYPE)',
'         and (:P15_START_DATE is null or ',
'              trunc(to_date(to_char(e.event_date_time,:APP_DATE_FORMAT),',
'                    ''&APP_DATE_FORMAT.'')) >= to_date(:P15_START_DATE,:APP_DATE_FORMAT) )',
'         and (:P15_END_DATE is null or ',
'              trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),',
'                    ''&APP_DATE_FORMAT.'')) <= to_date(:P15_END_DATE,:APP_DATE_FORMAT) )',
'         and (:P15_TIMEFRAME is null or',
'              (trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                  >= (select start_date from EBA_ca_timeframes',
'                       where :P15_TIMEFRAME = tf_id) and',
'               trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                  <= (select end_date from EBA_ca_timeframes',
'                       where :P15_TIMEFRAME = tf_id))) ',
'        order by e.event_date_time )',
'   loop',
'      dbms_lob.append(l_body,''<tr style="font: normal 12px/16px Arial, sans-serif; vertical-align: top;">'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_date||''</td>'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_time||''</td>'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_name||''</td>'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_type||''</td>'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_desc||''</td>'');',
'      dbms_lob.append(l_body,''</tr>''||crlf);',
'   end loop;',
'',
'   dbms_lob.append(l_body,''</table></div>''||crlf);',
'',
'   for c1 in (',
'      select email_address',
'        from EBA_ca_email_group_mbrs',
'       where group_id = :P15_GROUP_ID )',
'   loop',
'      l_email_to := l_email_to || c1.email_address || '','';',
'   end loop;',
'',
'   if :P15_TO is not null then ',
'      l_email_to := l_email_to || :P15_TO || '','';',
'   end if;',
'',
'   l_email_to := substr(l_email_to,1,length(l_email_to)-1);',
'',
'   apex_mail.send (',
'      p_to        => l_email_to,',
'      p_from      => :P15_FROM,',
'      p_replyto   => nvl(replace(replace(eba_ca_fw.get_preference_value(''NOTIFICATION_EMAIL_REPLY_TO''),''N/A'',null),''Preference does not exist'',null), :P15_FROM),',
'      p_cc        => :P15_FROM,',
'      p_body      => to_clob('' ''),',
'      p_body_html => l_body,',
'      p_subj      => apex_escape.html(:P15_SUBJECT));',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Email(s) failed to be sent.'
,p_process_when_button_id=>wwv_flow_imp.id(8036303349195793725)
,p_process_success_message=>'Email(s) sent.'
,p_internal_uid=>8006875671930660842
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7444348844644397624)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_when=>'Go,CLEAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7414917659236224616
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Groups'
,p_alias=>'GROUPS'
,p_page_mode=>'MODAL'
,p_step_title=>'Groups'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function refreshParent() {',
'    parent.location.reload();',
'}'))
,p_javascript_code_onload=>'window.onunload = refreshParent;'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'Groups allow you to email events to a set of emails. Once you create a Group, you must then add Members to it.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8035444557726109680)
,p_plug_name=>'Groups'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_id,',
'       group_name,',
'       (select count(*) from EBA_ca_email_group_mbrs m',
'         where m.group_id = g.group_id) nbr_mbrs,',
'       CREATED_ON,',
'       LOWER(CREATED_BY) CREATED_BY,',
'       LAST_UPDATED_ON,',
'       LOWER(LAST_UPDATED_BY) LAST_UPDATED_BY',
'  from EBA_CA_EMAIL_GROUPS g',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8035444746866109683)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No groups found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:P17_GROUP_ID:#GROUP_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #GROUP_NAME#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>7363940678024293096
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(8035444964921109690)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(8035444872530109687)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8035445247019109695)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>1
,p_group_id=>wwv_flow_imp.id(8035444872530109687)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who created the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8035445357931109695)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>2
,p_group_id=>wwv_flow_imp.id(8035444872530109687)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8035454754870123054)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>3
,p_group_id=>wwv_flow_imp.id(8035444964921109690)
,p_column_identifier=>'H'
,p_column_label=>'Group Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036274475795621658)
,p_db_column_name=>'NBR_MBRS'
,p_display_order=>4
,p_group_id=>wwv_flow_imp.id(8035444964921109690)
,p_column_identifier=>'I'
,p_column_label=>'Members'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RIR,CIR:IR_GROUP_ID:#GROUP_ID#'
,p_column_linktext=>'#NBR_MBRS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8035454652707123052)
,p_db_column_name=>'GROUP_ID'
,p_display_order=>5
,p_column_identifier=>'G'
,p_column_label=>'Options'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036274560716621659)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>6
,p_group_id=>wwv_flow_imp.id(8035444872530109687)
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036274644788621659)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>7
,p_group_id=>wwv_flow_imp.id(8035444872530109687)
,p_column_identifier=>'K'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8035445775111109696)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6238137'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'GROUP_NAME:NBR_MBRS:GROUP_ID'
,p_sort_column_1=>'GROUP_NAME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8035445970623109700)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'6238139'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'GROUP_NAME:NBR_MBRS:GROUP_ID:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY'
,p_sort_column_1=>'GROUP_NAME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2444534130953634751)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8035444557726109680)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8035446145713109702)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8035444557726109680)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Group'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726673494537678250)
,p_name=>'Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726673903702678250)
,p_event_id=>wwv_flow_imp.id(1726673494537678250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8035444557726109680)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726674379053678251)
,p_event_id=>wwv_flow_imp.id(1726673494537678250)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138571784132307554)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8035446145713109702)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138571903068307555)
,p_event_id=>wwv_flow_imp.id(138571784132307554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8035444557726109680)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138571980737307556)
,p_name=>'Refresh on Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8035444557726109680)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138572142749307557)
,p_event_id=>wwv_flow_imp.id(138571980737307556)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8035444557726109680)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Group Details'
,p_alias=>'GROUP-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Group Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1726663737945636852)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8035448054753113953)
,p_plug_name=>'Group Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8035450466862113964)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P17_GROUP_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8035448257396113954)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1726663737945636852)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8035448864046113955)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1726663737945636852)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P17_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8035448457542113954)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1726663737945636852)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8035448670889113955)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1726663737945636852)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Group'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8035449071418113959)
,p_name=>'P17_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8035448054753113953)
,p_use_cache_before_default=>'NO'
,p_source=>'GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8035449253294113962)
,p_name=>'P17_GROUP_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8035448054753113953)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Group Name'
,p_source=>'GROUP_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of Group.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8035450650193113966)
,p_name=>'P17_CREATED_ON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8035450466862113964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created:'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was created.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8035451169770113966)
,p_name=>'P17_CREATED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8035450466862113964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who created the record.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8035451671906113967)
,p_name=>'P17_LAST_UPDATED_ON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8035450466862113964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated:'
,p_source=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was last updated.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8035452154858113967)
,p_name=>'P17_LAST_UPDATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8035450466862113964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated By:'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who last updated the record.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8036363751245267315)
,p_validation_name=>'P17_GROUP_NAME unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_email_groups',
' where lower(:P17_GROUP_NAME) = lower(group_name)',
'   and (:P17_GROUP_ID != group_id or :P17_GROUP_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Group already exists.'
,p_associated_item=>wwv_flow_imp.id(8035449253294113962)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726663830506636853)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8035448257396113954)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726663866828636854)
,p_event_id=>wwv_flow_imp.id(1726663830506636853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8035453157701113968)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_EMAIL_GROUPS'
,p_attribute_02=>'EBA_CA_EMAIL_GROUPS'
,p_attribute_03=>'P17_GROUP_ID'
,p_attribute_04=>'GROUP_ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>8006021972292940960
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8035453375765113972)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_EMAIL_GROUPS'
,p_attribute_02=>'EBA_CA_EMAIL_GROUPS'
,p_attribute_03=>'P17_GROUP_ID'
,p_attribute_04=>'GROUP_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CA_EMAIL_GROUPS.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>8006022190356940964
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1726663973175636855)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1697232787767463847
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Group Members'
,p_alias=>'GROUP-MEMBERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Group Members'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>Groups allow you to email events to a set of emails.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8036063152114210199)
,p_plug_name=>'Group Members'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select g.group_name,',
'       m.mbr_id,',
'       m.email_address,',
'       m.CREATED_ON,',
'       lower(m.CREATED_BY) created_by,',
'       m.LAST_UPDATED_ON,',
'       lower(m.LAST_UPDATED_BY) last_updated_by,',
'       g.group_id',
'  from EBA_CA_EMAIL_GROUPS g,',
'       EBA_ca_email_group_mbrs m',
' where g.group_id = m.group_id'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8036063367122210202)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No group members found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19:P19_MBR_ID:#MBR_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit Member #EMAIL_ADDRESS#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>7364559298280393615
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(8036063557929210203)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(8036063474332210203)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036063661756210203)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_group_id=>wwv_flow_imp.id(8036063474332210203)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who created the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036063752762210205)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>5
,p_group_id=>wwv_flow_imp.id(8036063474332210203)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036063951619210206)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>7
,p_group_id=>wwv_flow_imp.id(8036063557929210203)
,p_column_identifier=>'H'
,p_column_label=>'Group Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036067862674220489)
,p_db_column_name=>'MBR_ID'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Mbr Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036067973978220490)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>9
,p_group_id=>wwv_flow_imp.id(8036063557929210203)
,p_column_identifier=>'J'
,p_column_label=>'Email Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036275766014637756)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>10
,p_group_id=>wwv_flow_imp.id(8036063474332210203)
,p_column_identifier=>'K'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036275858762637757)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>11
,p_group_id=>wwv_flow_imp.id(8036063474332210203)
,p_column_identifier=>'L'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8036275955235637757)
,p_db_column_name=>'GROUP_ID'
,p_display_order=>12
,p_group_id=>wwv_flow_imp.id(8036063557929210203)
,p_column_identifier=>'M'
,p_column_label=>'Selected Group'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8036064252875210206)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6244322'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'GROUP_NAME:EMAIL_ADDRESS'
,p_sort_column_1=>'GROUP_NAME'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EMAIL_ADDRESS'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8036064448604210207)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'6244324'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'GROUP_NAME:EMAIL_ADDRESS:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY'
,p_sort_column_1=>'GROUP_NAME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8036065072199210208)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2444534172122634752)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8036063152114210199)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8042871257728096058)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8036063152114210199)
,p_button_name=>'CREATE_MULTIPLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Multiple Members'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8036064652222210207)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8036063152114210199)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Member'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726683127791777412)
,p_name=>'Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726683530111777412)
,p_event_id=>wwv_flow_imp.id(1726683127791777412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8036063152114210199)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726684034042777413)
,p_event_id=>wwv_flow_imp.id(1726683127791777412)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Group Member Details'
,p_alias=>'GROUP-MEMBER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Group Member Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1726664150877636856)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8036086473051273185)
,p_plug_name=>'Group Member Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8036086661235273186)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1726664150877636856)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8036087276488273188)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1726664150877636856)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P19_MBR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8036087049145273188)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1726664150877636856)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Member'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_MBR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8036086846117273187)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1726664150877636856)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_MBR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8036087454337273189)
,p_name=>'P19_MBR_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(8036086473051273185)
,p_use_cache_before_default=>'NO'
,p_source=>'MBR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8036087645558273190)
,p_name=>'P19_EMAIL_ADDRESS'
,p_is_required=>true
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(8036086473051273185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The email address of the member.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8036095774458299590)
,p_name=>'P19_GROUP_ID'
,p_is_required=>true
,p_item_sequence=>1.5
,p_item_plug_id=>wwv_flow_imp.id(8036086473051273185)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Group'
,p_source=>'GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL GROUPS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_name d, group_id r',
'  from EBA_ca_email_groups',
' order by 1'))
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'The group you are adding the member to.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(8036273276357612300)
,p_computation_sequence=>10
,p_computation_item=>'P19_EMAIL_ADDRESS'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'SQL'
,p_computation=>'lower(:P19_EMAIL_ADDRESS)'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8036376945198379071)
,p_validation_name=>'P19_EMAIL_ADDRESS'
,p_validation_sequence=>10
,p_validation=>'P19_EMAIL_ADDRESS'
,p_validation2=>'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid Email format.'
,p_associated_item=>wwv_flow_imp.id(8036087645558273190)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8036364356571278311)
,p_validation_name=>'P19_GROUP_EMAIL_ADDRESS unique'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_email_group_mbrs',
' where lower(:P19_EMAIL_ADDRESS) = lower(email_address)',
'   and :P19_GROUP_ID = group_id',
'   and (:P19_MBR_ID != mbr_id or :P19_MBR_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Email Address already exists within selected Group.'
,p_associated_item=>wwv_flow_imp.id(8036087645558273190)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56303987158931351)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8036086661235273186)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56304099527931352)
,p_event_id=>wwv_flow_imp.id(56303987158931351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8036091061941273198)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_EMAIL_GROUP_MBRS'
,p_attribute_02=>'EBA_CA_EMAIL_GROUP_MBRS'
,p_attribute_03=>'P19_MBR_ID'
,p_attribute_04=>'MBR_ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>8006659876533100190
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8036091246945273200)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_EMAIL_GROUP_MBRS'
,p_attribute_02=>'EBA_CA_EMAIL_GROUP_MBRS'
,p_attribute_03=>'P19_MBR_ID'
,p_attribute_04=>'MBR_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CA_EMAIL_GROUP_MBRS.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>8006660061537100192
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56304856525931360)
,p_process_sequence=>11
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26873671117758352
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Group Members'
,p_alias=>'GROUP-MEMBERS2'
,p_page_mode=>'MODAL'
,p_step_title=>'Group Members'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368700663348877)
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2445861204003816682)
,p_name=>'Group Members'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select email_address',
'  from EBA_ca_email_group_mbrs',
' where group_id = :P20_GROUP_ID',
' order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'1'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2445861636934816683)
,p_query_column_id=>1
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>1
,p_column_heading=>'Members'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2445862017367816684)
,p_plug_name=>'Button bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2445862406352816685)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2445862017367816684)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2445862829449816685)
,p_name=>'P20_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2445861204003816682)
,p_item_default=>'&P15_GROUP_ID.'
,p_prompt=>'Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL GROUPS WITH CNT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ('' || cnt  || ',
'          case when cnt = 1 then '' member)''',
'               else '' members)'' end d, ',
'       group_id r ',
'  from (',
'select g.group_id,',
'       g.group_name name,',
'       count(*) cnt    ',
'  from EBA_ca_email_groups g, ',
'       EBA_ca_email_group_mbrs m',
' where m.group_id = g.group_id',
' group by g.group_id, g.group_name',
')',
'order by name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(229565728446329360)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2445862406352816685)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(229565773090329361)
,p_event_id=>wwv_flow_imp.id(229565728446329360)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Add Multiple Members'
,p_alias=>'ADD-MULTIPLE-MEMBERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Members'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368700663348877)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    Enter or copy and paste email addresses separated by commas, semicolons, or new lines. Extraneous information and duplicates will be filtered out. Click the <strong>Next</strong> button to continue and the <strong>Cancel</strong> button to leave '
||'the Add Multiple Members wizard.',
'</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56304252698931353)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8042634646040360098)
,p_plug_name=>'Add Multiple Members'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8042699771524645975)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8042635474907360111)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56304252698931353)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8042635774154360111)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56304252698931353)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7418479448318469756)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:21,22::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(8042635474907360111)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 14-OCT-2010 11:46 by SBKENNED'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8042636144967360119)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(8042635774154360111)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8042635168986360106)
,p_name=>'P21_MBRS'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8042634646040360098)
,p_prompt=>'List of Email Addresses'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>75
,p_cMaxlength=>32767
,p_cHeight=>14
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter or copy and paste email addresses separated by commas, semicolons, or new lines. Note that if you copy and paste email addresses from email messages, extraneous text will be filtered out.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8042635365256360111)
,p_name=>'P21_GROUP_ID'
,p_is_required=>true
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(8042634646040360098)
,p_prompt=>'Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL GROUPS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_name d, group_id r',
'  from EBA_ca_email_groups',
' order by 1'))
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Select the Group that these Members will be assigned to.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8042694345982619712)
,p_name=>'P21_LB'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_imp.id(8042634646040360098)
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56304331873931354)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8042635474907360111)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56304446612931355)
,p_event_id=>wwv_flow_imp.id(56304331873931354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8042665669859475163)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EBA_ca_api.create_mbrs_collection (',
'    p_users    => :P21_MBRS,',
'    p_group_id => :P21_GROUP_ID );'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(8042635774154360111)
,p_internal_uid=>8013234484451302155
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7418478037236466568)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collections on Cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_CREATE'' );',
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_INVALID'' );'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(8042635474907360111)
,p_internal_uid=>7389046851828293560
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8042643856559386188)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'init collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_collection.CREATE_OR_TRUNCATE_COLLECTION (''BULK_MBRS_INVALID'');',
'wwv_flow_collection.CREATE_OR_TRUNCATE_COLLECTION (''BULK_MBRS_CREATE'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8013212671151213180
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Add Multiple Members'
,p_alias=>'ADD-MULTIPLE-MEMBERS2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Members'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368700663348877)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    Review the members listed below. If the Group and members look correct, click the <strong>Add Members</strong> button. Click the <strong>Previous (<)</strong> button to edit your list of new members. Click the <strong>Cancel</strong> button to le'
||'ave the Add Multiple Members wizard.',
'</p>'))
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56304468312931356)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8042672471076513390)
,p_name=>'Valid Emails'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 email',
'  from apex_collections',
' where collection_name = ''BULK_MBRS_CREATE''',
' order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No valid email addresses found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8042672745913513410)
,p_query_column_id=>1
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>1
,p_column_heading=>'EMAIL'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8042673153199517677)
,p_name=>'Invalid Data'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 email, c002 error',
'  from apex_collections',
' where collection_name = ''BULK_MBRS_INVALID''',
' order by c001'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No invalid data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8042673469408517683)
,p_query_column_id=>1
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>1
,p_column_heading=>'Data'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8042673576464517683)
,p_query_column_id=>2
,p_column_alias=>'ERROR'
,p_column_display_sequence=>2
,p_column_heading=>'Error'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8042780068547730290)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8042637258217360127)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(56304468312931356)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8042637345467360127)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(56304468312931356)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Members'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''BULK_MBRS_CREATE'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8042637467040360127)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(56304468312931356)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8042637155932360126)
,p_name=>'P22_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8042672471076513390)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Group:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_name',
'  from EBA_ca_email_groups',
' where group_id = :P21_GROUP_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Group the Members will be added to.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56304640190931357)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8042637258217360127)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56304748532931358)
,p_event_id=>wwv_flow_imp.id(56304640190931357)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8042678149305535473)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create members'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EBA_ca_api.create_mbrs_from_collection (',
'    p_group_id => :P21_GROUP_ID );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unexpected error creating Members.'
,p_process_when_button_id=>wwv_flow_imp.id(8042637345467360127)
,p_process_success_message=>'Members created.'
,p_internal_uid=>8013246963897362465
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7418471842515449100)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_CREATE'' );',
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_INVALID'' );'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'FINISH,CANCEL'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7389040657107276092
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56304840968931359)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26873655560758351
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Reporting Time Frames'
,p_alias=>'REPORTING-TIME-FRAMES'
,p_page_mode=>'MODAL'
,p_step_title=>'Reporting Time Frames'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>Reporting Time Frames allow you to quickly narrow your event search to just those events that occur during a defined time frame.  Examples of time frames are fiscal months or fiscal quarters.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8043863166616552428)
,p_plug_name=>'Reporting Time Frames'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf_id,',
'       tf_name,',
'       start_date tf_start_date,',
'       end_date tf_end_date,',
'       CREATED_ON,',
'       LOWER(CREATED_BY) CREATED_BY,',
'       LAST_UPDATED_ON,',
'       LOWER(LAST_UPDATED_BY) LAST_UPDATED_BY',
'  from EBA_ca_timeframes',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8043863357681552444)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No reporting time frames found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:P24_TF_ID:#TF_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #TF_NAME#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>7372359288839735857
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(8043863553961552447)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(8043863475636552446)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043863655424552449)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_group_id=>wwv_flow_imp.id(8043863475636552446)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who created the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043863756556552450)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>5
,p_group_id=>wwv_flow_imp.id(8043863475636552446)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043866345137558853)
,p_db_column_name=>'TF_ID'
,p_display_order=>6
,p_group_id=>wwv_flow_imp.id(8043863553961552447)
,p_column_identifier=>'G'
,p_column_label=>'Tf Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043866457614558853)
,p_db_column_name=>'TF_NAME'
,p_display_order=>7
,p_group_id=>wwv_flow_imp.id(8043863553961552447)
,p_column_identifier=>'H'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043866573007558853)
,p_db_column_name=>'TF_START_DATE'
,p_display_order=>8
,p_group_id=>wwv_flow_imp.id(8043863553961552447)
,p_column_identifier=>'I'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043866647201558854)
,p_db_column_name=>'TF_END_DATE'
,p_display_order=>9
,p_group_id=>wwv_flow_imp.id(8043863553961552447)
,p_column_identifier=>'J'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043904674544690313)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>10
,p_group_id=>wwv_flow_imp.id(8043863475636552446)
,p_column_identifier=>'K'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8043904768933690315)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>11
,p_group_id=>wwv_flow_imp.id(8043863475636552446)
,p_column_identifier=>'L'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8043864352511552452)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6322323'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TF_NAME:TF_START_DATE:TF_END_DATE'
,p_sort_column_1=>'TF_START_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8048773076077968492)
,p_report_id=>wwv_flow_imp.id(8043864352511552452)
,p_name=>'Future'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'sysdate <= J'
,p_condition_sql=>'sysdate <= "TF_END_DATE"'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8043864563425552458)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'6322325'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TF_NAME:TF_START_DATE:TF_END_DATE:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY'
,p_sort_column_1=>'TF_START_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8043903967965688389)
,p_report_id=>wwv_flow_imp.id(8043864563425552458)
,p_name=>'Future'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'sysdate <= J'
,p_condition_sql=>'sysdate <= "TF_END_DATE"'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1949651819616259975)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8043863166616552428)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8043864764405552459)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8043863166616552428)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Time Frame'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726645636779574758)
,p_name=>'Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726646021428574758)
,p_event_id=>wwv_flow_imp.id(1726645636779574758)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8043863166616552428)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726646505805574759)
,p_event_id=>wwv_flow_imp.id(1726645636779574758)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138023643621137989)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8043864764405552459)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138023718868137990)
,p_event_id=>wwv_flow_imp.id(138023643621137989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8043863166616552428)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138023833401137991)
,p_name=>'Refresh on Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8043863166616552428)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138023914930137992)
,p_event_id=>wwv_flow_imp.id(138023833401137991)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8043863166616552428)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Reporting Time Frame Details'
,p_alias=>'REPORTING-TIME-FRAME-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Reporting Time Frame Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_dialog_height=>'600'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1725628541286624796)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8043874071329576647)
,p_plug_name=>'Reporting Time Frame Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8043875765630576671)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P24_TF_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8043874255940576657)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1725628541286624796)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8043874867949576660)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1725628541286624796)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P24_TF_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8043874443889576660)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1725628541286624796)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P24_TF_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8043874669624576660)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1725628541286624796)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Time Frame'
,p_button_position=>'NEXT'
,p_button_condition=>'P24_TF_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8043875070684576661)
,p_name=>'P24_TF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8043874071329576647)
,p_use_cache_before_default=>'NO'
,p_source=>'TF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8043875248089576665)
,p_name=>'P24_TF_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8043874071329576647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Time Frame Name'
,p_source=>'TF_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of Reporting Timeframe.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8043875954285576671)
,p_name=>'P24_CREATED_ON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8043875765630576671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created:'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was created.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8043876472082576672)
,p_name=>'P24_CREATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8043875765630576671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who created the record.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8043876947334576672)
,p_name=>'P24_LAST_UPDATED_ON'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8043875765630576671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated:'
,p_source=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was last updated.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8043877451476576673)
,p_name=>'P24_LAST_UPDATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8043875765630576671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated By:'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who last updated the record.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8043887365746602594)
,p_name=>'P24_START_DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8043874071329576647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Start Date of Reporting Timeframe.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8043889668302612806)
,p_name=>'P24_END_DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8043874071329576647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'End Date of Reporting Timeframe.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8043878752972576686)
,p_validation_name=>'P24_TF_NAME unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_timeframes',
' where lower(:P24_TF_NAME) = lower(tf_name)',
'   and (:P24_TF_ID != tf_id or :P24_TF_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Timeframe Name already exists.'
,p_associated_item=>wwv_flow_imp.id(8043875248089576665)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138023393938137987)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8043874255940576657)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138023491949137988)
,p_event_id=>wwv_flow_imp.id(138023393938137987)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8043878849308576688)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_ca_timeframes'
,p_attribute_02=>'EBA_CA_TIMEFRAMES'
,p_attribute_03=>'P24_TF_ID'
,p_attribute_04=>'TF_ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>8014447663900403680
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8043879058152576701)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_ca_timeframes'
,p_attribute_02=>'EBA_CA_TIMEFRAMES'
,p_attribute_03=>'P24_TF_ID'
,p_attribute_04=>'TF_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_ca_timeframes.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>8014447872744403693
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1725628652890624797)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1696197467482451789
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Notification'
,p_alias=>'NOTIFICATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Notification'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Please enter a useful notification and optionally a description. The notification will be shown in bold on the top line of the notification box. If',
' a description is entered it will be in plain text in the line below the notification. The type selected will determine the icon and color of the notification. If you have multiple notifications they will be ordered based on the display sequence.  Yo'
||'u can enter specific dates and times to limit when the notification is first displayed and/or when it is no longer visible.'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1363759501023240127)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1725628709394624798)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265526168888478627)
,p_plug_name=>'Notification'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1456109390465617408)
,p_plug_name=>'Notification Items'
,p_parent_plug_id=>wwv_flow_imp.id(3265526168888478627)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265526573575478627)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1725628709394624798)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265526800351478627)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1725628709394624798)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P25_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265526976669478627)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1725628709394624798)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265526381215478627)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1725628709394624798)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Notification'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265527177658478628)
,p_name=>'P25_DISPLAY_SEQUENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1456109390465617408)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Sequence'
,p_source=>'DISPLAY_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265527395029478629)
,p_name=>'P25_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1456109390465617408)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265527583373478629)
,p_name=>'P25_NOTIFICATION_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1456109390465617408)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notification Name'
,p_source=>'NOTIFICATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265527778645478629)
,p_name=>'P25_NOTIFICATION_DESCRIPTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1456109390465617408)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notification Description'
,p_source=>'NOTIFICATION_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265527970460478629)
,p_name=>'P25_NOTIFICATION_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1456109390465617408)
,p_use_cache_before_default=>'NO'
,p_item_default=>'YELLOW'
,p_prompt=>'Notification Type'
,p_source=>'NOTIFICATION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NOTIFICATION TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3265530793993478633)||'.'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265528397279478629)
,p_name=>'P25_DISPLAY_FROM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1456109390465617408)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display From'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'DISPLAY_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265528569620478630)
,p_name=>'P25_DISPLAY_UNTIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1456109390465617408)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Until'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'DISPLAY_UNTIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3265529689942478631)
,p_validation_name=>'P25_DISPLAY_FROM must be timestamp'
,p_validation_sequence=>10
,p_validation=>'P25_DISPLAY_FROM'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(3265528397279478629)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3265529881868478632)
,p_validation_name=>'P25_DISPLAY_UNTIL must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P25_DISPLAY_UNTIL'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(3265528569620478630)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1585941571226497599)
,p_validation_name=>'End after Beginning'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P25_DISPLAY_FROM is not null and :P25_DISPLAY_UNTIL is not null then',
'    return to_timestamp(:P25_DISPLAY_FROM,''DD-MON-YYYY HH24:MI:SS'') < to_timestamp(:P25_DISPLAY_UNTIL,''DD-MON-YYYY HH24:MI:SS'');',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Display From and To dates must be in proper chronological order.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1725628837827624799)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3265526573575478627)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726663456505636850)
,p_event_id=>wwv_flow_imp.id(1725628837827624799)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265529991130478632)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_NOTIFICATIONS'
,p_attribute_02=>'EBA_CA_NOTIFICATIONS'
,p_attribute_03=>'P25_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>3236098805722305624
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265530184608478632)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_NOTIFICATIONS'
,p_attribute_02=>'EBA_CA_NOTIFICATIONS'
,p_attribute_03=>'P25_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3236098999200305624
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265530384509478632)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'31'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3265526800351478627)
,p_internal_uid=>3236099199101305624
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1726663626489636851)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1697232441081463843
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.acl-Info {',
'  display: block;',
'  overflow: hidden;',
'}',
'.acl-Info-statusBox,',
'.acl-Info-usersBox {',
'  display: block;',
'  float: left;',
'  width: 50%;',
'}',
'.acl-Info-statusBox {',
'  text-align: center;',
'}',
'.acl-Info-heading {',
'  display: block;',
'  font-size: 16px;',
'  margin: 16px 16px 8px 16px;',
'  font-weight: bold;',
'  color: #404040;',
'}',
'.acl-Info-heading span {',
'  color: #707070;',
'  font-weight: normal;',
'}',
'.acl-Info-status {',
'  display: block;',
'  width: 50%;',
'  margin: 0 auto 8px auto;',
'  padding: 12px 0;',
'  border: 1px solid #D0D0D0;',
'  border-radius: 2px;',
'  font-size: 20px;',
'  line-height: 20px;',
'  color: #404040;',
'  font-weight: bold;',
'  background-color: #F0F0F0;',
'}',
'.authScheme .acl-Info-status {',
'  font-size: 16px;',
'  width: 70%',
'}',
'.acl-Info-status.is-enabled {',
'  background-color: #40C230;',
'  border-color: #37A62A;',
'  color: #FFF;',
'  text-shadow: 0 -1px 0 rgba(0,0,0,.25);',
'}',
'.acl-Info-status.is-disabled {',
'  background-color: #DE3038;',
'  border-color: #A0242A;',
'  color: #FFF;',
'  text-shadow: 0 -1px 0 rgba(0,0,0,.25);',
'}',
'.acl-Info-changeStatusLink {',
'  display: inline-block;',
'  padding: 8px 0;',
'  color: #404040;',
'  text-decoration: none;',
'  font-size: 11px;',
'  background-color: #F0F0F0;',
'  border: 1px solid #D0D0D0;',
'  margin: 0 16px 16px 16px;',
'  border-radius: 2px;',
'  width: 50%;',
'}',
'.acl-Info-changeStatusLink:hover {',
'  background-color: #fff;',
'  border-color: #C0C0C0;',
'  box-shadow: 0 1px 1px rgba(0,0,0,.15);',
'}',
'.acl-Info-changeStatusLink:active {',
'  background-color: #E0E0E0;',
'  border-color: #C0C0C0;',
'  box-shadow: 0 1px 1px rgba(0,0,0,.25) inset;',
'}',
'.acl-Info-users {',
'  margin: 0;',
'  list-style: none;',
'  padding: 0;',
'  margin: 0;',
'  border-left: 1px solid #F0F0F0;',
'}',
'.acl-Info-user {',
'  border-top: 1px solid #F0F0F0;',
'}',
'.acl-Info-userLink {',
'  text-decoration: none;',
'  display: block;',
'  padding: 8px;',
'}',
'.acl-Info-userLink:hover {',
'  background-color: #689AD8;',
'}',
'.acl-Info-user:first-child {',
'  border-top: none;',
'}',
'.acl-Info-userType,',
'.acl-Info-userCount {',
'  display: block;',
'  font-size: 14px;',
'}',
'.acl-Info-userType {',
'  font-weight: bold;',
'  float: left;',
'  margin-right: 8px;',
'  line-height: 32px;',
'}',
'.acl-Info-userLink:hover .acl-Info-userType {',
'  color: #FFF;',
'}',
'.acl-Info-userCount {',
'  display: block;',
'  overflow: hidden;',
'  text-align: right;',
'}',
'.acl-Info-userCount span {',
'  display: inline-block;',
'  padding: 8px;',
'  background-color: #F8F8F8;',
'  color: #404040;',
'  line-height: 16px;',
'  min-width: 36px;',
'  text-decoration: none;',
'  text-align: right;',
'  border-radius: 2px;',
'}',
'.acl-Info-desc {',
'    padding: 16px;',
'    border-top: 1px solid #E0E0E0;',
'    border-bottom: 1px solid #E0E0E0;',
'    background: #F8F8F8;',
'    font-size: 14px;',
'    clear: both;',
'}',
'.acl-Info-desc>p:last-child {',
'  margin-bottom: 0;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page allows users with application administrator privileges to perform the following actions:',
'    <ul>',
'        <li>Enable or disable access control</li>',
'        <li>Add, edit, and/or remove users</li>',
'        <li>Change the application''s username format (email address or non-email address)</li>',
'        <li>Monitor application errors</li>',
'        <li>Manage the application''s appearance</li>',
'        <li>Add, edit, and/or remove application notifications</li>',
'        <li>Rename the application</li>',
'        <li>Manage all other application settings and preferences</li>',
'    </ul>',
'</p>'))
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1256434083402340752)
,p_plug_name=>'Confirm Enabling Access Control'
,p_region_name=>'confirmEnableACL'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>'<p>Enabling Access Control allows access to the application and its features to be controlled by an Access Control List (ACL).  Until access control is enabled all authenticated users are administrators.</p>'
,p_plug_query_row_template=>wwv_flow_imp.id(7535919820919009524)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>999
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1536823474104474928)
,p_plug_name=>'Access Control Settings'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(138572199583307558)
,p_plug_name=>'ACL Info'
,p_parent_plug_id=>wwv_flow_imp.id(1536823474104474928)
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_enabled varchar2(45);',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_enabled := eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');',
'    l_acl_scope   := eba_ca_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'');',
'',
'    if l_acl_enabled = ''N'' then',
'        sys.htp.p(apex_lang.message(''ACL_DISABLED''));',
'    else',
'        case l_acl_scope',
'            when ''ACL_ONLY'' then sys.htp.p(apex_lang.message(''ACL_ENABLED''));',
'            when ''PUBLIC_CONTRIBUTE'' then sys.htp.p(apex_lang.message(''ACL_PUBLIC_CONTRIBUTE''));',
'            when ''PUBLIC_READONLY'' then sys.htp.p(apex_lang.message(''ACL_PUBLIC_READONLY''));',
'        end case;',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(138572312715307559)
,p_name=>'User Counts'
,p_parent_plug_id=>wwv_flow_imp.id(1536823474104474928)
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) readers,',
'       sum(case when access_level_id = 2 then 1 else 0 end) contributors,',
'       sum(case when access_level_id = 3 then 1 else 0 end) administrators',
'from eba_ca_users',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2104643962563030528
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(138572438943307560)
,p_query_column_id=>1
,p_column_alias=>'READERS'
,p_column_display_sequence=>1
,p_column_heading=>'Readers'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29,RIR:IR_ACCESS_LEVEL_ID:Reader'
,p_column_linktext=>'#READERS#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(138572461689307561)
,p_query_column_id=>2
,p_column_alias=>'CONTRIBUTORS'
,p_column_display_sequence=>2
,p_column_heading=>'Contributors'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29,RIR:IR_ACCESS_LEVEL_ID:Contributor'
,p_column_linktext=>'#CONTRIBUTORS#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(138572620291307562)
,p_query_column_id=>3
,p_column_alias=>'ADMINISTRATORS'
,p_column_display_sequence=>3
,p_column_heading=>'Administrators'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29,RIR:IR_ACCESS_LEVEL_ID:Administrator'
,p_column_linktext=>'#ADMINISTRATORS#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1742597093776168078)
,p_plug_name=>'ACL Status'
,p_parent_plug_id=>wwv_flow_imp.id(1536823474104474928)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) reader_count,',
'    sum(case when access_level_id = 2 then 1 else 0 end) contributor_count,',
'    sum(case when access_level_id = 3 then 1 else 0 end) admin_count',
'from eba_ca_users'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_STATUS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '27',
  'attribute_02', '29',
  'attribute_03', 'ADMIN_COUNT',
  'attribute_04', 'CONTRIBUTOR_COUNT',
  'attribute_05', 'READER_COUNT',
  'attribute_06', 'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'')',
  'attribute_07', 'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'')')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3264372997440375642)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(1536823474104474928)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(3264373580620375645)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_required_role=>wwv_flow_imp.id(3264368191493348877)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1742597170229168079)
,p_plug_name=>'Authentication and Authorization'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source_type=>'PLUGIN_COM.ORACLE.AUTH_ADMINISTRATION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '35',
  'attribute_02', 'Public Pages',
  'attribute_03', 'Login Required Pages',
  'attribute_04', 'Authorization Protected')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1785847930129090053)
,p_plug_name=>'breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1874798949951207084)
,p_plug_name=>'Multiple Calendar Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'  l_multi_cal_mode varchar2(1); ',
'begin',
'    if :MULTIPLE_CAL_BO = ''Include'' then',
'      l_multi_cal_mode := ''Y'';',
'    else',
'      l_multi_cal_mode := ''N'';',
'    end if;',
'    ',
'    sys.htp.p(''<div class="container">'');',
'    sys.htp.p(''<div class="row">'');',
'    sys.htp.p(''<div class="col col-12 ">'');',
'    sys.htp.p(''<div class="t-ConfigPanel">'');',
'    sys.htp.p(''  <div class="t-ConfigPanel-body">'');',
'    sys.htp.p(''    <div class="t-ConfigPanel-main">'');',
'    sys.htp.p(''      <span class="t-ConfigPanel-icon a-Icon'');',
'      if l_multi_cal_mode = ''Y'' then',
'        sys.htp.prn(''is-enabled'');',
'      else',
'        sys.htp.prn(''is-disabled'');',
'      end if;',
'    sys.htp.p(''"></span>'');',
'    sys.htp.p(''      <span class="t-ConfigPanel-setting">Multiple-Calendars</span>'');',
'        if l_multi_cal_mode = ''N'' then',
'            sys.htp.p(''      <span class="t-ConfigPanel-status">Disabled</span>'');',
'        else',
'            sys.htp.p(''      <span class="t-ConfigPanel-status">Enabled</span>'');',
'        end if;',
'    sys.htp.p(''      </span>'');',
'    sys.htp.p(''    </div>'');',
'',
'   if l_multi_cal_mode = ''Y'' then',
'      sys.htp.p(''    <div class="t-ConfigPanel-list">'');',
'      sys.htp.p(''      <ul class="t-ConfigPanel-attrs">'');',
'',
'      for c1 in (',
'         select count(*) c',
'           from eba_ca_users',
'          where access_level_id >= 2',
'            and restricted_to is null',
'      ) loop',
'',
'         sys.htp.p(''        <li class="t-ConfigPanel-attr">'');',
'         sys.htp.p(''          <a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':29:''||:APP_SESSION||'':::CIR,RIR:IR_RESTRICTED,IR_ACCESS_LEVEL_LINK:No,2'')||''" class="t-ConfigPanel-attrLink">'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrLabel">Unrestricted Contributors</span>'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrValue">'');',
'         sys.htp.p(to_char(c1.c,''999G999G990''));',
'         sys.htp.p(''            </span>'');',
'         sys.htp.p(''          </a>'');',
'         sys.htp.p(''        </li>'');',
'      end loop;',
'',
'      for c1 in (',
'         select count(*) c',
'           from eba_ca_users',
'          where access_level_id >= 2',
'            and restricted_to is not null',
'      ) loop',
'',
'         sys.htp.p(''        <li class="t-ConfigPanel-attr">'');',
'         sys.htp.p(''          <a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':29:''||:APP_SESSION||'':::CIR,RIR:IR_RESTRICTED,IR_ACCESS_LEVEL_LINK:Yes,2'')||''" class="t-ConfigPanel-attrLink">'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrLabel">Restricted Contributors</span>'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrValue">'');',
'         sys.htp.p(to_char(c1.c,''999G999G990''));',
'         sys.htp.p(''            </span>'');',
'         sys.htp.p(''          </a>'');',
'         sys.htp.p(''        </li>'');',
'      end loop;',
'',
'      for c1 in (',
'         select count(*) c',
'           from eba_ca_users',
'          where access_level_id = 1',
'            and restricted_to is not null',
'      ) loop',
'',
'         sys.htp.p(''        <li class="t-ConfigPanel-attr">'');',
'         sys.htp.p(''          <a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':29:''||:APP_SESSION||'':::CIR,RIR:IR_RESTRICTED,IR_ACCESS_LEVEL_LINK:Yes,2'')||''" class="t-ConfigPanel-attrLink">'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrLabel">Restricted Readers (for Private Events)</span>'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrValue">'');',
'         sys.htp.p(to_char(c1.c,''999G999G990''));',
'         sys.htp.p(''            </span>'');',
'         sys.htp.p(''          </a>'');',
'         sys.htp.p(''        </li>'');',
'      end loop;',
'',
'    sys.htp.p(''      </ul>'');',
'    sys.htp.p(''    </div>'');',
'   else',
'      sys.htp.p(''    <div class="t-ConfigPanel-list">'');',
'      sys.htp.p(''      <div style="padding: 12px;">If enabled, events can be assigned to calendars and Contributors can have limited create/edit access.</div>'');',
'      sys.htp.p(''    </div>'');',
'   end if;',
'',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3264372371091375640)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(3264374897291375647)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3264372577258375641)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>' style="width:49%; float:left; margin-right: 1%;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>3
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265219489049247061)
,p_plug_name=>'Email'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(8035429957368010891)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_from_email varchar2(255);',
'begin',
'    -- If the end-user''s username is already an email address use it as the from address',
'    if regexp_like(:APP_USER, ''^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'') then',
'        l_from_email := lower(:APP_USER);',
'    else',
'        -- otherwise populate the from address by querying the apex_workspace_apex_users view (where email is a required value)',
'        select',
'            lower(a.email)',
'        into',
'            l_from_email',
'        from',
'            eba_ca_users u,',
'            apex_workspace_apex_users a',
'        where',
'            lower(u.username) = lower(a.user_name)',
'        and',
'            lower(:APP_USER) = lower(a.user_name);',
'    end if;',
'    return regexp_like(l_from_email, ''^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'');',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_plug_header=>'<div>'
,p_plug_footer=>'</div>'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3343532893805146901)
,p_plug_name=>'Activity Reporting'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(3343532383953146899)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1256434375222347895)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1256434083402340752)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1256434585957350980)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1256434083402340752)
,p_button_name=>'ENABLE_ACCESS_CONTROL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enable Access Control'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3265706370816893253)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'26'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3264373372352375643)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENABLE_ACCESS_CONTROL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Set AC flag',
'eba_ca_fw.set_preference_value(''ACCESS_CONTROL_ENABLED'',''Y'');',
'-- Seed user table with current user as an administrator or set the current user as administrator',
'declare',
'   l_count number;',
'begin',
'    select count(*) ',
'       into l_count ',
'       from eba_ca_users',
'       where username = :APP_USER;',
'    if l_count = 0 then',
'        insert into eba_ca_users(username, access_level_id) values (:APP_USER, 3);   ',
'    else',
'        update eba_ca_users',
'            set access_level_id = 3',
'            where username = :APP_USER;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ENABLE_ACCESS_CONTROL'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control enabled and the current user ''&APP_USER.'' has been created as an Administrator.'
,p_internal_uid=>3234942186944202635
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Access Control Configuration'
,p_alias=>'ACCESS-CONTROL-CONFIGURATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Access Control Configuration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(787550037255232172)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2672254475989143464)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142353277356415281)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(787550037255232172)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142352923796415279)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(787550037255232172)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(309682409601476465)
,p_branch_name=>'Back to Admin'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142354021203415282)
,p_name=>'P27_AC_ENABLED'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2672254475989143464)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Any authenticated user may access this application'
,p_source=>'return eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');'
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142354454653415285)
,p_name=>'P27_ACCESS_CONTROL_SCOPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2672254475989143464)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Treat authenticated users not in ACL as'
,p_source=>'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'');'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS CONTROL SCOPE1'
,p_lov=>'.'||wwv_flow_imp.id(142363442167415303)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>'This option determines the role of users that are not defined in the Access Control List (ACL).  A user with <strong>Reader</strong> role can only read application data. A user with <strong>Contributor</strong> role can read <strong>and write</strong'
||'> application data.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142354846227415285)
,p_name=>'P27_USERNAME_FORMAT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2672254475989143464)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Use Email for Usernames'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (eba_ca_fw.get_preference_value(''USERNAME_FORMAT'') = ''EMAIL'') then ',
'  return ''Y'';',
'else',
'  return ''N'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'This option determines whether to use email addresses as the username format for users in the Access Control List (ACL).  This is useful when using Single Sign-On or LDAP authentication.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142355205884415286)
,p_name=>'P27_HIDDEN_AC_ENABLED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2672254475989143464)
,p_use_cache_before_default=>'NO'
,p_source=>'return eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');'
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142357476902415294)
,p_name=>'ENABLE ACCESS CONTROL CHANGED'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_AC_ENABLED'
,p_condition_element=>'P27_AC_ENABLED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142358038782415295)
,p_event_id=>wwv_flow_imp.id(142357476902415294)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ACCESS_CONTROL_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142358468839415295)
,p_event_id=>wwv_flow_imp.id(142357476902415294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ACCESS_CONTROL_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142359806622415296)
,p_name=>'APPLY CHANGES WHEN AC ENABLED'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142353277356415281)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v(''P27_HIDDEN_AC_ENABLED'') !== $v(''P27_AC_ENABLED'') &&',
' $v(''P27_AC_ENABLED'') === ''Y'')'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142360285005415296)
,p_event_id=>wwv_flow_imp.id(142359806622415296)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPLY_CHANGES_AC_ENABLED'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142360718396415297)
,p_name=>'APPLY CHANGES WHEN AC DISABLED'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142353277356415281)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v(''P27_HIDDEN_AC_ENABLED'') !== $v(''P27_AC_ENABLED'') &&',
' $v(''P27_AC_ENABLED'') === ''N'')'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142361217506415297)
,p_event_id=>wwv_flow_imp.id(142360718396415297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Disabling Access Control means that all application features are available to any user who can authenticate. Are you sure you want to disable Access Control?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142361715953415297)
,p_event_id=>wwv_flow_imp.id(142360718396415297)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPLY_CHANGES_AC_DISABLED'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142362127284415297)
,p_name=>'APPLY CHANGES WHEN AC UNCHANGED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142353277356415281)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'($v(''P27_HIDDEN_AC_ENABLED'') === $v(''P27_AC_ENABLED''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142362564829415298)
,p_event_id=>wwv_flow_imp.id(142362127284415297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPLY_CHANGES_AC_UNCHANGED'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142358929272415296)
,p_name=>'Cancel Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(142352923796415279)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142359429517415296)
,p_event_id=>wwv_flow_imp.id(142358929272415296)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(142356342062415293)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL ENABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_ca_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => :P27_AC_ENABLED);',
'    eba_ca_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => (case ',
'                                   when :P27_AC_ENABLED = ''Y'' then :P27_ACCESS_CONTROL_SCOPE',
'                                   else ''ACL_ONLY'' ',
'                               end) );',
'',
'    -- Seed user table with current user as an administrator or set the current user as administrator',
'    declare',
'       l_count number;',
'    begin',
'        select count(*) ',
'            into l_count ',
'        from eba_ca_users',
'        where username = :APP_USER;',
'        if l_count = 0 then',
'            insert into eba_ca_users(username, access_level_id) values (:APP_USER, 3);   ',
'        else',
'            update eba_ca_users',
'            set access_level_id = 3',
'            where username = :APP_USER;',
'        end if;',
'    end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error trying to enable Access Control.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_AC_ENABLED'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control enabled. Access to the application and its features are defined by an administrator in the <a href="f?p=&APP_ID.:MANAGE_ACL:&APP_SESSION.:::RP::">Access Control List</a>.'
,p_internal_uid=>112925156654242285
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(142356738839415293)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL DISABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_ca_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => :P27_AC_ENABLED);',
'    eba_ca_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => (case ',
'                                   when :P27_AC_ENABLED = ''Y'' then :P27_ACCESS_CONTROL_SCOPE',
'                                   else ''ACL_ONLY'' ',
'                               end) );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error trying to disable Access Control.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_AC_DISABLED'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control disabled. All application features are now available to any user who can authenticate.'
,p_internal_uid=>112925553431242285
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(142357066023415294)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL UNCHANGED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_ca_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => :P27_AC_ENABLED);',
'    eba_ca_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => (case ',
'                                   when :P27_AC_ENABLED = ''Y'' then :P27_ACCESS_CONTROL_SCOPE',
'                                   else ''ACL_ONLY'' ',
'                               end) );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error trying to save Access Control Configuration.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_AC_UNCHANGED'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control Configuration saved.'
,p_internal_uid=>112925880615242286
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(142355933578415293)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Format'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_ca_fw.set_preference_value (',
'    p_preference_name  => ''USERNAME_FORMAT'',',
'    p_preference_value => case nvl(:P27_USERNAME_FORMAT,''N'') ',
'                            when ''Y'' then ''EMAIL''',
'                            when ''N'' then ''STRING'' ',
'                          end);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>112924748170242285
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Preferences'
,p_alias=>'PREFERENCES'
,p_step_title=>'Preferences'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'Customize your application preferences from the list of preferences provided below.'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2480130667509897897)
,p_plug_name=>'Preferences'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(2480132200111897902)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2480131232586897899)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2480131912215897900)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Access Control List'
,p_alias=>'ACCESS-CONTROL-LIST'
,p_page_mode=>'MODAL'
,p_step_title=>'Access Control List'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326545190523142160)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function refreshParent() {',
'    parent.location.reload();',
'}'))
,p_javascript_code_onload=>'window.onunload = refreshParent;'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features, for authenticated users. Team Calendar supports the following 3 access levels; Reader, Contributor and Administrator. <b>Reader''s</'
||'b> have read-only access and can also view reports. <b>Contributor''s</b> can create, edit, delete and view reports. <b>Administrator''s</b>, in addition to Contributor''s capability, can also perform Team Calendar administration, including configuratio'
||'n of access control, exporting and installing or uninstalling sample data.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265698493267868075)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       username,',
'       access_level_id,',
'       case when restricted_to is not null then ''Yes'' else ''No'' end restricted,',
'       --eba_ca.decode_restrictions(id) restrcited_to,',
'       case when account_locked = ''Y'' then ''Yes'' else ''No'' end account_locked,',
'       created_by,',
'       created',
'  from eba_ca_users',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3265698696199868081)
,p_name=>'Users'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No users defined'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::P30_ID:#ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #USERNAME#"'
,p_owner=>'ANTHONY'
,p_internal_uid=>2594194627358051494
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265698793556868086)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265698899145868087)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265699174328868088)
,p_db_column_name=>'ACCESS_LEVEL_ID'
,p_display_order=>3
,p_column_identifier=>'F'
,p_column_label=>'Access Level'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(3265723888066068547)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265698995287868088)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265699073391868088)
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1351074381605324113)
,p_db_column_name=>'ACCOUNT_LOCKED'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Account Locked'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1874796969586207065)
,p_db_column_name=>'RESTRICTED'
,p_display_order=>18
,p_column_identifier=>'H'
,p_column_label=>'Restricted'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3265699294222868089)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25941953'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'USERNAME:ACCESS_LEVEL_ID:ACCOUNT_LOCKED:CREATED_BY:CREATED::RESTRICTED'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1351296596239674646)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3265698493267868075)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1447239274000289475)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3265698493267868075)
,p_button_name=>'bulk_add_users'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:53,54::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265699499720868093)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3265698493267868075)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.:CREATE:&DEBUG.:30::'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(1521491893126850642)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726824640974964487)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726825037238964488)
,p_event_id=>wwv_flow_imp.id(1726824640974964487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265698493267868075)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726825516257964488)
,p_event_id=>wwv_flow_imp.id(1726824640974964487)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138572827552307564)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3265699499720868093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138572932503307565)
,p_event_id=>wwv_flow_imp.id(138572827552307564)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265698493267868075)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138573003004307566)
,p_name=>'Refresh on bulk add'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1447239274000289475)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138573134993307567)
,p_event_id=>wwv_flow_imp.id(138573003004307566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265698493267868075)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138573237144307568)
,p_name=>'Refresh on Edit'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3265698493267868075)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138573318204307569)
,p_event_id=>wwv_flow_imp.id(138573237144307568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265698493267868075)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'User Details'
,p_alias=>'USER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'User Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326545190523142160)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1726664196313636857)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265710589101935659)
,p_plug_name=>'User Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1516806077239136916)
,p_plug_name=>'Form Items'
,p_parent_plug_id=>wwv_flow_imp.id(3265710589101935659)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265711200485935660)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1726664196313636857)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265710978172935659)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1726664196313636857)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265710892617935659)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1726664196313636857)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1447240395733314670)
,p_button_sequence=>35
,p_button_plug_id=>wwv_flow_imp.id(1726664196313636857)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add and Add Another'
,p_button_position=>'NEXT'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265710794043935659)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1726664196313636857)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1874796891977207064)
,p_name=>'P30_RESTRICTED_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3265710589101935659)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Restricted To'
,p_source=>'RESTRICTED_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select short_name || '' - '' ||calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       calendar_id r',
'  from eba_ca_calendars c',
' where is_active_yn = ''Y''',
'    or exists (select 1 from eba_ca_users',
'                where :P30_ID = id',
'                  and instr('':''||restricted_to||'':'', '':''||c.calendar_id||'':'') > 0)',
' order by d'))
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_ca_calendars c',
' where is_active_yn = ''Y''',
'    or exists (select 1 from eba_ca_users',
'                where :P30_ID = id',
'                  and instr('':''||restricted_to||'':'', '':''||c.calendar_id||'':'') > 0)'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Restrict access to selected Calendars.</p>',
'<p>If calendars are defined as private (Public Can View = No) then only those users with the calendar selected can access the events on the calendar.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265711977031935666)
,p_name=>'P30_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3265710589101935659)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265712184466935704)
,p_name=>'P30_USERNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3265710589101935659)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265712387597935705)
,p_name=>'P30_ACCESS_LEVEL_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3265710589101935659)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'Access Level'
,p_source=>'ACCESS_LEVEL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS_LEVEL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select access_level d, id r',
'  from eba_ca_access_levels',
' order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265712574039935706)
,p_name=>'P30_ACCOUNT_LOCKED'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3265710589101935659)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Locked'
,p_source=>'ACCOUNT_LOCKED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_display_when=>'P30_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(1447240681694318762)
,p_computation_sequence=>10
,p_computation_item=>'P30_USERNAME'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'trim(:P30_USERNAME)'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(1521493473463905301)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3265722790921050455)
,p_validation_name=>'cannot update yourself'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_CA_USERS',
' where upper(username) = :APP_USER',
'   and id = :P30_ID'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'You cannot update your own record.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(3265710892617935659)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1521492881886886274)
,p_validation_name=>'P30_USERNAME Email is Valid'
,p_validation_sequence=>110
,p_validation=>'P30_USERNAME'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Please note the application''s username format below.'
,p_validation_condition=>'eba_ca_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(3265712184466935704)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726664276356636858)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3265711200485935660)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726664385802636859)
,p_event_id=>wwv_flow_imp.id(1726664276356636858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265714569878935712)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_USERS'
,p_attribute_02=>'EBA_CA_USERS'
,p_attribute_03=>'P30_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>3236283384470762704
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265714775871935714)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_USERS'
,p_attribute_02=>'EBA_CA_USERS'
,p_attribute_03=>'P30_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3236283590463762706
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265714971177935714)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3265710978172935659)
,p_internal_uid=>3236283785769762706
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1726664584628636861)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE_AGAIN'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_internal_uid=>1697233399220463853
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'Attachments'
,p_alias=>'ATTACHMENTS'
,p_step_title=>'Attachments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326552201174164147)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page shows a report of the file attachments that have been added to this event. Click the pencil icon to edit attributes of an existing attachment. Click the <strong>Add Attachment</strong> button to add an attachment. Click the <strong>Cancel</'
||'strong> button to return to the decision request details page. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, downloa'
||'d, and/or save the interactive report.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265753392078733835)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265754382821733840)
,p_plug_name=>'Attachments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_id, ',
'id,',
'''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P32_FILE_BLOB'',id)||''">''||apex_escape.html(filename)||''</a>'' filename,',
'substr(file_comments,1,50)||decode(greatest(length(file_comments),50),50,'''',''...'') FILE_COMMENTS,',
'TAGS,',
'dbms_lob.getlength(FILE_BLOB) file_size,',
'FILE_MIMETYPE mimetype,',
'created, lower(created_by) created_by,',
'updated, lower(updated_by) updated_by,',
'''#'' delete_file',
'from eba_ca_files',
'where event_id = :P31_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3265754573508733841)
,p_name=>'Links'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No attachments found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_ID:#ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #FILENAME#"'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3264368700663348877)
,p_owner=>'MIKE'
,p_internal_uid=>2594250504666917254
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265754675779733847)
,p_db_column_name=>'TAGS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265754787566733855)
,p_db_column_name=>'CREATED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Added'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265754900347733855)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Added By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265754995603733855)
,p_db_column_name=>'UPDATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265755095816733855)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265755177151733855)
,p_db_column_name=>'ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265755301426733855)
,p_db_column_name=>'FILENAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265755383497733855)
,p_db_column_name=>'FILE_COMMENTS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265755475545733856)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265755600941733856)
,p_db_column_name=>'DELETE_FILE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Delete'
,p_column_link=>'f?p=&APP_ID.:31:&SESSION.:DELETE_FILE:&DEBUG.::P31_DELETE_FILE_ID:#ID#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_column_link_attr=>'onclick="return confirm(''Are you sure you want to delete this file?'');" class="t-Button t-Button--danger t-Button--simple t-Button--small" title="Delete File"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265755687234733856)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FILESIZE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3265758079015737820)
,p_db_column_name=>'EVENT_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Event Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3265755896369733857)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25942519'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FILENAME:FILE_SIZE:FILE_COMMENTS:CREATED:CREATED_BY:TAGS:DELETE_LINK::DELETE_FILE:F_LEN:ENVIRONMENT_ID:EVENT_ID'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'FILE_SIZE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265756292491733860)
,p_plug_name=>'BC'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265753773477733837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3265756292491733860)
,p_button_name=>'ATTACH_FILE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_EVENT_ID:&P31_ID.'
,p_button_condition=>'P3_UPDATEABLE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_security_scheme=>wwv_flow_imp.id(3264368700663348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265753586043733836)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3265754382821733840)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3265757290596733871)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 12-JAN-2012 07:05 by MIKE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265753993437733837)
,p_name=>'P31_DELETE_FILE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3265753392078733835)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265754200969733838)
,p_name=>'P31_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3265753392078733835)
,p_prompt=>'Event Name:'
,p_pre_element_text=>'<a href="f?p=&APP_ID.:3:&APP_SESSION.::::P3_EVENT_ID:&P31_ID.">'
,p_post_element_text=>'</a>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'EVENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_name d, event_id r',
'from   eba_ca_events',
'order by 1'))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(1973525277350106676)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'31'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3265756869312733867)
,p_computation_sequence=>10
,p_computation_item=>'P3_EVENT_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P31_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726146628747369845)
,p_name=>'Refresh Reports'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726147001510369846)
,p_event_id=>wwv_flow_imp.id(1726146628747369845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265754382821733840)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726147470884369846)
,p_event_id=>wwv_flow_imp.id(1726146628747369845)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265756976740733869)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete file'
,p_process_sql_clob=>'delete from eba_ca_files where id = :P31_DELETE_FILE_ID;'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'DELETE_FILE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'File deleted.'
,p_internal_uid=>3236325791332560861
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Attachment'
,p_alias=>'ATTACHMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Attachment'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326552201174164147)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368700663348877)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1725625824004624769)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265762071457747497)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265762274360747497)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1725625824004624769)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265762479201747498)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(1725625824004624769)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265762894654747498)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1725625824004624769)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'NEXT'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3265762694180747498)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1725625824004624769)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265763091226747499)
,p_name=>'P32_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3265762071457747497)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265763277594747499)
,p_name=>'P32_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3265762071457747497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Event Name:'
,p_source=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'EVENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_name d, event_id r',
'from   eba_ca_events',
'order by 1'))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265763481994747499)
,p_name=>'P32_FILENAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3265762071457747497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name:'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P32_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265763671536747499)
,p_name=>'P32_FILE_MIMETYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3265762071457747497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype:'
,p_source=>'FILE_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P32_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265763874850747499)
,p_name=>'P32_FILE_BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3265762071457747497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File'
,p_post_element_text=>'<p><em>Attachments must be under 15M in size.</em></p>'
,p_source=>'FILE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'UPDATED',
  'character_set_column', 'FILE_CHARSET',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'FILENAME',
  'mime_type_column', 'FILE_MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265764097655747499)
,p_name=>'P32_FILE_COMMENTS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3265762071457747497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'FILE_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3265764286855747500)
,p_name=>'P32_TAGS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3265762071457747497)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1725626018939624771)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3265762274360747497)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725626099475624772)
,p_event_id=>wwv_flow_imp.id(1725626018939624771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265765178466747502)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_FILES'
,p_attribute_02=>'EBA_CA_FILES'
,p_attribute_03=>'P32_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>3236333993058574494
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265765374668747504)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_FILES'
,p_attribute_02=>'EBA_CA_FILES'
,p_attribute_03=>'P32_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3236334189260574496
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3265765580786747504)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3265762479201747498)
,p_internal_uid=>3236334395378574496
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1725625905172624770)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1696194719764451762
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'Event Update'
,p_alias=>'EVENT-UPDATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Event Update'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326552201174164147)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368700663348877)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1725625115478624762)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3266445277941463498)
,p_plug_name=>'Event Update'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3266445493795463500)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1725625115478624762)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3266445669054463502)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1725625115478624762)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P33_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3266445900451463502)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1725625115478624762)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P33_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3266446077966463502)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1725625115478624762)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Event'
,p_button_position=>'NEXT'
,p_button_condition=>'P33_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3266446293010463503)
,p_name=>'P33_EVENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3266445277941463498)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Event Name:'
,p_source=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'EVENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_name d, event_id r',
'from   eba_ca_events',
'order by 1'))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3266446498853463505)
,p_name=>'P33_NOTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3266445277941463498)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Note'
,p_source=>'NOTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>32767
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3266446676963463505)
,p_name=>'P33_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3266445277941463498)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1725625239238624763)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3266445493795463500)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725625337599624764)
,p_event_id=>wwv_flow_imp.id(1725625239238624763)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3266447586629463515)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_NOTES'
,p_attribute_02=>'EBA_CA_NOTES'
,p_attribute_03=>'P33_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_internal_uid=>3237016401221290507
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3266447776808463516)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_NOTES'
,p_attribute_02=>'EBA_CA_NOTES'
,p_attribute_03=>'P33_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to save'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3237016591400290508
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3266447969531463516)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3266445669054463502)
,p_internal_uid=>3237016784123290508
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1725625366623624765)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1696194181215451757
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'Event Updates'
,p_alias=>'EVENT-UPDATES'
,p_step_title=>'Event Updates'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326552201174164147)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This page shows all of the updates for a particular event. Click the <strong>Add Update</strong> button to add a new update to this event.',
'</p>'))
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3266451999453479346)
,p_name=>'Updates'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        '''' class, --use grayComment for gray look',
'        ''Note'' note_type,',
'        replace(dbms_lob.substr(note,2000,1),chr(10),''<br />'') comment_text,',
'        '''' attribute_1,',
'        '''' attribute_2,',
'        '''' attribute_3,',
'        '''' attribute_4,',
'        lower(created_by) user_name,',
'        apex_util.get_since(created) comment_date,',
'        upper(',
'          decode(instr(replace(created_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(created_by,1,2),',
'                 substr(created_by,1,1)||substr(created_by,instr(replace(created_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        ''Edit'' actions,',
'        created,',
'        id note_id',
'from EBA_CA_NOTES ',
'where   event_id = :P34_ID',
'union all',
'select',
'        ''grayComment'' class, --use grayComment for gray look',
'        ''Update'' note_type,',
'        initcap(replace(replace(COLUMN_NAME,''_ID'',null),''_'','' '')) comment_text,',
'        '' changed from "''||OLD_VALUE||''"'' attribute_1,',
'        '' to "''||new_value||''"'' attribute_2,',
'        '' '' attribute_3,',
'        '' '' attribute_4,',
'        lower(CHANGED_BY) user_name,',
'        apex_util.get_since(CHANGE_DATE) comment_date,',
'        upper(',
'          decode(instr(replace(changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(changed_by,1,2),',
'                 substr(changed_by,1,1)||substr(changed_by,instr(replace(changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        null actions,',
'        CHANGE_DATE,',
'        null note_id',
'from EBA_CA_HISTORY f',
'where component_id = :P34_ID',
'order by 11 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2613168815517880001
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>5000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3266452193870479348)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3266452277849479349)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089500231463770)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'Comment text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3266452472790479350)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute 1'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3266452584826479350)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute 2'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3266452673458479350)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 3'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3266452799244479350)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 4'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089576211463771)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'User name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089673245463772)
,p_query_column_id=>9
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Comment date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089781772463773)
,p_query_column_id=>10
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>12
,p_column_heading=>'User icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1556089889555463774)
,p_query_column_id=>11
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>13
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_ID:#NOTE_ID#'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3266453176469479350)
,p_query_column_id=>12
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3266453300111479350)
,p_query_column_id=>13
,p_column_alias=>'NOTE_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Note Id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3266453398124479350)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3266454185516479351)
,p_plug_name=>'Event Updates'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1725624980823624761)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3266454185516479351)
,p_button_name=>'ADD_UPDATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Update'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_EVENT_ID:&P34_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3266453581131479350)
,p_name=>'P34_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3266453398124479350)
,p_prompt=>'Event Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'EVENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_name d, event_id r',
'from   eba_ca_events',
'order by 1'))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3266454779831479352)
,p_computation_sequence=>10
,p_computation_item=>'P3_EVENT_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P34_ID'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3266454980656479353)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'34'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1725625503276624766)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725625612491624767)
,p_event_id=>wwv_flow_imp.id(1725625503276624766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3266451999453479346)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1725625664041624768)
,p_event_id=>wwv_flow_imp.id(1725625503276624766)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>'Page Privileges'
,p_alias=>'PAGE-PRIVILEGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Privileges'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>The Page Privileges report shows the roles required to access each page in this application and which pages do not require authentication (the user to be logged in).  It is organized by Page Group which loosely corresponds to the tab to which the '
||'page is associated. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, download, and/or save the interactive report.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1326548769018152484)
,p_plug_name=>'Application Page Security'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_id, ',
'       page_id||''. ''||page_name page_title, ',
'       page_group, ',
'       page_function, ',
'       nvl(initcap(replace(authorization_scheme,''_'','' '')),''No Scheme Applied'') authorization_scheme, ',
'       page_requires_authentication requires_auth,',
'       build_option',
'from apex_application_pages',
'where application_id =  :APP_ID',
'    and page_function != ''Global Page'''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1326549000855152485)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>655044932013335898
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1326549079887152485)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1326549193607152487)
,p_db_column_name=>'PAGE_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1326549296926152487)
,p_db_column_name=>'PAGE_FUNCTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Function'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1326549377067152487)
,p_db_column_name=>'AUTHORIZATION_SCHEME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Role'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1326549474174152487)
,p_db_column_name=>'REQUIRES_AUTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Requires Authentication'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1326549599924152487)
,p_db_column_name=>'PAGE_GROUP'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Page Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1326549679369152488)
,p_db_column_name=>'BUILD_OPTION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Build Option'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1326549787529152488)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6550458'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'PAGE_GROUP:PAGE_ID:PAGE_TITLE:PAGE_FUNCTION:AUTHORIZATION_SCHEME:REQUIRES_AUTH'
,p_sort_column_1=>'PAGE_GROUP'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PAGE_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1326549984156152488)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1326548769018152484)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP,35,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_imp_page.create_page(
 p_id=>36
,p_name=>'Tags'
,p_alias=>'TAGS'
,p_step_title=>'&APPLICATION_TITLE. - Tags'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326546279918148528)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'View all tags that have been created in the app. Click a tag to perform a search for the pages appended with that tag.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1785847822179090052)
,p_plug_name=>'breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3266467194532612781)
,p_plug_name=>'Tags'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag, tag_count',
'from eba_ca_tags_sum',
'where tag_count > 0',
'order by 2 desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_no_data_found=>'No tags found.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'f?p=&APP_ID.:2:&APP_SESSION.:::2,RIR,RP:IRC_TAGS:#TAG#',
  'attribute_02', '1000',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3266607886642096854)
,p_plug_name=>'Timezone'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' "TIMEZONE"',
'',
' '))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'Y',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_imp_page.create_page(
 p_id=>37
,p_name=>'Rename Application'
,p_alias=>'RENAME-APPLICATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Rename Application'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>Use this to control the application name displayed on the top left of each page and on the login pages.  By default, the application name is "Team Calendar".  The change will take effect immediately for the administrator making the change, but oth'
||'er users will only see the change when they get a new session (e.g. at next login).</p>'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1336342396052432608)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1336348081863470976)
,p_plug_name=>'Rename Application'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1336348469180476747)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1336342396052432608)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1336349182340480603)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1336342396052432608)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1336352482235505322)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1336349182340480603)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175062163233798355)
,p_name=>'P37_APPLICATION_SUBTITLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1336348081863470976)
,p_prompt=>'Application Subtitle'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_ca_preferences',
'where preference_name = ''APPLICATION_SUBTITLE''',
'union all',
'select ''Create, manage, and share calendar events.''',
'from dual',
'where not exists ( select null',
'                   from eba_ca_preferences',
'                   where preference_name = ''APPLICATION_SUBTITLE'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1336349683326489622)
,p_name=>'P37_APPLICATION_TITLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1336348081863470976)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application Title'
,p_source=>'nvl(:APPLICATION_TITLE, :APP_NAME)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138022898031137982)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1336348469180476747)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138023004245137983)
,p_event_id=>wwv_flow_imp.id(138022898031137982)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1336351396800503688)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Application Title'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APPLICATION_TITLE := :P37_APPLICATION_TITLE;',
'',
'merge into eba_ca_preferences dst',
'using ( select ''APPLICATION_TITLE'' preference_name, :P37_APPLICATION_TITLE preference_value from dual ) src',
'on ( dst.preference_name = src.preference_name )',
'when matched then',
'    update set dst.preference_value = src.preference_value',
'when not matched then',
'    insert ( preference_name, preference_value )',
'    values ( src.preference_name, src.preference_value );',
'',
'merge into eba_ca_preferences dst',
'using ( select ''APPLICATION_SUBTITLE'' preference_name, :P37_APPLICATION_SUBTITLE preference_value from dual ) src',
'on ( dst.preference_name = src.preference_name )',
'when matched then',
'    update set dst.preference_value = src.preference_value',
'when not matched then',
'    insert ( preference_name, preference_value )',
'    values ( src.preference_name, src.preference_value );',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1336349182340480603)
,p_process_success_message=>'Application renamed.'
,p_internal_uid=>1306920211392330680
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_imp_page.create_page(
 p_id=>38
,p_name=>'Username Format'
,p_alias=>'USERNAME-FORMAT'
,p_step_title=>'Username Format'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326545190523142160)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>Choose a username format and click the <strong>Apply Changes</strong> button to activate the change. Click the <strong>Cancel</strong> button to leave this page.</p>'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447195487410927712)
,p_plug_name=>'Username Format Preference'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:t-Alert--warning:t-Alert--horizontal'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Define whether new users of this application will have an email address username format (e.g. xyz@xyz.com) or a non-email address format (e.g. JOHNDOE)</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447196478744927759)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1447195669738927714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1447196478744927759)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1447195878205927717)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1447196478744927759)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1447197076185927770)
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1447195878205927717)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1447196096948927718)
,p_name=>'P38_USERNAME_FORMAT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1447195487410927712)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username Format'
,p_source=>'eba_ca_fw.get_preference_value (''USERNAME_FORMAT'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(1447197188668927776)||'.'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1447196797098927765)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Format Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_ca_fw.set_preference_value (',
'    p_preference_name  => ''USERNAME_FORMAT'',',
'    p_preference_value => :P38_USERNAME_FORMAT);'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1447195878205927717)
,p_process_success_message=>'Username format updated.'
,p_internal_uid=>1417765611690754757
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'Build Options'
,p_alias=>'BUILD-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Build Options'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>Build options allow for specific application functionality to be included and available, or excluded and not available.  Use build options to identify which features and functions you would like to run your application with.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16616946651027131785)
,p_plug_name=>'Build Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       build_option_id ID, ',
'       build_option_name build_option, ',
'       build_option_status,',
'       apex_item.hidden(1, build_option_id) ||',
'       apex_item.hidden(2, build_option_status) ||',
'       apex_item.switch ( ',
'            p_idx => 3,',
'            p_value => build_option_status,',
'            p_on_value => ''Include'',',
'            p_on_label => ''Yes'',',
'            p_off_value => ''Exclude'',',
'            p_off_label => ''No'',',
'            p_item_id => ''BO_OPT_'' || rownum,',
'            p_item_label => apex_escape.html(build_option_name) || '': Is Enabled'',',
'            p_attributes => ''style="white-space:pre;"'') toggle_build_option,',
'       component_comment,',
'       last_updated_on updated,',
'       lower(last_updated_by) updated_by',
'  from apex_application_build_options bo',
' where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(16616946858763131785)
,p_name=>'Build Options'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>16585004803979279436
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1684178781795400347)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1684179232421400348)
,p_db_column_name=>'BUILD_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Build Option'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1684179574413400348)
,p_db_column_name=>'BUILD_OPTION_STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1684179989523400349)
,p_db_column_name=>'TOGGLE_BUILD_OPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1684180437773400349)
,p_db_column_name=>'COMPONENT_COMMENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1684180762495400349)
,p_db_column_name=>'UPDATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1684181178737400350)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16616947641958131787)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16522395'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUILD_OPTION:BUILD_OPTION_STATUS:COMPONENT_COMMENT:TOGGLE_BUILD_OPTION:UPDATED:UPDATED_BY'
,p_sort_column_1=>'BUILD_OPTION'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'UPDATED'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1684182053532400360)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16616946651027131785)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP,9,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1684183014676400371)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(16616946651027131785)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1684183960291400386)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_id = :APP_ID)',
'    loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'            if c1.build_option_name = :EXTERNAL_INTERNAL_BO_NAME then',
'                :EXTERNAL_INTERNAL_BO := apex_application.g_f03(i);',
'            elsif c1.build_option_name = :MULTIPLE_CAL_BO_NAME then',
'                :MULTIPLE_CAL_BO := apex_application.g_f03(i);',
'            end if;',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Build Status(es) failed to be updated.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1684183014676400371)
,p_process_success_message=>'Build Status(es) updated.'
,p_internal_uid=>1654752774883227378
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138571741721307553)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>109140556313134545
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_imp_page.create_page(
 p_id=>41
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    The appearance of your application is determined by the chosen Default Theme Style. The Default Theme Style affects <strong>all</strong> users of the application.',
'</p>',
'<p>',
'    Additionally, choose whether to enable end users to change their Theme Style.',
'</p>',
'<p>',
'    <i>&#40;If an end user changes Theme Styles, the change only applies to their individual account; end users cannot change the application appearance for other end users.&#41;</i>',
'</p>',
'<h3>',
'    Default Theme Style',
'</h3>',
'<p>',
'    Choose the Default Theme Style for all users of the application from a list of appearance options called Theme Styles. Each Theme Style applies a different look and color scheme to your application.',
'</p>',
'<p>',
'    End users can change their Theme Style setting if you enable <q>Allow End Users to choose Theme Style.</q>',
'</p>',
'<h3>',
'    Allow End Users to choose Theme Style',
'</h3>',
'<p>',
'    Enable end users to customize their choice of Theme Style for the application.',
'</p>',
'<p>',
'    Select this check box to populate the Customize link at the bottom of every non-modal page in the application for all end users.',
'</p>',
'<p>',
'    Clicking the Customize link opens the Customize dialog. In the Customize dialog, end users choose from the list of Theme Styles to select their preferred application appearance.',
'</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2884069454137127543)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>The appearance of your application is defined by the Theme Style.</p>'
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1072331824199841935)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2884069454137127543)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1072332212937841935)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2884069454137127543)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1072335017706841938)
,p_branch_name=>'Go To Page settings'
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1072331824199841935)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1072332619540841935)
,p_name=>'P41_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2884069454137127543)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'margin-top-lg'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1072332962860841936)
,p_name=>'P41_END_USER_STYLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2884069454137127543)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ui.theme_style_by_user_pref',
'  from apex_application_themes t, apex_applications ui',
' where ui.application_id = t.application_id',
'   and ui.theme_number   = t.theme_number',
'   and t.application_id  = :app_id ',
'   and t.is_current      = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Allow End Users to choose Theme Style;Yes'
,p_grid_label_column_span=>3
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138571546005307551)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1072331824199841935)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138571598946307552)
,p_event_id=>wwv_flow_imp.id(138571546005307551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1072334488009841938)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P41_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_theme.set_current_style (',
'            p_theme_number   => c1.theme_number,',
'            p_id => :P41_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1072332212937841935)
,p_process_success_message=>'Application appearance settings updated successfully.'
,p_internal_uid=>1042903302601668930
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1072334146372841937)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Enable / Disable End User Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_enabled boolean := case when :P41_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'  for c1 in (',
'    select ui.theme_number',
'      from apex_application_themes t, apex_applications ui',
'     where ui.application_id = t.application_id ',
'       and ui.theme_number   = t.theme_number ',
'       and t.application_id  = :app_id',
'       and t.is_current      = ''Yes''',
'  ) loop',
'    if l_enabled then ',
'      apex_theme.enable_user_style ( p_application_id => :APP_ID, p_theme_number => c1.theme_number );',
'    else',
'      apex_theme.disable_user_style ( p_application_id => :APP_ID, p_theme_number => c1.theme_number );',
'      apex_theme.clear_all_users_style(:APP_ID);',
'    end if; ',
'  end loop;',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1072332212937841935)
,p_internal_uid=>1042902960964668929
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_imp_page.create_page(
 p_id=>42
,p_name=>'Calendars'
,p_alias=>'CALENDARS'
,p_page_mode=>'MODAL'
,p_step_title=>'Calendars'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>When the Multiple Calendar build option is enabled, events can be placed on a Calendar. A calendar can be defined as public or private, which will determine whether only specified users can view the events or not. Creation and editing of events ca'
||'n be limited to Contributors granted limited access.  The Short Name of the Calendar is used as a prefix on events when displayed. Click the <strong>Add Calendar</strong> button to add a new calendar.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17590475579276525052)
,p_plug_name=>'Calendars'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select calendar_id,',
'       short_name,',
'       calendar_name,',
'       description,',
'       case when public_view_yn = ''Y'' then ''Yes'' else ''No'' end public_view,',
'       case when is_active_yn = ''Y'' then ''Yes'' else ''No'' end active,',
'       (select count(*) from EBA_CA_EVENTS e',
'         where e.calendar_id = c.calendar_id) cnt_events,',
'       CREATED_ON,',
'       LOWER(CREATED_BY) CREATED_BY,',
'       nvl(last_updated_on, created_on) LAST_UPDATED_ON,',
'       LOWER(LAST_UPDATED_BY) LAST_UPDATED_BY',
'  from EBA_CA_CALENDARS c'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(17590476021616525053)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No calendars found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_CALENDAR_ID:#CALENDAR_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #CALENDAR_NAME#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>17558533966832672704
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(17590476530280525056)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(17590476076496525055)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866552839716840768)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_group_id=>wwv_flow_imp.id(17590476076496525055)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who created the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866553168646840770)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>5
,p_group_id=>wwv_flow_imp.id(17590476076496525055)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866553608681840770)
,p_db_column_name=>'CNT_EVENTS'
,p_display_order=>7
,p_group_id=>wwv_flow_imp.id(17590476530280525056)
,p_column_identifier=>'I'
,p_column_label=>'Number of Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866554022422840770)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>8
,p_group_id=>wwv_flow_imp.id(17590476076496525055)
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866554418900840771)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>9
,p_group_id=>wwv_flow_imp.id(17590476076496525055)
,p_column_identifier=>'K'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866554805858840771)
,p_db_column_name=>'CALENDAR_ID'
,p_display_order=>10
,p_group_id=>wwv_flow_imp.id(17590476530280525056)
,p_column_identifier=>'L'
,p_column_label=>'Calendar Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866555158527840771)
,p_db_column_name=>'SHORT_NAME'
,p_display_order=>11
,p_group_id=>wwv_flow_imp.id(17590476530280525056)
,p_column_identifier=>'M'
,p_column_label=>'Short Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866555580814840772)
,p_db_column_name=>'CALENDAR_NAME'
,p_display_order=>12
,p_group_id=>wwv_flow_imp.id(17590476530280525056)
,p_column_identifier=>'N'
,p_column_label=>'Calendar Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866556052405840772)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>13
,p_group_id=>wwv_flow_imp.id(17590476530280525056)
,p_column_identifier=>'O'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1866556454369840772)
,p_db_column_name=>'ACTIVE'
,p_display_order=>14
,p_group_id=>wwv_flow_imp.id(17590476530280525056)
,p_column_identifier=>'P'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1702548182588087091)
,p_db_column_name=>'PUBLIC_VIEW'
,p_display_order=>24
,p_column_identifier=>'Q'
,p_column_label=>'Public Can View?'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17590491290466525065)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'18346147'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SHORT_NAME:CALENDAR_NAME:DESCRIPTION:PUBLIC_VIEW:CNT_EVENTS:LAST_UPDATED_ON:ACTIVE:'
,p_sort_column_1=>'SHORT_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'LAST_UPDATED_ON'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'TYPE_NAME_DISP'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17590491793659525069)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'18346155'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SHORT_NAME:CALENDAR_NAME:PUBLIC_VIEW:CNT_EVENTS:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY:ACTIVE:'
,p_sort_column_1=>'TYPE_NAME_DISP'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1866557977033840786)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17590475579276525052)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:7,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1866558684811840788)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17590475579276525052)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Calendar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138022177310137975)
,p_name=>'Refresh on Add'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1866558684811840788)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138022320579137976)
,p_event_id=>wwv_flow_imp.id(138022177310137975)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17590475579276525052)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138022681858137980)
,p_name=>'Refresh on Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(17590475579276525052)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138022848271137981)
,p_event_id=>wwv_flow_imp.id(138022681858137980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17590475579276525052)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00043
begin
wwv_flow_imp_page.create_page(
 p_id=>43
,p_name=>'Manage Sample Data'
,p_alias=>'MANAGE-SAMPLE-DATA'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Sample Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Click the <strong>Remove Sample Data</strong> button to remove the sample data the app ships with. Click the <strong>Load Sample Data</strong> button to load the sample data the app ships with. Click the <strong>Reset Data</strong> button to reload t'
||'he sample data the app ships with.',
'Click the <strong>Cancel</strong> button to return to the Administration page.'))
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1991625471656847273)
,p_plug_name=>'Manage Sample Data'
,p_region_css_classes=>'t-Alert--accessibleHeading'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This application ships with sample data.  You can remove and recreate sample data using this page.  If the sample data is old recreating the data makes the dates more current.  Removing or adding sample data will not affect any decisions you creat'
||'ed.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1991625881548847273)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1991627478184847277)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1991625471656847273)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1991626698765847277)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1991625471656847273)
,p_button_name=>'remove_sample_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Remove Sample Data'
,p_button_position=>'CREATE'
,p_button_condition=>'return eba_ca_sample_data.is_loaded();'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1991626352095847273)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1991625471656847273)
,p_button_name=>'load_sample_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Load Sample Data'
,p_button_position=>'CREATE'
,p_button_condition=>'return not eba_ca_sample_data.is_loaded();'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1991627062479847277)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1991625471656847273)
,p_button_name=>'reset_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138023090287137984)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1991627478184847277)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138023174340137985)
,p_event_id=>wwv_flow_imp.id(138023090287137984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1991628889754847288)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_ca_sample_data.remove();',
'eba_ca_sample_data.load();'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1991627062479847277)
,p_process_success_message=>'Sample data reset.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_internal_uid=>1962197704346674280
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1991629324641847291)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove sample data'
,p_process_sql_clob=>'eba_ca_sample_data.remove();'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1991626698765847277)
,p_process_success_message=>'Sample Data Removed'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_internal_uid=>1962198139233674283
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1991629707237847291)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Sample Data'
,p_process_sql_clob=>'eba_ca_sample_data.load();'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1991626352095847273)
,p_process_success_message=>'Sample Data Loaded.'
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
,p_internal_uid=>1962198521829674283
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138023285416137986)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>108592100007964978
);
end;
/
prompt --application/pages/page_00044
begin
wwv_flow_imp_page.create_page(
 p_id=>44
,p_name=>'Calendar Details'
,p_alias=>'CALENDAR-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Calendar Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This page allows app administrators to change attributes of a calendar. Click the <strong>Apply Changes</strong> button to save your changes. Click the <strong>Delete</strong> button to delete this calendar. Click the <strong>Cancel</strong> butt'
||'on to leave this page.',
'</p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1874798011902207075)
,p_name=>'Readers (for this Private Calendar)'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username, ',
'       ''Restricted To set for this calendar'' access_type',
'  from eba_ca_users',
' where access_level_id = 1',
' and   instr('':''||restricted_to||'':'','':''||:P44_CALENDAR_ID||'':'') > 0',
' order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P44_CALENDAR_ID is not null',
'and eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''Y'''))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P44_PUBLIC_VIEW_YN'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No users found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1874798085727207076)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1874798175850207077)
,p_query_column_id=>2
,p_column_alias=>'ACCESS_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Access Type'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17590523315201590569)
,p_plug_name=>'Calendar Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17590525404065590571)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(17828476190342996632)
,p_name=>'Contributors'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username, ',
'       case when restricted_to is null then ''Unrestricted Contributor''',
'            else ''Restricted To set for this calendar'' end access_type,',
'       decode(access_level_id, 3, ''Administrator'', ''Contributor'') access_level',
'  from eba_ca_users',
' where access_level_id >= 2',
' and   (   instr('':''||restricted_to||'':'','':''||:P44_CALENDAR_ID||'':'') > 0',
'        or (    restricted_to is null ',
'            and access_level_id = 3',
'           )',
'       )',
' order by 1'))
,p_display_when_condition=>'P44_CALENDAR_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No users found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1866570014871848615)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1866570453437848616)
,p_query_column_id=>2
,p_column_alias=>'ACCESS_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Access Type'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1874797954033207074)
,p_query_column_id=>3
,p_column_alias=>'ACCESS_LEVEL'
,p_column_display_sequence=>3
,p_column_heading=>'Access level'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1866568468538848612)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17590525404065590571)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_button_condition=>'P44_CALENDAR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1866568931660848613)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17590525404065590571)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Calendar'
,p_button_position=>'CREATE'
,p_button_condition=>'P44_CALENDAR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1866568152641848612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17590525404065590571)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1866569291832848613)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17590525404065590571)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P44_CALENDAR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1702548057303087090)
,p_name=>'P44_PUBLIC_VIEW_YN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17590523315201590569)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Public Can View Events?'
,p_source=>'PUBLIC_VIEW_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_display_when=>'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Define whether all users can view the events on this calendar or only selected users.</p>',
'<p>If public can not view the events, you must update users who have rights to the calendar by going to Access Control List and selecting each users. On the User Details screen update Restricted To, selecting the calendars the user has access to.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866563777219848607)
,p_name=>'P44_CALENDAR_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17590523315201590569)
,p_use_cache_before_default=>'NO'
,p_source=>'CALENDAR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866564213275848607)
,p_name=>'P44_SHORT_NAME'
,p_is_required=>true
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(17590523315201590569)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Short Name'
,p_source=>'SHORT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Short name for Calendar.  Used as prefix when Events are displayed.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866565124375848610)
,p_name=>'P44_CALENDAR_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17590523315201590569)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'CALENDAR_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>48
,p_cMaxlength=>60
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Full name of Calendar.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866565968048848610)
,p_name=>'P44_IS_ACTIVE_YN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17590523315201590569)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Active?'
,p_source=>'IS_ACTIVE_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If not active, events will still display but new events cannot be associated with the calendar.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1866566890862848611)
,p_name=>'P44_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17590523315201590569)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Description of the Calendar.  Only displayed on the Calendars report (to Adminstrators).'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1866571546482848618)
,p_validation_name=>'P44_CALENDAR_NAME unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_ca_calendars',
' where lower(:P44_CALENDAR_NAME) = lower(calendar_name)',
'   and (:P44_CALENDAR_ID != calendar_id or :P44_CALENDAR_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Calendar Name already exists.'
,p_associated_item=>wwv_flow_imp.id(1866565124375848610)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1866572276858848619)
,p_validation_name=>'P44_SHORT_NAME unique'
,p_validation_sequence=>15
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_ca_calendars',
' where lower(:P44_SHORT_NAME) = lower(short_name)',
'   and (:P44_CALENDAR_ID != calendar_id or :P44_CALENDAR_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Short Name already exists.'
,p_associated_item=>wwv_flow_imp.id(1866564213275848607)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1866571886811848618)
,p_validation_name=>'no related events before delete'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_events',
' where :P44_CALENDAR_ID = calendar_id'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Cannot delete Calendar - it is related to Events.'
,p_when_button_pressed=>wwv_flow_imp.id(1866569291832848613)
,p_associated_item=>wwv_flow_imp.id(1866565124375848610)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1874798563477207081)
,p_name=>'Show Readers'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_PUBLIC_VIEW_YN'
,p_condition_element=>'P44_PUBLIC_VIEW_YN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874798692795207082)
,p_event_id=>wwv_flow_imp.id(1874798563477207081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1874798011902207075)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1874798815305207083)
,p_event_id=>wwv_flow_imp.id(1874798563477207081)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1874798011902207075)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138022377503137977)
,p_name=>'CNX'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1866568152641848612)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138022528828137978)
,p_event_id=>wwv_flow_imp.id(138022377503137977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1866572582971848619)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_CALENDARS'
,p_attribute_02=>'EBA_CA_CALENDARS'
,p_attribute_03=>'P44_CALENDAR_ID'
,p_attribute_04=>'CALENDAR_ID'
,p_process_error_message=>'Unable to fetch row.'
,p_internal_uid=>1837141397563675611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1866573014195848619)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_CALENDARS'
,p_attribute_02=>'EBA_CA_CALENDARS'
,p_attribute_03=>'P44_CALENDAR_ID'
,p_attribute_04=>'CALENDAR_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CA_CALENDARS.'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>1837141828787675611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138022646506137979)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>108591461097964971
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_imp_page.create_page(
 p_id=>53
,p_name=>'Add Multiple Users'
,p_alias=>'ADD-MULTIPLE-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326545190523142160)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.helpText {',
'padding: 8px;',
'color: #707070;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1726664715670636862)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2175824217190640367)
,p_plug_name=>'Wizard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>100
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447216069187989931)
,p_plug_name=>'Wizard Items'
,p_parent_plug_id=>wwv_flow_imp.id(2175824217190640367)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_list_template_id=>2010149141494510257
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447217282474989933)
,p_plug_name=>'Hidden Items'
,p_parent_plug_id=>wwv_flow_imp.id(2175824217190640367)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1447215681011989930)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1726664715670636862)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1447215878518989931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1726664715670636862)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1447218669787989947)
,p_branch_action=>'f?p=&APP_ID.:54:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1447215878518989931)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1447216275786989931)
,p_name=>'P53_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1447216069187989931)
,p_item_default=>'2'
,p_prompt=>'Role'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS_LEVEL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select access_level d, id r',
'  from eba_ca_access_levels',
' order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1447216485804989932)
,p_name=>'P53_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1447216069187989931)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>10
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1447217500751989933)
,p_name=>'P53_USERNAME_FORMAT1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1447217282474989933)
,p_use_cache_before_default=>'NO'
,p_source=>'eba_ca_fw.get_preference_value (''USERNAME_FORMAT'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1886777196026285416)
,p_name=>'P53_RESTRICTED_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1447216069187989931)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Restricted To'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select short_name || '' - '' ||calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       calendar_id r',
'  from eba_ca_calendars c',
' where is_active_yn = ''Y''',
'    or exists (select 1 from eba_ca_users',
'                where :P30_ID = id',
'                  and instr('':''||restricted_to||'':'', '':''||c.calendar_id||'':'') > 0)',
' order by d'))
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_ca_calendars c',
' where is_active_yn = ''Y''',
'    or exists (select 1 from eba_ca_users',
'                where :P30_ID = id',
'                  and instr('':''||restricted_to||'':'', '':''||c.calendar_id||'':'') > 0)'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_imp.id(1866546217384601308)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Restrict access to selected Calendars.</p>',
'<p>If calendars are defined as private (Public Can View = No) then only those users with the calendar selected can access the events on the calendar.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(1447218288065989939)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726664770145636863)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1447215681011989930)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726664948030636864)
,p_event_id=>wwv_flow_imp.id(1726664770145636863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1447218372404989942)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    wwv_flow_global.vc_arr2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_CA_BULK_USER_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_CA_BULK_USER_VALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_CA_BULK_USER_CREATE'');',
'',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P53_PRELIM_USERS;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := wwv_flow_utilities.string_to_table(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_username := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_username := trim(l_emails(j));',
'',
'        if l_username is not null then',
'            if eba_ca_fw.get_preference_value(''USERNAME_FORMAT'') = ''EMAIL'' then',
'              -----------',
'              -- Validate',
'              --',
'              l_at := instr(nvl(l_username,''x''),''@'');',
'              l_domain := substr(l_username,l_at+1);',
'              l_dot := instr(l_domain,''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''EBA_CA_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''EBA_CA_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            l_username := trim(l_username);',
'            l_username := trim(both ''.'' from l_username);',
'            l_username := replace(l_username,'' '',null);',
'            l_username := replace(l_username,chr(10),null);',
'            l_username := replace(l_username,chr(9),null);',
'            l_username := replace(l_username,chr(13),null);',
'            l_username := replace(l_username,chr(49824),null);',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_CA_BULK_USER_INVALID'',',
'                    p_c001            => upper(l_username),',
'                    p_c002            => apex_lang.message(''USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select /* APEX76a66f */ username',
'                             from eba_ca_users',
'                            where upper(username) = upper(l_username))',
'                loop',
'                    wwv_flow_collection.add_member(',
'                        p_collection_name => ''EBA_CA_BULK_USER_INVALID'',',
'                        p_c001            => upper(l_username),',
'                        p_c002            => apex_lang.message(''ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select /* APEXeaf772 */  c001',
'                             from wwv_flow_collections',
'                            where collection_name = ''EBA_CA_BULK_USER_VALID''',
'                              and c001 = upper(l_username))',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''EBA_CA_BULK_USER_INVALID'',',
'                        p_c001            => upper(l_username),',
'                        p_c002            => apex_lang.message(''DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_CA_BULK_USER_VALID'',',
'                    p_c001            => upper(l_username));',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM@'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1447215878518989931)
,p_internal_uid=>1417787186996816934
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_imp_page.create_page(
 p_id=>54
,p_name=>'Add Multiple Users'
,p_alias=>'ADD-MULTIPLE-USERS2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326545190523142160)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uReportList {',
'    margin: 0;',
'    list-style: none;',
'}',
'.uReportList li {',
'    margin: 0 0 4px 0;',
'}',
'.check_icon {',
'    display: inline-block;',
'    width: 16px;',
'    height: 16px;',
'    line-height: 16px;',
'    background: #69B86B;',
'    color: #FFF;',
'    text-align: center;',
'    border-radius: 4px;',
'    font-size: 15px;',
'    border: 1px solid green;',
'    text-shadow: 0 -1px 0 rgba(0,0,0,.15);',
'    vertical-align: top;',
'    margin-right: 4px;',
'}',
'.valid_user {',
'    display: inline-block;',
'    padding: 4px 8px 4px 4px;',
'    border: 1px solid #D0D0D0;',
'    border-radius: 3px;',
'    line-height: 20px;',
'    background-color: #F8F8F8;',
'    color: #404040;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447228373254023392)
,p_plug_name=>'Bulk Load Users - Step 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1447228587789023394)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(1447228373254023392)
,p_template=>4072358936313175081
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''EBA_CA_BULK_USER_INVALID''',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No invalid new users found'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1447228871590023397)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1447228798045023397)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Why Invalid'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447228975780023398)
,p_plug_name=>'Users to be added to access control list'
,p_parent_plug_id=>wwv_flow_imp.id(1447228373254023392)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(c001) username',
'  from apex_collections',
' where collection_name = ''EBA_CA_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '<span class="fa fa-check-circle u-success-text" aria-hidden="true"></span> <span style="line-height:36px;">&USERNAME.</span>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447229291589023403)
,p_plug_name=>'Hidden Items'
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447230096270023404)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_plug_source=>'<p>The username list on the previous page found no valid usernames and &P54_INVALID_COUNT. invalid ones. Please go back and verify the username list you provided.</p>'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''EBA_CA_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447231286403023407)
,p_plug_name=>'Valid Count'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P54_VALID_COUNT valid_count, :P54_ROLE role',
'from dual'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_collections',
'where collection_name = ''EBA_CA_BULK_USER_VALID''',
'    and :P54_INVALID_COUNT = 0'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'ABOUT_TO_CREATE',
  'attribute_02', 'VALID_COUNT',
  'attribute_03', 'ROLE',
  'attribute_12', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1447231500160023407)
,p_plug_name=>'Invalid Users'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P54_VALID_COUNT valid_count,',
'    :P54_ROLE role,',
'    :P54_INVALID_COUNT invalid_count',
'from dual'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_collections',
'where collection_name = ''EBA_CA_BULK_USER_VALID''',
'    and :P54_INVALID_COUNT > 0'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'ABOUT_TO_CREATE_WITH_INVALIDS',
  'attribute_02', 'VALID_COUNT',
  'attribute_03', 'ROLE',
  'attribute_04', 'INVALID_COUNT',
  'attribute_12', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1726665041357636865)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1447230469571023405)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1726665041357636865)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1447230892099023405)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1726665041357636865)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''EBA_CA_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1447230686765023405)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1726665041357636865)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1447232492328023412)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:53,&APP_PAGE_ID.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1447230892099023405)
,p_branch_sequence=>10
,p_security_scheme=>wwv_flow_imp.id(3264368191493348877)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1447229480055023403)
,p_name=>'P54_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1447229291589023403)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P53_ROLE = 3 then',
'    return ''Administrator'';',
'elsif :P53_ROLE = 2 then',
'    return ''Contributor'';',
'elsif :P53_ROLE = 1 then',
'    return ''Reader'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1447229694616023404)
,p_name=>'P54_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1447229291589023403)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''EBA_CA_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1447229879562023404)
,p_name=>'P54_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1447229291589023403)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''EBA_CA_BULK_USER_INVALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1726665121342636866)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1447230469571023405)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1726665212513636867)
,p_event_id=>wwv_flow_imp.id(1726665121342636866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1447232199690023410)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to ACL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c in',
'(',
'    select',
'        c001      as username,',
'        :P53_ROLE as access_level_id',
'    from',
'        apex_collections',
'    where',
'        collection_name = ''EBA_CA_BULK_USER_VALID''',
')',
'loop',
'    insert into eba_ca_users',
'    (username, access_level_id, restricted_to)',
'    values',
'    (c.username, c.access_level_id, :P53_RESTRICTED_TO);',
'end loop;',
'',
'---------------------',
'-- delete collections',
'--',
'wwv_flow_collection.DELETE_COLLECTION(''EBA_CA_BULK_USER_INVALID'');',
'wwv_flow_collection.DELETE_COLLECTION(''EBA_CA_BULK_USER_VALID'');',
'wwv_flow_collection.DELETE_COLLECTION(''EBA_CA_BULK_USER_CREATE'');'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1447230892099023405)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>1417801014281850402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1726665290556636868)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1697234105148463860
);
end;
/
prompt --application/pages/page_00092
begin
wwv_flow_imp_page.create_page(
 p_id=>92
,p_name=>'New User Details'
,p_alias=>'NEW-USER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'New User Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3142896402979754735)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5920157871916696137)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.prn(replace(',
'    apex_lang.message(''ACCESS_CONTROL_INFO''),',
'    ''#IMAGE_PREFIX''||''#'',',
'    :image_prefix));'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7023736574430471945)
,p_plug_name=>'User Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5920158078496698066)
,p_plug_name=>'Form Items'
,p_parent_plug_id=>wwv_flow_imp.id(7023736574430471945)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1177627148269992225)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3142896402979754735)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add and Add Another'
,p_button_position=>'CREATE'
,p_button_condition=>'P92_SEQUENCE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1177627455470992225)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3142896402979754735)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'CREATE'
,p_button_condition=>'P92_SEQUENCE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1177626751268992224)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3142896402979754735)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P92_SEQUENCE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1177626260860992223)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3142896402979754735)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>':P92_SEQUENCE is not null and lower(:APP_USER) != lower(:P92_USERNAME)'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1177625896321992223)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3142896402979754735)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1177632471882992258)
,p_branch_name=>'Add and Add Another'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1177627148269992225)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1177623453697992218)
,p_name=>'P92_USERNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5920158078496698066)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_read_only_when=>':P92_SEQUENCE is not null and lower(:APP_USER) = lower(:P92_USERNAME)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'The username assigned by this user.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1177624264933992221)
,p_name=>'P92_ACCESS_LEVEL_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5920158078496698066)
,p_item_default=>'2'
,p_prompt=>'Access Level'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS_LEVEL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select access_level d, id r',
'  from eba_ca_access_levels',
' order by 1'))
,p_read_only_when=>':P92_SEQUENCE is not null and lower(:APP_USER) = lower(:P92_USERNAME)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'The access level assigned to this user.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1177625253585992222)
,p_name=>'P92_SEQUENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5920158078496698066)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1177629164079992253)
,p_validation_name=>'cannot update yourself'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_ca_users',
' where upper(username) = :APP_USER',
'   and upper(username) = upper(:P92_USERNAME)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'You cannot update your own record.'
,p_when_button_pressed=>wwv_flow_imp.id(1177626751268992224)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1177628807720992253)
,p_validation_name=>'P92_USERNAME Email is Valid'
,p_validation_sequence=>30
,p_validation=>'P92_USERNAME'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Please note the application''s username format below.'
,p_validation_condition=>'eba_ca_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(1177623453697992218)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1177628364098992252)
,p_validation_name=>'Username is unique'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''NEW_USERS''',
'and',
'    lower(c001) = lower(:P92_USERNAME)',
'and',
'    :P92_SEQUENCE is null;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This username has already been added. Please enter a unique username.'
,p_associated_item=>wwv_flow_imp.id(1177623453697992218)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1177631492013992255)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1177625896321992223)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1177632009695992257)
,p_event_id=>wwv_flow_imp.id(1177631492013992255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177629516428992253)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add User to Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.add_member(',
'    p_collection_name => ''NEW_USERS'',',
'    p_c001            => lower(:P92_USERNAME),',
'    p_n001            => :P92_ACCESS_LEVEL_ID);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'&P92_USERNAME. added successfully.'
,p_internal_uid=>1148198331020819245
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177630736546992254)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update User in Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.update_member(',
'    p_collection_name => ''NEW_USERS'',',
'    p_c001            => lower(:P92_USERNAME),',
'    p_n001            => :P92_ACCESS_LEVEL_ID,',
'    p_seq             => :P92_SEQUENCE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1177626751268992224)
,p_internal_uid=>1148199551138819246
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177630279979992254)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove User from Collection'
,p_process_sql_clob=>'apex_collection.delete_member(p_collection_name => ''NEW_USERS'', p_seq => :P92_SEQUENCE);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1177626260860992223)
,p_internal_uid=>1148199094571819246
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177629875162992254)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>1148198689754819246
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177631060117992255)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1177627148269992225)
,p_internal_uid=>1148199874709819247
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'Time Zone Preference'
,p_alias=>'TIMEZONE'
,p_step_title=>'Time Zone Preference'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949832234238591801)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Select your preferred time zone and click the <strong>Apply Changes</strong> button to set your time zone. Click the <strong>Cancel</strong> button to leave this page.',
'</p>',
'<p>',
'  Various other functions in this app record and report timestamps according to this setting.  ',
'</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1348399294428124294)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8949803322316567820)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7989928466472759488)
,p_plug_name=>'Preference'
,p_region_template_options=>'t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7989934574830790345)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1348399294428124294)
,p_button_name=>'CLOSE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3266533193521720329)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1348399294428124294)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7989931356898776066)
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7989928659714759493)
,p_name=>'P100_TIMEZONE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7989928466472759488)
,p_item_default=>'&F855_TIMEZONE.'
,p_prompt=>'Time Zone'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STD TIME ZONES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct tzname d, tzname r',
'  from V$TIMEZONE_NAMES',
' order by 1'))
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Select timezone.  This is used to adjust all dates and times.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7989928971667761078)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Timezone'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c integer := 0;',
'begin',
'   for c1 in (select id, timezone_preference ',
'              from eba_ca_tz_pref ',
'              where userid = :APP_USER) loop',
'      update eba_ca_tz_pref',
'      set timezone_preference = nvl(:P100_TIMEZONE,''UTC'')',
'      where id = c1.id;',
'      c := c + 1;',
'   end loop;',
'   if c = 0 then',
'      insert into eba_ca_tz_pref (userid, timezone_preference)',
'      values (:APP_USER,:P100_TIMEZONE);',
'   end if;',
'   APEX_UTIL.SET_SESSION_TIME_ZONE (  ',
'          P_TIME_ZONE => :P100_TIMEZONE); ',
'    :F855_TIMEZONE := :P100_TIMEZONE;',
'   commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(3266533193521720329)
,p_process_success_message=>'Timezone Set.'
,p_internal_uid=>7960497786259588070
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'Sign In | &APPLICATION_TITLE.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1326553581350177345)
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8949802541226567758)
,p_plug_name=>'&P101_APP_NAME.'
,p_region_name=>'group_calendar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3152666087556061760)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8949802541226567758)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1336357478113537612)
,p_name=>'P101_APP_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8949802541226567758)
,p_use_cache_before_default=>'NO'
,p_source=>'nvl(:APPLICATION_TITLE, :APP_NAME)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949802635512567763)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8949802541226567758)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8949802744219567767)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8949802541226567758)
,p_prompt=>'Password'
,p_placeholder=>'password'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3272955268911179812)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "" )'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3272955593098179813)
,p_event_id=>wwv_flow_imp.id(3272955268911179812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3272955782004179816)
,p_event_id=>wwv_flow_imp.id(3272955268911179812)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8949803036880567820)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8920371851472394812
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8949802931419567767)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8920371746011394759
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8949803226000567820)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_internal_uid=>8920372040592394812
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8949803128366567820)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8920371942958394812
);
end;
/
prompt --application/pages/page_00175
begin
wwv_flow_imp_page.create_page(
 p_id=>175
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8949833037355592644)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(3264368191493348877)
,p_protection_level=>'C'
,p_help_text=>'<p>This page provides an interactive report of all unexpected errors logged by this application.  Click on column headings to sort and filter data, click on the <strong>Actions</strong> menu to customize column display and many additional advanced fe'
||'atures.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3314963573140643893)
,p_plug_name=>'Errors'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ID,',
'    ERR_TIME,',
'    ERR_TIME time_since,',
'    APP_ID,',
'    APP_PAGE_ID,',
'    APP_USER,',
'    USER_AGENT,',
'    IP_ADDRESS,',
'    IP_ADDRESS2,',
'    MESSAGE,',
'    PAGE_ITEM_NAME,',
'    REGION_ID,',
'    COLUMN_ALIAS,',
'    ROW_NUM,',
'    APEX_ERROR_CODE,',
'    ORA_SQLCODE,',
'    ORA_SQLERRM,',
'    ERROR_BACKTRACE',
'from eba_ca_errors'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3314963793784643893)
,p_name=>'Errors'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'DAVID.GALE'
,p_internal_uid=>2643459724942827306
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314963881586643893)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314963997927643896)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964086982643896)
,p_db_column_name=>'APP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964197157643897)
,p_db_column_name=>'APP_USER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964286506643897)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964371549643897)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IP Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964472706643897)
,p_db_column_name=>'IP_ADDRESS2'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'IP Address 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964594360643897)
,p_db_column_name=>'MESSAGE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Error Message'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964681245643898)
,p_db_column_name=>'PAGE_ITEM_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Page Item'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964791054643898)
,p_db_column_name=>'REGION_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Region ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964883290643898)
,p_db_column_name=>'COLUMN_ALIAS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Column Alias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314964984189643898)
,p_db_column_name=>'ROW_NUM'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Row Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314965094745643898)
,p_db_column_name=>'APEX_ERROR_CODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Error Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314965177375643899)
,p_db_column_name=>'ORA_SQLCODE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'SQLCODE'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314965277966643899)
,p_db_column_name=>'ORA_SQLERRM'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'SQLERRM'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314965392779643899)
,p_db_column_name=>'ERROR_BACKTRACE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Error Backtrace'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3314965485586643899)
,p_db_column_name=>'APP_PAGE_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1419570400593161233)
,p_db_column_name=>'TIME_SINCE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Since'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3314965580790643899)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'26434616'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ERR_TIME:TIME_SINCE:APP_USER:APP_PAGE_ID:PAGE_ITEM_NAME:APEX_ERROR_CODE:MESSAGE:'
,p_sort_column_1=>'ERR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3339516084277181520)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3314963573140643893)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_01000
begin
wwv_flow_imp_page.create_page(
 p_id=>1000
,p_name=>'Getting Started'
,p_alias=>'GETTING-STARTED'
,p_step_title=>'Getting Started'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.step-container { max-width: 768px; margin: 1.6rem auto }',
'.step-container .t-HeroRegion:not(.t-HeroRegion--featured) .t-HeroRegion-wrap { padding: 0 }',
'.t-Alert--info .t-Alert-icon { vertical-align: top }',
'.t-Alert--horizontal .t-Alert-title { line-height: 2.8rem }',
'.content-well { background: rgba(0, 0, 0, .05); border-radius: 2px; padding: 1.6rem }',
'.users-table .t-Report-report thead { display: none }',
'.users-table .t-Report-cell { padding: 0.8rem 0; font-size: 1.4rem; line-height: 1.5 }',
'.cta-button {padding: 16px 32px; font-size: 16px;}',
'.t-Card-info {',
'  margin-top: 0;',
'}',
'',
'.t-Card-desc {',
'  display: none;',
'}',
'',
'.t-Card-title {',
'  font-weight: 400;',
'}',
'.apex-item-yes-no {white-space:pre;}'))
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3149829300045227494)
,p_plug_name=>'Introduction Wizard'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3149829170112227493)
,p_plug_name=>'Welcome to &APPLICATION_TITLE.'
,p_parent_plug_id=>wwv_flow_imp.id(3149829300045227494)
,p_icon_css_classes=>'app-group-calendar'
,p_region_template_options=>'t-HeroRegion--noPadding'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Please take a moment to complete this first time setup.'
,p_region_image=>'#APP_FILES#icons/app-icon-192.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3149829346509227495)
,p_plug_name=>'Access Control'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-1'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Access Control enables you to control the level of access users have to the application.  Your user account is automatically configured as an Administrator.</p>'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3149831522074227516)
,p_plug_name=>'ACL Level'
,p_parent_plug_id=>wwv_flow_imp.id(3149829346509227495)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3149829490327227496)
,p_plug_name=>'Sample Data'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-3'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Loading Sample Data will enable you to explore the functionality of the app with pre-populated sample data.'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3149829607446227497)
,p_plug_name=>'Application Options'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-4'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>50
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''YES'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3149831979919227521)
,p_name=>'Feature Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(3149829607446227497)
,p_template=>4501440665235496320
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--horizontalBorders'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id ID, ',
'    build_option_name build_option, ',
'    build_option_status, ',
'    apex_item.hidden(p_idx => 1, p_value => build_option_id) ||',
'    apex_item.hidden(p_idx => 2, p_value => build_option_status) ||',
'    apex_item.switch ( ',
'       p_idx => 3,',
'       p_value => build_option_status,',
'       p_on_value => ''Include'',',
'       p_on_label => ''Yes'',',
'       p_off_value => ''Exclude'',',
'       p_off_label => ''No'',',
'       p_item_id => ''BO_OPT_'' || rownum,',
'       p_item_label => apex_escape.html(build_option_name) || '': Is Enabled'',',
'       p_attributes => ''style="white-space:pre;"'') toggle_build_option,',
'    component_comment,',
'    last_updated_on updated,',
'    lower(last_updated_by) updated_by',
'from',
'    apex_application_build_options bo',
'where',
'    application_id = :APP_ID',
'order by',
'    2 asc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177469922282780370)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177470348269780370)
,p_query_column_id=>2
,p_column_alias=>'BUILD_OPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Feature'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>#BUILD_OPTION#</strong><br>',
'#COMPONENT_COMMENT#'))
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177470675659780370)
,p_query_column_id=>3
,p_column_alias=>'BUILD_OPTION_STATUS'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177471143844780371)
,p_query_column_id=>4
,p_column_alias=>'TOGGLE_BUILD_OPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Enabled'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177471474086780371)
,p_query_column_id=>5
,p_column_alias=>'COMPONENT_COMMENT'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177471895553780371)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177472275902780371)
,p_query_column_id=>7
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3149832894478227530)
,p_plug_name=>'Users'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3149830146678227503)
,p_name=>'Users'
,p_parent_plug_id=>wwv_flow_imp.id(3149832894478227530)
,p_template=>4501440665235496320
,p_display_sequence=>10
,p_region_sub_css_classes=>'users-table'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--compact:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animColorFill'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    apex_util.prepare_url( ''f?p='' || :APP_ID || '':92:'' || :APP_SESSION',
'                          || ''::::P92_USERNAME,P92_ACCESS_LEVEL_ID,P92_SEQUENCE:''',
'                          || lower(apex_escape.html(c001)) || '','' || n001 || '','' || seq_id ) as card_link,',
'    lower(c001) as username,',
'    case n001 ',
'        when 3 then ''Administrator'' ',
'        when 2 then ''Contributor'' ',
'        when 1 then ''Reader''',
'        when 0 then ''Pending Approval''',
'        when -99 then ''No Access''',
'    end as card_subtext,',
'    case n001 ',
'        when 3 then ''fa-user-wrench'' ',
'        when 2 then ''fa-user-edit'' ',
'        when 1 then ''fa-user''',
'        when 0 then ''fa-user-clock''',
'        when -99 then ''fa-user-ban''',
'    end as card_icon,',
'    case n001 ',
'        when 3 then ''u-color-15'' ',
'        when 2 then ''u-color-4'' ',
'        when 1 then ''u-color-1''',
'        when 0 then ''u-color-7''',
'        when -99 then ''u-color-9''',
'    end as card_color,',
'    rownum,',
'    lower(c001) card_title,',
'    null card_text',
'from',
'    apex_collections',
'where',
'    collection_name = ''NEW_USERS''',
'order by n001 desc, c001'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2974982452297815501
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177466486354780362)
,p_query_column_id=>1
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Card link'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177465729735780362)
,p_query_column_id=>2
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_column_html_expression=>'<a href="#CARD_LINK#" role="button" class="t-Button t-Button--icon t-Button--noUI t-Button--iconLeft"><span aria-hidden="true" class="t-Icon t-Icon--left fa #CARD_ICON#" title="#USERNAME# - #CARD_SUBTEXT#"></span>#USERNAME#</a>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177465337661780361)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>7
,p_column_heading=>'Card subtext'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177464073439780360)
,p_query_column_id=>4
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>4
,p_column_heading=>'Card icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1388145026671409563)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>8
,p_column_heading=>'Card color'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177466139664780362)
,p_query_column_id=>6
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177464458236780360)
,p_query_column_id=>7
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Card title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1177464875929780361)
,p_query_column_id=>8
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3149832974732227531)
,p_plug_name=>'Buttons'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3161160264275487091)
,p_plug_name=>'First Time Setup Completed'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'The first time setup has already been completed for &APPLICATION_TITLE..'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''NO'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1177467589843780365)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3149832974732227531)
,p_button_name=>'COMPLETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Complete Setup'
,p_button_position=>'CHANGE'
,p_button_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'cta-button'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1177473012302780373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3161160264275487091)
,p_button_name=>'OK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Continue'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''NO'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1177466940940780363)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3149830146678227503)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:RP,92::'
,p_icon_css_classes=>'fa-user-plus'
,p_button_cattributes=>'style="margin-top:10px;"'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1177477301945780390)
,p_branch_name=>'Go To Page HOME'
,p_branch_action=>'f?p=&APP_ID.:HOME:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1177467589843780365)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1177462717440780356)
,p_name=>'P1000_ACL_CONFIG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3149831522074227516)
,p_item_default=>'PUBLIC_READONLY'
,p_prompt=>'Access Control Level'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS CONTROL SCOPE'
,p_lov=>'.'||wwv_flow_imp.id(3264915671437458797)||'.'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1177463065751780357)
,p_name=>'P1000_USERNAME_FORMAT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3149831522074227516)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username Format'
,p_source=>'eba_ca_fw.get_preference_value (''USERNAME_FORMAT'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(1447197188668927776)||'.'
,p_begin_on_new_line=>'N'
,p_display_when=>'instr(:APP_USER,''@'') > 0'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1177468859431780367)
,p_name=>'P1000_LOAD_SAMPLE_YN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3149829490327227496)
,p_item_default=>'Y'
,p_prompt=>'Load Sample Data'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes - Load Sample Data;Y,No - Do Not Load Sample Data;N'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1177476322272780389)
,p_name=>'Refresh on edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3149830146678227503)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1177476796680780390)
,p_event_id=>wwv_flow_imp.id(1177476322272780389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3149830146678227503)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177474571739780385)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset User Collection'
,p_process_sql_clob=>'apex_collection.truncate_collection(p_collection_name => ''NEW_USERS'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CC'' and apex_collection.collection_exists(p_collection_name => ''NEW_USERS'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>1148043386331607377
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177473434026780383)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create NEW_USERS Collection'
,p_process_sql_clob=>'apex_collection.create_or_truncate_collection(p_collection_name => ''NEW_USERS'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'return not apex_collection.collection_exists(p_collection_name => ''NEW_USERS'');'
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>1148042248618607375
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177473769550780384)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Current User to Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.add_member(',
'    p_collection_name => ''NEW_USERS'',',
'    p_c001            => lower(:APP_USER),',
'    p_n001            => 3);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'apex_collection.collection_member_count(p_collection_name => ''NEW_USERS'') = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>1148042584142607376
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177474208050780384)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Format based on current user''s username'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if instr(:APP_USER,''@'') > 0 then',
'    eba_ca_fw.set_preference_value (''USERNAME_FORMAT'',''EMAIL'');',
'else',
'    eba_ca_fw.set_preference_value (''USERNAME_FORMAT'',''STRING'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1148043022642607376
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177475015158780385)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Page Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- Enable ACL',
'    eba_ca_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => ''Y'' );',
'    ',
'    -- Set ACL Scope',
'    eba_ca_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => :P1000_ACL_CONFIG );',
'',
'    -- Define Username Preference',
'    if instr(:APP_USER,''@'') > 0 then',
'        eba_ca_fw.set_preference_value (',
'            p_preference_name  => ''USERNAME_FORMAT'',',
'            p_preference_value => :P1000_USERNAME_FORMAT );',
'    end if;',
'    ',
'    -- Add Users',
'    begin',
'        insert into eba_ca_users',
'        (username, access_level_id, account_locked)',
'        select',
'                c001 as username,',
'                n001 as access_level_id,',
'                ''N''  as account_locked',
'            from',
'                apex_collections',
'            where',
'                collection_name = ''NEW_USERS''',
'            and',
'                lower(c001) not in (select distinct lower(username) from eba_ca_users);',
'    exception',
'      when others then',
'        null;',
'    end;',
'',
'    -- Get rid of the collection',
'    apex_collection.delete_collection(p_collection_name => ''NEW_USERS'');',
'',
'    -- Load Sample Data',
'    if :P1000_LOAD_SAMPLE_YN = ''Y'' then',
'        eba_ca_sample_data.load();',
'    end if;',
'',
'    -- Set Build Options',
'    for i in 1..apex_application.g_f01.count',
'    loop',
'        for c1 in ( select application_id, build_option_name, build_option_status',
'                    from apex_application_build_options',
'                    where apex_application.g_f01(i) = build_option_id',
'                       and application_Id = :APP_ID)',
'        loop',
'            if c1.build_option_status != apex_application.g_f03(i) then',
'                apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                    p_id => apex_application.g_f01(i),',
'                                                    p_build_status => upper(apex_application.g_f03(i)) );',
'            end if;',
'        end loop;',
'    end loop;',
'',
'    -- Set First Run to No',
'    eba_ca_fw.set_preference_value (',
'        p_preference_name  => ''FIRST_RUN'',',
'        p_preference_value => ''NO'' );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1177467589843780365)
,p_process_success_message=>'Access Control has been enabled, defined users have been added, and application settings have been successfully updated.'
,p_internal_uid=>1148043829750607377
);
end;
/
prompt --application/pages/page_01001
begin
wwv_flow_imp_page.create_page(
 p_id=>1001
,p_name=>'Page Help Dialog'
,p_alias=>'PAGE-HELP-DIALOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2799210821837140090)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2799211041971140092)
,p_plug_name=>'About this Page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P1001_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
'        sys.htp.p(apex_escape.html(''No help is available for this page.''));',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text, ''ESC''));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1459311178938855489)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2799210821837140090)
,p_button_name=>'ABOUT_THIS_APP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--link'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Learn More about &APP_TITLE.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:HELP:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1459312022910855490)
,p_name=>'P1001_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2799211041971140092)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done



-- sqlcl_snapshot {"hash":"f8389e0b22a0c20faa3da89ffd5968616841730a","type":"APEX_APPLICATIONS","name":"f118","schemaName":"JESS_DEV_2","sxml":""}