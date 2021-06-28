.class public interface abstract Lcom/sonyericsson/music/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# virtual methods
.method public abstract add(Lcom/sonyericsson/music/search/SearchItem;)V
.end method

.method public abstract crop(I)Lcom/sonyericsson/music/search/SearchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/music/search/SearchResult;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract hasHistoryData()Z
.end method

.method public abstract size()I
.end method

.method public abstract toList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/search/SearchItem;",
            ">;"
        }
    .end annotation
.end method
