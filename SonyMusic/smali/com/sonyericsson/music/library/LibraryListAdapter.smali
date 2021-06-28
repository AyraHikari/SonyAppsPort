.class public Lcom/sonyericsson/music/library/LibraryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LibraryListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/LibraryListAdapter$Footer;,
        Lcom/sonyericsson/music/library/LibraryListAdapter$Header;,
        Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;,
        Lcom/sonyericsson/music/library/LibraryListAdapter$CursorOwner;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field private mCountLimit:I

.field private mFooters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/LibraryListAdapter$Footer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/music/library/LibraryListAdapter$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mLoading:Z

.field private mLoadingView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 80
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mCountLimit:I

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mLoading:Z

    if-eqz p1, :cond_2

    .line 84
    instance-of v0, p1, Landroid/widget/CursorAdapter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$CursorOwner;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter must support swapCursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 89
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mFooters:Ljava/util/List;

    .line 92
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v0, Lcom/sonyericsson/music/library/LibraryListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/LibraryListAdapter$1;-><init>(Lcom/sonyericsson/music/library/LibraryListAdapter;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null adapter not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getInnerCount()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mCountLimit:I

    if-gez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0

    :cond_0
    return v0
.end method

.method private getLoadingCount()I
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mLoading:Z

    return v0
.end method

.method private getLoadingView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0061

    const/4 v1, 0x0

    .line 352
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method addFooter(Lcom/sonyericsson/music/library/LibraryListAdapter$Footer;)Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addHeader(Lcom/sonyericsson/music/library/LibraryListAdapter$Header;)Z
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    sget-object v0, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;->TYPE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnCount()I
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;

    if-eqz v1, :cond_0

    .line 346
    check-cast v0, Lcom/sonyericsson/music/library/AlbumsAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/AlbumsAdapter;->getColumnCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getLoadingCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getFooterCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getInnerCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_0

    .line 302
    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 304
    :cond_0
    check-cast v0, Lcom/sonyericsson/music/library/LibraryListAdapter$CursorOwner;

    invoke-interface {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter$CursorOwner;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFooterCount()I
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Lcom/sonyericsson/music/library/LibraryListAdapter$Header;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return-object v1

    :cond_0
    sub-int/2addr p1, v0

    .line 123
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getInnerCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getItemId(I)J
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 134
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getInnerCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-long v2, p1

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 189
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getInnerCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public getPositionForSection(I)I
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/sonyericsson/music/library/LabelCursorAdapter;

    if-eqz v1, :cond_1

    .line 251
    check-cast v0, Lcom/sonyericsson/music/library/LabelCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->getPositionForSection(I)I

    move-result p1

    .line 252
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    return p1

    .line 257
    :cond_1
    instance-of v1, v0, Lcom/sonyericsson/music/library/RearrangeAdapter;

    if-eqz v1, :cond_3

    .line 258
    check-cast v0, Lcom/sonyericsson/music/library/RearrangeAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;->getPositionForSection(I)I

    move-result p1

    .line 259
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    move p1, v0

    :cond_2
    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/sonyericsson/music/library/LabelCursorAdapter;

    if-eqz v1, :cond_0

    .line 271
    check-cast v0, Lcom/sonyericsson/music/library/LabelCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->getSectionForPosition(I)I

    move-result p1

    return p1

    .line 272
    :cond_0
    instance-of v1, v0, Lcom/sonyericsson/music/library/RearrangeAdapter;

    if-eqz v1, :cond_1

    .line 273
    check-cast v0, Lcom/sonyericsson/music/library/RearrangeAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;->getSectionForPosition(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/sonyericsson/music/library/LabelCursorAdapter;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Lcom/sonyericsson/music/library/LabelCursorAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    instance-of v1, v0, Lcom/sonyericsson/music/library/RearrangeAdapter;

    if-eqz v1, :cond_1

    .line 243
    check-cast v0, Lcom/sonyericsson/music/library/RearrangeAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/RearrangeAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 151
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    iget-object p1, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mView:Landroid/view/View;

    return-object p1

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getInnerCount()I

    move-result v1

    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p1, v1

    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getLoadingCount()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mLoadingView:Landroid/view/View;

    return-object p1

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getFooterCount()I

    move-result p3

    .line 167
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getLoadingCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-ge p1, p3, :cond_3

    .line 169
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mFooters:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/LibraryListAdapter$Footer;

    iget-object p1, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mView:Landroid/view/View;

    return-object p1

    :cond_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    iget-boolean p1, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mSelectable:Z

    return p1

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getInnerCount()I

    move-result v1

    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_1
    sub-int/2addr p1, v1

    .line 218
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getLoadingCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getFooterCount()I

    move-result v0

    .line 223
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getLoadingCount()I

    move-result v1

    sub-int/2addr p1, v1

    if-ge p1, v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/LibraryListAdapter$Footer;

    iget-boolean p1, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mSelectable:Z

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public removeAllHeaders(I)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 284
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    .line 286
    iget v1, v1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;->mType:I

    if-ne v1, p1, :cond_0

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeFooter(Lcom/sonyericsson/music/library/LibraryListAdapter$Footer;)Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method removeHeader(Lcom/sonyericsson/music/library/LibraryListAdapter$Header;)Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setLoading(Landroid/content/Context;Z)V
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mLoading:Z

    if-eq v0, p2, :cond_1

    .line 338
    iput-boolean p2, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mLoading:Z

    if-eqz p2, :cond_0

    .line 339
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getLoadingView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mLoadingView:Landroid/view/View;

    .line 340
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, -0x1

    .line 309
    iput v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mCountLimit:I

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 313
    :cond_0
    check-cast v0, Lcom/sonyericsson/music/library/LibraryListAdapter$CursorOwner;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter$CursorOwner;->swapCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void
.end method
