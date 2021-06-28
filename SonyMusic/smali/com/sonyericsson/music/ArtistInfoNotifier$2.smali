.class Lcom/sonyericsson/music/ArtistInfoNotifier$2;
.super Ljava/lang/Object;
.source "ArtistInfoNotifier.java"

# interfaces
.implements Lcom/sonyericsson/music/MediaServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ArtistInfoNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ArtistInfoNotifier;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$2;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaServiceConnected(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 7

    .line 92
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    new-instance v6, Lcom/sonyericsson/music/common/ArtistInfo;

    iget-object v0, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$2;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-static {v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->access$100(Lcom/sonyericsson/music/ArtistInfoNotifier;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v3

    .line 96
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/common/ArtistInfo;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/net/Uri;)V

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/music/ArtistInfoNotifier$2;->this$0:Lcom/sonyericsson/music/ArtistInfoNotifier;

    const/4 v0, 0x0

    invoke-static {p1, v6, v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->access$300(Lcom/sonyericsson/music/ArtistInfoNotifier;Lcom/sonyericsson/music/common/ArtistInfo;Z)V

    :cond_0
    return-void
.end method

.method public onMediaServiceDisconnected()V
    .locals 0

    return-void
.end method
