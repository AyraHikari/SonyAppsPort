.class Lcom/sonyericsson/music/MusicActivity$10;
.super Lcom/sonyericsson/music/MusicActivity$StartupTask;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$10;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity$StartupTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 1

    .line 807
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicApplication;

    if-eqz p1, :cond_0

    .line 808
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isConfigFetchComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicApplication;->sendAnalytics()V

    .line 810
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$10;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/MusicApplication;->removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    :cond_0
    return-void
.end method
