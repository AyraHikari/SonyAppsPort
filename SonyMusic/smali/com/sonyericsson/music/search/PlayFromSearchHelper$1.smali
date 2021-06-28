.class Lcom/sonyericsson/music/search/PlayFromSearchHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "PlayFromSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/PlayFromSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$1;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$1;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {p1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$100(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$1;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {p2}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$000(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    iget-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$1;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$202(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Z)Z

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$1;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {p1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$100(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->playContent()V

    return-void
.end method
