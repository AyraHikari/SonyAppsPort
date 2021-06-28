.class public Lcom/sonyericsson/music/search/SearchQueryResult;
.super Ljava/lang/Object;
.source "SearchQueryResult.java"

# interfaces
.implements Lcom/sonyericsson/music/search/SearchResult;


# static fields
.field private static final COMPARATOR_ALBUM_WITH_PRIORITY:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/music/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPARATOR_ARTIST_WITH_PRIORITY:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/music/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPARATOR_TRACK_WITH_PRIORITY:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/music/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mArtists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/sonyericsson/music/search/SearchQueryResult$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/search/SearchQueryResult$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/search/SearchQueryResult;->COMPARATOR_ARTIST_WITH_PRIORITY:Ljava/util/Comparator;

    .line 97
    new-instance v0, Lcom/sonyericsson/music/search/SearchQueryResult$2;

    invoke-direct {v0}, Lcom/sonyericsson/music/search/SearchQueryResult$2;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/search/SearchQueryResult;->COMPARATOR_ALBUM_WITH_PRIORITY:Ljava/util/Comparator;

    .line 108
    new-instance v0, Lcom/sonyericsson/music/search/SearchQueryResult$3;

    invoke-direct {v0}, Lcom/sonyericsson/music/search/SearchQueryResult$3;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/search/SearchQueryResult;->COMPARATOR_TRACK_WITH_PRIORITY:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mArtists:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mAlbums:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mTracks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/search/SearchQueryResult;->comparePriorityWithName(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static comparePriorityWithName(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    neg-int p0, p0

    if-nez p0, :cond_0

    .line 128
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    :cond_0
    return p0
.end method


# virtual methods
.method public add(Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/sonyericsson/music/search/SearchQueryResult$4;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mTracks:Ljava/util/ArrayList;

    goto :goto_0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mArtists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mArtists:Ljava/util/ArrayList;

    goto :goto_0

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mAlbums:Ljava/util/ArrayList;

    .line 48
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public crop(I)Lcom/sonyericsson/music/search/SearchQueryResult;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mTracks:Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/music/search/SearchQueryResult;->COMPARATOR_TRACK_WITH_PRIORITY:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mArtists:Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/music/search/SearchQueryResult;->COMPARATOR_ARTIST_WITH_PRIORITY:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mAlbums:Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/music/search/SearchQueryResult;->COMPARATOR_ALBUM_WITH_PRIORITY:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mArtists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mArtists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic crop(I)Lcom/sonyericsson/music/search/SearchResult;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/search/SearchQueryResult;->crop(I)Lcom/sonyericsson/music/search/SearchQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public hasHistoryData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mArtists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/search/SearchItem;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mTracks:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mArtists:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchQueryResult;->mAlbums:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
