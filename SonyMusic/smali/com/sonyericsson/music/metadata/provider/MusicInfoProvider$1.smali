.class Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;
.super Ljava/lang/Object;
.source "MusicInfoProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->PLAYLISTS:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v0

    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->SMARTPLAYLIST:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    .line 280
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v1

    or-int/2addr v0, v1

    .line 282
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_O_API:Z

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sonyericsson.music.PLAYLIST_ART_UPDATE_TYPE_EXTRA"

    .line 285
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->update(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
