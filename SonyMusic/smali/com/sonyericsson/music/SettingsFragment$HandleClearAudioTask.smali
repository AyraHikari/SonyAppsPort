.class Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleClearAudioTask"
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
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/music/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 954
    iput-object p2, p0, Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 959
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->getAudioGlobalSetting(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 949
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 964
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 965
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/music/SettingsFragment;->access$200(Lcom/sonyericsson/music/SettingsFragment;Landroid/content/Context;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 949
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
