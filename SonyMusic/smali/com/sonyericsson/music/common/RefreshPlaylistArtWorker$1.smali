.class Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker$1;
.super Landroid/content/BroadcastReceiver;
.source "RefreshPlaylistArtWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE_EXTRA"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 57
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/RefreshPlaylistArtWorker;->update(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
