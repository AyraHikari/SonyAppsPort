.class Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;
.super Lcom/sonyericsson/music/library/PlaylistAdapter;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConcretePlaylistAdapter"
.end annotation


# instance fields
.field private mAlbumColumn:I

.field private mArtistColumn:I

.field private mId:I

.field private mTitleColumn:I

.field final synthetic this$0:Lcom/sonyericsson/music/library/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/library/PlaylistFragment;Landroid/content/Context;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->this$0:Lcom/sonyericsson/music/library/PlaylistFragment;

    .line 445
    iget-object p1, p1, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/music/library/PlaylistAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V

    return-void
.end method


# virtual methods
.method protected getAlbum(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 476
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mAlbumColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getArtist(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 471
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mArtistColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 466
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mTitleColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTrackId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 481
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "title"

    .line 451
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mTitleColumn:I

    const-string v0, "artist"

    .line 452
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mArtistColumn:I

    const-string v0, "album"

    .line 453
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mAlbumColumn:I

    const-string v0, "audio_id"

    .line 454
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 456
    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mTitleColumn:I

    .line 457
    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mArtistColumn:I

    .line 458
    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mAlbumColumn:I

    .line 459
    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistFragment$ConcretePlaylistAdapter;->mId:I

    .line 461
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/PlaylistAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
