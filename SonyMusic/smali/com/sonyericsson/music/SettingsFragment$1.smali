.class Lcom/sonyericsson/music/SettingsFragment$1;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/SettingsFragment;->enableSoundEnhancement(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/SettingsFragment;

.field final synthetic val$clearAudioPref:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/SettingsFragment;Landroidx/preference/Preference;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$1;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/SettingsFragment$1;->val$clearAudioPref:Landroidx/preference/Preference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 476
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$1;->val$clearAudioPref:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "pref_key_clear_audio"

    .line 478
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 481
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 472
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/SettingsFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment$1;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 472
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/SettingsFragment$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
