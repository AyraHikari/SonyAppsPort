.class public Lcom/android/searchlauncher/SearchSettingsFragment;
.super Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;
.source "SearchSettingsFragment.java"


# static fields
.field protected static final GSA_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"


# instance fields
.field private mShowGoogleAppPref:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;-><init>()V

    return-void
.end method

.method public static isGSAEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private updateIsGoogleAppEnabled()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/searchlauncher/SearchSettingsFragment;->mShowGoogleAppPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/searchlauncher/SearchSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/searchlauncher/SearchSettingsFragment;->isGSAEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method protected initPreference(Landroidx/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 24
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "pref_enable_minus_one"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "pref_smartspace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 35
    invoke-super {p0, p1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result v0

    return v0

    .line 32
    :pswitch_0
    return v2

    .line 26
    :pswitch_1
    iput-object p1, p0, Lcom/android/searchlauncher/SearchSettingsFragment;->mShowGoogleAppPref:Landroidx/preference/Preference;

    .line 27
    invoke-direct {p0}, Lcom/android/searchlauncher/SearchSettingsFragment;->updateIsGoogleAppEnabled()V

    .line 28
    invoke-virtual {p0}, Lcom/android/searchlauncher/SearchSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/PackageManagerUtils;->isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a715f87 -> :sswitch_1
        0x7666d0f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->onResume()V

    .line 47
    invoke-direct {p0}, Lcom/android/searchlauncher/SearchSettingsFragment;->updateIsGoogleAppEnabled()V

    .line 48
    return-void
.end method
