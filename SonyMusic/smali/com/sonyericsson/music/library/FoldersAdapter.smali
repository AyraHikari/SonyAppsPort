.class public Lcom/sonyericsson/music/library/FoldersAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FoldersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;,
        Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sonyericsson/music/common/Folder;",
        ">;"
    }
.end annotation


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mContext:Landroid/content/Context;

.field private final mContextMenuIconListener:Landroid/view/View$OnClickListener;

.field private final mDefaultFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private final mIconDimension:I

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V
    .locals 1

    const v0, 0x7f0c0058

    .line 64
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 55
    new-instance v0, Lcom/sonyericsson/music/library/FoldersAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/FoldersAdapter$1;-><init>(Lcom/sonyericsson/music/library/FoldersAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/FoldersAdapter;->mContextMenuIconListener:Landroid/view/View$OnClickListener;

    .line 65
    iput-object p2, p0, Lcom/sonyericsson/music/library/FoldersAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/music/library/FoldersAdapter;->mContext:Landroid/content/Context;

    .line 67
    iget-object p2, p0, Lcom/sonyericsson/music/library/FoldersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700da

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/sonyericsson/music/library/FoldersAdapter;->mIconDimension:I

    const p2, 0x7f080188

    .line 68
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/library/FoldersAdapter;->mDefaultFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->icons(Landroid/content/Context;)I

    move-result p1

    .line 70
    iget-object p2, p0, Lcom/sonyericsson/music/library/FoldersAdapter;->mDefaultFolderDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;

    move-object/from16 v2, p2

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/music/library/FoldersAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0058

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;-><init>()V

    const v3, 0x7f0901fc

    .line 84
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const v3, 0x7f0901fd

    .line 85
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v3, 0x7f0900db

    .line 86
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->icon1:Landroid/widget/ImageView;

    const v3, 0x7f090080

    .line 87
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    const v3, 0x7f090081

    .line 88
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v2, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    .line 89
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v3, v2, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/sonyericsson/music/library/FoldersAdapter;->mContextMenuIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v19, v2

    move-object v2, v1

    move-object/from16 v1, v19

    .line 94
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/common/Folder;

    .line 95
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Folder;->getName()Ljava/lang/String;

    move-result-object v11

    .line 96
    iget-object v12, v1, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->icon1:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Folder;->getArtUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v13, 0x0

    if-eqz v6, :cond_2

    .line 100
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v10, v4

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 102
    :goto_1
    iget-object v14, v0, Lcom/sonyericsson/music/library/FoldersAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 103
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    iget v9, v0, Lcom/sonyericsson/music/library/FoldersAdapter;->mIconDimension:I

    new-instance v16, Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;

    iget-object v7, v0, Lcom/sonyericsson/music/library/FoldersAdapter;->mDefaultFolderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, v0, Lcom/sonyericsson/music/library/FoldersAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v4, v16

    move-object v5, v12

    move-object/from16 v17, v8

    move v8, v10

    move/from16 v18, v9

    move-object/from16 v9, v17

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/music/library/FoldersAdapter$FolderImageDecodedListener;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ILandroid/content/Context;)V

    move-object v4, v14

    move-object v5, v15

    move v6, v10

    move/from16 v7, v18

    move/from16 v8, v18

    move-object v9, v11

    move-object/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 108
    iget-object v4, v0, Lcom/sonyericsson/music/library/FoldersAdapter;->mDefaultFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_3
    iget-object v4, v1, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->icon1:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v4, v1, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, v1, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Folder;->getPathDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, v1, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    invoke-virtual {v0, v3}, Lcom/sonyericsson/music/library/FoldersAdapter;->isNowPlayingView(Lcom/sonyericsson/music/common/Folder;)Z

    move-result v3

    .line 116
    iget-object v4, v0, Lcom/sonyericsson/music/library/FoldersAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v6, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {v4, v3, v5, v6}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 117
    iget-object v4, v0, Lcom/sonyericsson/music/library/FoldersAdapter;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/sonyericsson/music/library/FoldersAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v5, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {v4, v3, v1, v5}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    return-object v2
.end method

.method isNowPlayingView(Lcom/sonyericsson/music/common/Folder;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/music/library/FoldersAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Folder;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 143
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Folder;->getId()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/sonyericsson/music/library/FoldersAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method swapData([Lcom/sonyericsson/music/common/Folder;)V
    .locals 0

    .line 122
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
