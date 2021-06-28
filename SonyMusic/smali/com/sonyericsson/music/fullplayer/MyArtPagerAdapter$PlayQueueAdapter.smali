.class Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;
.super Ljava/lang/Object;
.source "MyArtPagerAdapter.java"

# interfaces
.implements Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$InnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayQueueAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;-><init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V

    return-void
.end method

.method private getInt(ILjava/lang/String;)I
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$600(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->moveToPosOrThrow(Landroid/database/Cursor;I)V

    .line 413
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$600(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Landroid/database/Cursor;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$600(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method private getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$600(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->moveToPosOrThrow(Landroid/database/Cursor;I)V

    .line 408
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$600(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Landroid/database/Cursor;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$600(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private moveToPosOrThrow(Landroid/database/Cursor;I)V
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$900(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", count="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not in play queue mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    .line 361
    check-cast p4, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

    goto :goto_1

    :cond_1
    new-instance p4, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;

    invoke-direct {p4, p1}, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;-><init>(Landroid/content/Context;)V

    :goto_1
    const-string v2, "hd_audio"

    .line 363
    invoke-direct {p0, p3, v2}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->getInt(ILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p4, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;->setHdAudio(Z)V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$700(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Lcom/sonyericsson/music/player/PlayerArtDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerArtDecoder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 366
    new-instance v0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter$1;-><init>(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;Lcom/sonyericsson/music/fullplayer/ArtPagerItemView;Landroid/content/Context;ZI)V

    .line 385
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$800(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$600(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/sonyericsson/music/player/PlayerState;->trackFromPlayQueue(Landroid/database/Cursor;I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 387
    iget-object p3, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {p3}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$700(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Lcom/sonyericsson/music/player/PlayerArtDecoder;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lcom/sonyericsson/music/player/PlayerArtDecoder;->decodeArt(Lcom/sonyericsson/music/common/Track;ILcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;)V

    :cond_3
    return-object p4
.end method

.method public destroyView(Landroid/content/Context;ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getAlbumName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "album"

    .line 437
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getArtistName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "artist"

    .line 432
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$600(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getId(I)Ljava/lang/String;
    .locals 1

    const-string v0, "track_uri"

    .line 398
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPosition()I
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->this$0:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->access$500(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    return v0
.end method

.method public getTrackName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUri(I)Landroid/net/Uri;
    .locals 1

    const-string v0, "track_uri"

    .line 442
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter$PlayQueueAdapter;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public isDefaultBlur(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
