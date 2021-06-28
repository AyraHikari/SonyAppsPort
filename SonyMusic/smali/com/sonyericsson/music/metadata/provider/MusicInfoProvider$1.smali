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

    .line 218
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->PLAYLISTS:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v0

    sget-object v1, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->SMARTPLAYLIST:Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;

    .line 223
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService$PlaylistArtUpdateType;->getPlaylistArtTypeValue()I

    move-result v1

    or-int/2addr v0, v1

    .line 225
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;->this$0:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->update(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
