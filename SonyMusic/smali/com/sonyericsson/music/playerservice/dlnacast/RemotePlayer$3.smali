.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->prepareAndPlayAsync(Lcom/sonyericsson/music/common/Track;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$pos:J

.field final synthetic val$track:Lcom/sonyericsson/music/common/Track;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Lcom/sonyericsson/music/common/Track;Ljava/lang/String;J)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    iput-object p3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$mimeType:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    if-eqz v1, :cond_1

    .line 163
    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;-><init>(Lcom/sonyericsson/music/common/Track;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

    .line 165
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.media.metadata.ARTIST"

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.media.metadata.ALBUM_TITLE"

    .line 168
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.media.metadata.TITLE"

    .line 169
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$track:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 177
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v4, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v6, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$mimeType:Ljava/lang/String;

    iget-wide v8, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;->val$pos:J

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareCallback:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;

    invoke-virtual/range {v4 .. v11}, Landroidx/mediarouter/media/RemotePlaybackClient;->play(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V

    :cond_1
    return-void
.end method
