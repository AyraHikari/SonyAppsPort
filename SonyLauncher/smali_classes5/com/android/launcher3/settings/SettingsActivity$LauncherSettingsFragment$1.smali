.class Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

    .line 252
    iput-object p1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$1;->this$0:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 255
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SettingsChange;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$1;->this$0:Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->qsbChanged(Landroid/content/Context;)V

    .line 256
    const/4 v0, 0x0

    return v0
.end method
