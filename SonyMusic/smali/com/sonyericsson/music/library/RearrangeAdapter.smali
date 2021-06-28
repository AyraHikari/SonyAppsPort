.class public abstract Lcom/sonyericsson/music/library/RearrangeAdapter;
.super Landroid/widget/CursorAdapter;
.source "RearrangeAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mMapIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:[Ljava/lang/String;

.field private mSortIndex:Ljava/lang/String;

.field private mTrackIndexMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 34
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSortIndex:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getIndex(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForSection(I)I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSections:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;->getIndex(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, " "

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 119
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSections:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 122
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSections:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 99
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mTrackIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method setSortIndex(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSortIndex:Ljava/lang/String;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8

    .line 52
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSections:[Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mTrackIndexMap:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 56
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSortIndex:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 60
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-le v1, v2, :cond_3

    .line 64
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, " "

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 66
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 67
    iget-object v6, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 68
    iget-object v6, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mTrackIndexMap:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 74
    iget-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 75
    iget-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSections:[Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSections:[Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public switchItems(II)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mTrackIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mTrackIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mTrackIndexMap:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSections:[Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mSortIndex:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/sonyericsson/music/library/RearrangeAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method
