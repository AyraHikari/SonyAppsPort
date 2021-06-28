.class public Lcom/sonyericsson/music/search/SearchHistoryResult;
.super Ljava/lang/Object;
.source "SearchHistoryResult.java"

# interfaces
.implements Lcom/sonyericsson/music/search/SearchResult;


# instance fields
.field private final mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchHistoryResult;->mHistory:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHistoryResult;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public crop(I)Lcom/sonyericsson/music/search/SearchHistoryResult;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHistoryResult;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchHistoryResult;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic crop(I)Lcom/sonyericsson/music/search/SearchResult;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/search/SearchHistoryResult;->crop(I)Lcom/sonyericsson/music/search/SearchHistoryResult;

    move-result-object p1

    return-object p1
.end method

.method public hasHistoryData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchHistoryResult;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

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

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchHistoryResult;->mHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
