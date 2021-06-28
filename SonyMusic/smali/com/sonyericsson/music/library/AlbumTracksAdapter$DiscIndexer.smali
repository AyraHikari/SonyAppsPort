.class Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;
.super Ljava/lang/Object;
.source "AlbumTracksAdapter.java"

# interfaces
.implements Lcom/sonyericsson/music/library/LabelCursorAdapter$Indexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/AlbumTracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiscIndexer"
.end annotation


# instance fields
.field private mLocalCol:I

.field private final mLocalColName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 227
    iput v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;->mLocalCol:I

    .line 230
    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;->mLocalColName:Ljava/lang/String;

    return-void
.end method

.method private getDiscNumber(Landroid/database/Cursor;)I
    .locals 2

    .line 245
    iget v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;->mLocalCol:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;->mLocalColName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;->mLocalCol:I

    .line 249
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;->mLocalCol:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 251
    invoke-static {p1}, Lcom/sonyericsson/music/common/MusicUtils;->mediaStoreTrackNumberToDiscAndTrackNumber(I)Landroid/util/Pair;

    move-result-object p1

    .line 252
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public getStringIndex(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    .line 235
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;->getDiscNumber(Landroid/database/Cursor;)I

    move-result p2

    if-lez p2, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x7f10002a

    const/4 v1, 0x1

    .line 237
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
