.class public Lcom/android/launcher3/model/StringCache;
.super Ljava/lang/Object;
.source "StringCache.java"


# static fields
.field private static final ALL_APPS_PERSONAL_TAB:Ljava/lang/String; = "Launcher.ALL_APPS_PERSONAL_TAB"

.field private static final ALL_APPS_PERSONAL_TAB_ACCESSIBILITY:Ljava/lang/String; = "Launcher.ALL_APPS_PERSONAL_TAB_ACCESSIBILITY"

.field private static final ALL_APPS_WORK_TAB:Ljava/lang/String; = "Launcher.ALL_APPS_WORK_TAB"

.field private static final ALL_APPS_WORK_TAB_ACCESSIBILITY:Ljava/lang/String; = "Launcher.ALL_APPS_WORK_TAB_ACCESSIBILITY"

.field private static final DISABLED_BY_ADMIN_MESSAGE:Ljava/lang/String; = "Launcher.DISABLED_BY_ADMIN_MESSAGE"

.field private static final PREFIX:Ljava/lang/String; = "Launcher."

.field private static final WIDGETS_PERSONAL_TAB:Ljava/lang/String; = "Launcher.WIDGETS_PERSONAL_TAB"

.field private static final WIDGETS_WORK_TAB:Ljava/lang/String; = "Launcher.WIDGETS_WORK_TAB"

.field public static final WORK_FOLDER_NAME:Ljava/lang/String; = "Launcher.WORK_FOLDER_NAME"

.field private static final WORK_PROFILE_EDU:Ljava/lang/String; = "Launcher.WORK_PROFILE_EDU"

.field private static final WORK_PROFILE_EDU_ACCEPT:Ljava/lang/String; = "Launcher.WORK_PROFILE_EDU_ACCEPT"

.field private static final WORK_PROFILE_ENABLE_BUTTON:Ljava/lang/String; = "Launcher.WORK_PROFILE_ENABLE_BUTTON"

.field private static final WORK_PROFILE_PAUSED_DESCRIPTION:Ljava/lang/String; = "Launcher.WORK_PROFILE_PAUSED_DESCRIPTION"

.field private static final WORK_PROFILE_PAUSED_TITLE:Ljava/lang/String; = "Launcher.WORK_PROFILE_PAUSED_TITLE"

.field private static final WORK_PROFILE_PAUSE_BUTTON:Ljava/lang/String; = "Launcher.WORK_PROFILE_PAUSE_BUTTON"


# instance fields
.field public allAppsPersonalTab:Ljava/lang/String;

.field public allAppsPersonalTabAccessibility:Ljava/lang/String;

.field public allAppsWorkTab:Ljava/lang/String;

.field public allAppsWorkTabAccessibility:Ljava/lang/String;

.field public disabledByAdminMessage:Ljava/lang/String;

.field public widgetsPersonalTab:Ljava/lang/String;

.field public widgetsWorkTab:Ljava/lang/String;

.field public workFolderName:Ljava/lang/String;

.field public workProfileEdu:Ljava/lang/String;

.field public workProfileEduAccept:Ljava/lang/String;

.field public workProfileEnableButton:Ljava/lang/String;

.field public workProfilePauseButton:Ljava/lang/String;

.field public workProfilePausedDescription:Ljava/lang/String;

.field public workProfilePausedTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updatableStringId"    # Ljava/lang/String;
    .param p3, "defaultStringId"    # I

    .line 222
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/StringCache;->getUpdatableEnterpriseSting(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0
.end method

.method private getUpdatableEnterpriseSting(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updatableStringId"    # Ljava/lang/String;
    .param p3, "defaultStringId"    # I

    .line 230
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 231
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p3}, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p2, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getUpdatableEnterpriseSting$0(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultStringId"    # I

    .line 232
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/model/StringCache;
    .locals 2

    .line 237
    new-instance v0, Lcom/android/launcher3/model/StringCache;

    invoke-direct {v0}, Lcom/android/launcher3/model/StringCache;-><init>()V

    .line 238
    .local v0, "clone":Lcom/android/launcher3/model/StringCache;
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    .line 252
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    return-object v0
.end method

.method public loadStrings(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    sget v0, Lcom/android/launcher3/R$string;->work_profile_edu_work_apps:I

    const-string v1, "Launcher.WORK_PROFILE_EDU"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    .line 190
    sget v0, Lcom/android/launcher3/R$string;->work_profile_edu_accept:I

    const-string v1, "Launcher.WORK_PROFILE_EDU_ACCEPT"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    .line 192
    sget v0, Lcom/android/launcher3/R$string;->work_apps_paused_title:I

    const-string v1, "Launcher.WORK_PROFILE_PAUSED_TITLE"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    .line 194
    sget v0, Lcom/android/launcher3/R$string;->work_apps_paused_body:I

    const-string v1, "Launcher.WORK_PROFILE_PAUSED_DESCRIPTION"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    .line 196
    sget v0, Lcom/android/launcher3/R$string;->work_apps_pause_btn_text:I

    const-string v1, "Launcher.WORK_PROFILE_PAUSE_BUTTON"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    .line 198
    sget v0, Lcom/android/launcher3/R$string;->work_apps_enable_btn_text:I

    const-string v1, "Launcher.WORK_PROFILE_ENABLE_BUTTON"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    .line 200
    sget v0, Lcom/android/launcher3/R$string;->all_apps_work_tab:I

    const-string v1, "Launcher.ALL_APPS_WORK_TAB"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    .line 202
    sget v0, Lcom/android/launcher3/R$string;->all_apps_personal_tab:I

    const-string v1, "Launcher.ALL_APPS_PERSONAL_TAB"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    .line 204
    sget v0, Lcom/android/launcher3/R$string;->all_apps_button_work_label:I

    const-string v1, "Launcher.ALL_APPS_WORK_TAB_ACCESSIBILITY"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    .line 206
    sget v0, Lcom/android/launcher3/R$string;->all_apps_button_personal_label:I

    const-string v1, "Launcher.ALL_APPS_PERSONAL_TAB_ACCESSIBILITY"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    .line 209
    sget v0, Lcom/android/launcher3/R$string;->work_folder_name:I

    const-string v1, "Launcher.WORK_FOLDER_NAME"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    .line 211
    sget v0, Lcom/android/launcher3/R$string;->widgets_full_sheet_work_tab:I

    const-string v1, "Launcher.WIDGETS_WORK_TAB"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    .line 213
    sget v0, Lcom/android/launcher3/R$string;->widgets_full_sheet_personal_tab:I

    const-string v1, "Launcher.WIDGETS_PERSONAL_TAB"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    .line 215
    sget v0, Lcom/android/launcher3/R$string;->msg_disabled_by_admin:I

    const-string v1, "Launcher.DISABLED_BY_ADMIN_MESSAGE"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    .line 217
    return-void
.end method
