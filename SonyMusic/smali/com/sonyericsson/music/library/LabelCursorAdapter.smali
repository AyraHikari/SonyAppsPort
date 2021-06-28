.class public abstract Lcom/sonyericsson/music/library/LabelCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabelCursorAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/sonyericsson/music/library/LibraryListAdapter$CursorOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;,
        Lcom/sonyericsson/music/library/LabelCursorAdapter$Indexer;
    }
.end annotation


# static fields
.field private static final COLUMN_SECTION:Ljava/lang/String; = "section"

.field private static final COLUMN_VIEW_TYPE:Ljava/lang/String; = "view_type"

.field static final VIEW_TYPE_CONTENT:I = 0x1

.field static final VIEW_TYPE_LABEL:I


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

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

.field private mRowIDColumn:I

.field private mSections:[Ljava/lang/String;

.field private final mShowLabels:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    iput-boolean p2, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mShowLabels:Z

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    .line 70
    iput p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mRowIDColumn:I

    .line 71
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mMapIndex:Ljava/util/HashMap;

    return-void
.end method

.method private addRow(Landroid/database/Cursor;Landroid/database/MatrixCursor;ILjava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 326
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 327
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 328
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    .line 329
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 331
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 333
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 350
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid column type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 347
    :pswitch_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_1

    .line 344
    :pswitch_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_1

    .line 341
    :pswitch_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_1

    .line 338
    :pswitch_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_1

    :pswitch_4
    const/4 v5, 0x0

    .line 335
    aput-object v5, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 354
    aput-object p4, v1, v0

    .line 355
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildMapIndex(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    .line 158
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 161
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_0
    array-length v1, v2

    add-int/lit8 v1, v1, -0x2

    const-string v4, "view_type"

    aput-object v4, v2, v1

    .line 164
    array-length v1, v2

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    const-string v5, "section"

    aput-object v5, v2, v1

    .line 165
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v1, v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->getIndexer()Lcom/sonyericsson/music/library/LabelCursorAdapter$Indexer;

    move-result-object v5

    .line 172
    array-length v6, v2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 174
    :goto_1
    iget-object v8, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v5, v8, p1}, Lcom/sonyericsson/music/library/LabelCursorAdapter$Indexer;->getStringIndex(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 177
    iget-boolean v9, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mShowLabels:Z

    if-eqz v9, :cond_1

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v9, :cond_3

    .line 183
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v0

    .line 184
    array-length v0, v2

    sub-int/2addr v0, v4

    aput-object v8, v6, v0

    .line 185
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    .line 188
    :cond_3
    invoke-direct {p0, p1, v1, v4, v8}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->addRow(Landroid/database/Cursor;Landroid/database/MatrixCursor;ILjava/lang/String;)V

    add-int/2addr v7, v4

    .line 192
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mSections:[Ljava/lang/String;

    .line 196
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mSections:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v8

    goto :goto_1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private newLabelView()Landroid/view/View;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0054

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f0

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract bindContentView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public getContentPosition(I)I
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "view_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 245
    iget-object v3, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v3, p1, :cond_1

    return v2

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-le v3, p1, :cond_0

    :cond_2
    return v1
.end method

.method public getCount()I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected abstract getIndexer()Lcom/sonyericsson/music/library/LabelCursorAdapter$Indexer;
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v0, "view_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 270
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->getItem(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getItem(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method

.method public getItemId(I)J
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mRowIDColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v0, "view_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getPositionForSection(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mSections:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mMapIndex:Ljava/util/HashMap;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mMapIndex:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 298
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 299
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 300
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v1, "section"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, " "

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 302
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 304
    iget-object v1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mSections:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 305
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mSections:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 319
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

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v0, "view_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 103
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not a valid view type =  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    if-nez p2, :cond_0

    .line 86
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->newContentView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, p1, p3}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->bindContentView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->newLabelView()Landroid/view/View;

    move-result-object p2

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string p3, "section"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2

    .line 107
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this should only be called when the cursor is valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mShowLabels:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 226
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract newContentView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    iput-object v1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->buildMapIndex(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 137
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    const-string v0, "_id"

    .line 138
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mRowIDColumn:I

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mMapIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 141
    iput-object v1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mSections:[Ljava/lang/String;

    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mRowIDColumn:I

    .line 144
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
