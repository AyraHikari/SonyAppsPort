.class Lcom/sonyericsson/music/search/SearchQueryResult$3;
.super Ljava/lang/Object;
.source "SearchQueryResult.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/music/search/SearchItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/music/search/SearchItem;Lcom/sonyericsson/music/search/SearchItem;)I
    .locals 2

    .line 114
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getPriority()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getPriority()Ljava/lang/Integer;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getTrackName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getTrackName()Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-static {v0, v1, p1, p2}, Lcom/sonyericsson/music/search/SearchQueryResult;->access$000(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Lcom/sonyericsson/music/search/SearchItem;

    check-cast p2, Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/search/SearchQueryResult$3;->compare(Lcom/sonyericsson/music/search/SearchItem;Lcom/sonyericsson/music/search/SearchItem;)I

    move-result p1

    return p1
.end method
