.class Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;
.super Lcom/sonyericsson/music/library/PlaylistAdapter;
.source "SmartPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/SmartPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmartPlaylistAdapter"
.end annotation


# instance fields
.field private mAlbumColumn:I

.field private mArtistColumn:I

.field private mTitleColumn:I

.field private mTrackIdColumn:I

.field private final mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V
    .locals 0

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/library/PlaylistAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V

    .line 426
    iput-object p3, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-void
.end method


# virtual methods
.method protected getAlbum(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 461
    iget v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mAlbumColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getArtist(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 456
    iget v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mArtistColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 451
    iget v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mTitleColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTrackId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 466
    iget v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mTrackIdColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    if-eqz p1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 433
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getTitleColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mTitleColumn:I

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 435
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getArtistColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mArtistColumn:I

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 437
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getAlbumColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mAlbumColumn:I

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 439
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getTrackIdColumn(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mTrackIdColumn:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 441
    iput v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mTitleColumn:I

    .line 442
    iput v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mArtistColumn:I

    .line 443
    iput v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mAlbumColumn:I

    .line 444
    iput v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistAdapter;->mTrackIdColumn:I

    .line 446
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/PlaylistAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
