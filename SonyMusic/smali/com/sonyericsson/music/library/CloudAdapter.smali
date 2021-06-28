.class public Lcom/sonyericsson/music/library/CloudAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CloudAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;,
        Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;,
        Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mClickListener:Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;

.field private mCursor:Landroid/database/Cursor;

.field private final mDownloadDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFailedDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private final mListener:Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;

.field private final mMimeTypeFolder:Ljava/lang/String;

.field private mNbrOfFolders:I

.field private final mPendingDrawable:Landroid/graphics/drawable/Drawable;

.field private final mProgressBarColor:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mListener:Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;

    .line 68
    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mMimeTypeFolder:Ljava/lang/String;

    const p1, 0x7f0800a8

    .line 70
    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mDownloadDrawable:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0800aa

    .line 71
    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mPendingDrawable:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0800a9

    .line 72
    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mFailedDrawable:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f080188

    .line 73
    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-static {p3}, Lcom/sonyericsson/music/common/ThemeColor;->icons(Landroid/content/Context;)I

    move-result p1

    .line 76
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mPendingDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 77
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mDownloadDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mFailedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 79
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mFolderDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    invoke-static {p3}, Lcom/sonyericsson/music/common/ThemeColor;->accent(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mProgressBarColor:I

    .line 82
    new-instance p1, Lcom/sonyericsson/music/library/CloudAdapter$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/library/CloudAdapter$1;-><init>(Lcom/sonyericsson/music/library/CloudAdapter;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mClickListener:Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CloudListener can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/CloudAdapter;)Landroid/database/Cursor;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/library/CloudAdapter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mNbrOfFolders:I

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/library/CloudAdapter;)Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mListener:Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getNbrOfNotDownloadedFiles()I
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "mime_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 144
    iget-object v2, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "download_state"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mMimeTypeFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 150
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    return v1
.end method

.method isDownloaded(I)Z
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    const-string v0, "download_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;

    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;->bindViewHolder(Landroid/database/Cursor;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    .line 109
    new-instance p2, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0023

    const/4 v2, 0x0

    .line 110
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mClickListener:Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;

    iget-object v3, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mMimeTypeFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mDownloadDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mPendingDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mFailedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mFolderDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mProgressBarColor:I

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/library/CloudAdapter$FileViewHolder;-><init>(Landroid/view/View;Lcom/sonyericsson/music/library/CloudAdapter$ClickListener;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-object p2
.end method

.method public swapData(Landroid/database/Cursor;)V
    .locals 2

    .line 126
    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    const/4 p1, 0x0

    .line 127
    iput p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mNbrOfFolders:I

    .line 129
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mMimeTypeFolder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mNbrOfFolders:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mNbrOfFolders:I

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
