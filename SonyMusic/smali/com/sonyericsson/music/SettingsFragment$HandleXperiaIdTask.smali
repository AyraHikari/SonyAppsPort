.class Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleXperiaIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/music/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 974
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;
    .locals 0

    .line 979
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices;->getIds(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 969
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;)V
    .locals 1

    .line 984
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 986
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 987
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;->xperiaId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/sonyericsson/music/SettingsFragment;->access$300(Lcom/sonyericsson/music/SettingsFragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 969
    check-cast p1, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;->onPostExecute(Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;)V

    return-void
.end method
