.class public interface abstract Lcom/android/launcher3/search/SearchAlgorithm;
.super Ljava/lang/Object;
.source "SearchAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel(Z)V
.end method

.method public destroy()V
    .locals 0

    .line 45
    .local p0, "this":Lcom/android/launcher3/search/SearchAlgorithm;, "Lcom/android/launcher3/search/SearchAlgorithm<TT;>;"
    return-void
.end method

.method public abstract doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/search/SearchCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public doSearch(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "suggestedQueries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/search/SearchCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/android/launcher3/search/SearchAlgorithm;, "Lcom/android/launcher3/search/SearchAlgorithm<TT;>;"
    .local p3, "callback":Lcom/android/launcher3/search/SearchCallback;, "Lcom/android/launcher3/search/SearchCallback<TT;>;"
    invoke-interface {p0, p1, p3}, Lcom/android/launcher3/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    .line 35
    return-void
.end method
